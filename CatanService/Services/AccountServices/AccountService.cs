using CatanDataAccess.Domain;
using CatanDataAccess.Repositories;
using System;
using System.Text;
using System.Threading.Tasks;
using CatanService.DataTransferObject;
using CatanDataAccess.Helpers;
using System.Data.Entity;
using Serilog;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.Data.Entity.Infrastructure;
using CatanDataAccess.Helper;
using System.Data.SqlClient;
using DataTransferObject.Enums;
using System.Security.Principal;
using CatanService.Helpers;

namespace CatanService.Services
{
    public class AccountService : IAccountService
    {
        private readonly IRepositoryManager repositoryManager;
        private readonly IServiceManager serviceManager;

        public AccountService(IRepositoryManager repositoryManager, IServiceManager serviceManager)
        {
            this.repositoryManager = repositoryManager;
            this.serviceManager = serviceManager;
        }

        public async Task<OperationResultCreateAccountDto> CreateAccountInDataBaseAsync(AccountDto accountClientDto)
        {
            if (IsValidAccountPassword(accountClientDto.Password) && IsValidLanguage(accountClientDto.PreferredLanguage) 
                && (IsValidAccountEmail(accountClientDto.Email) || IsValidAccountPhoneNumber(accountClientDto.PhoneNumber)) 
                && await serviceManager.ProfileService.IsValidProfileName(accountClientDto.Name))
            {
                if (await IsAccountRegisteredWithEmail(accountClientDto.Email) ||  await IsAccountRegisteredWithPhone(accountClientDto.PhoneNumber))
                {
                    return new OperationResultCreateAccountDto(false, LanguageUtilities.MessageUnableToSaveData(accountClientDto.PreferredLanguage),
                        EnumCreateAccountStatus.ExistsAccount);
                }
                else if(await serviceManager.ProfileService.IsProfileNameRegisteredInDataBaseAsync(accountClientDto.Name))
                {
                    return new OperationResultCreateAccountDto(false, LanguageUtilities.MessageUnableToSaveData(accountClientDto.PreferredLanguage),
                        EnumCreateAccountStatus.ExistsName);
                }
                else if (AddAccountAndProfileTransactionAsync(accountClientDto).Result)
                {

                    return new OperationResultCreateAccountDto(true, LanguageUtilities.MessageSuccess(accountClientDto.PreferredLanguage),
                        EnumCreateAccountStatus.SuccessSave, await GetProfileByName(accountClientDto.Name));
                }

            }

            return new OperationResultCreateAccountDto(false, LanguageUtilities.MessageUnableToSaveData(accountClientDto.PreferredLanguage), EnumCreateAccountStatus.ErrorSaving);
        }


        public async Task<ProfileDto> GetProfileByName(string accountName)
        {
            Profile profileRecord = await repositoryManager.ProfileRepository.GetProfileByNameAsync(accountName);
            ProfileDto profileDto = new ProfileDto();
           
            if(profileRecord != null)
            {
                profileDto.Name = profileRecord.Name;
                profileDto.Id = profileRecord.Id;
            }

            return profileDto;
        }
        public async Task<bool> AddAccountAndProfileTransactionAsync(AccountDto accountClientDto)
        {
            using (DbContextTransaction transaction = await repositoryManager.StartTransactionAsync())
            {
                bool isSuccessCommit = false;

                try
                {
                    
                    Account accountEntity = await CreateAccountEntityAsync(accountClientDto);
                    Profile profileEntity = await serviceManager.ProfileService.CreateProfileEntityAsync(accountClientDto.Name, accountEntity);

                    if (profileEntity != null && accountEntity != null)
                    {
                   
                        await CreateRelationAccountProfileAsync(accountEntity, profileEntity);

      
                        transaction.Commit();
                        isSuccessCommit = true;

           
                        _ = Task.Run(async () =>
                        {
                                await SendverificationCode(accountEntity);
                        });
                    }
                }
                catch (DbUpdateException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (SqlException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (Exception ex)
                {
                    Log.Error(ex, ex.Source);
                }

                return isSuccessCommit;
            }
        }

        public async Task<Account> CreateAccountEntityAsync(AccountDto accountClientDto)
        {
            Account accountRecord = new Account();
            if (IsValidAccountEmail(accountClientDto.Email))
            {
                accountRecord.Email = accountClientDto.Email;
            }
            else if (IsValidAccountPhoneNumber(accountClientDto.PhoneNumber))
            {
                accountRecord.PhoneNumber = accountClientDto.PhoneNumber;
            }

            accountRecord.Salt = PasswordUtilities.GetSaltPassword();
            accountRecord.PasswordHash = PasswordUtilities.GetHashPassword(accountClientDto.Password, accountRecord.Salt);
            accountRecord.CreatedAt = DateTime.UtcNow;
            accountRecord.UpdatedAt = DateTime.UtcNow;
            accountRecord.PreferredLanguage = accountClientDto.PreferredLanguage;
            accountRecord.Status = false;
            accountRecord.Token = GenerateVerificationCode();
            accountRecord.RecoveryTokenExpiry = DateTime.UtcNow;

            await repositoryManager.SaveAsync();
            return accountRecord;
        }
        public async Task CreateRelationAccountProfileAsync(Account accountEntity, Profile profileEntity)
        {
            accountEntity.RelationProfile = profileEntity;
            profileEntity.RelationAccount = accountEntity;
            repositoryManager.AccountRepository.AddEntity(accountEntity);
            repositoryManager.ProfileRepository.AddEntity(profileEntity);
            await repositoryManager.SaveAsync();
        }

        public async Task SendEmailVerificationCode(Account accountRecord)
        {
            if(!string.IsNullOrEmpty(accountRecord.Email))
            {
                await serviceManager.EmailService.SendConfirmationEmailAsync(accountRecord);
            }
        }
        public async Task SendSmsVerificationCode(Account accountRecord)
        {
            if (!string.IsNullOrEmpty(accountRecord.PhoneNumber))
            {
                await serviceManager.SmsService.SendSmsAsync(accountRecord.PhoneNumber, accountRecord.Token);
            }
        }

        public async Task SendTelegramVerificationCode(Account accountRecord)
        {
            if(!string.IsNullOrEmpty(accountRecord.PhoneNumber))
            {
                await serviceManager.TelegramService.SendMessageAsync(accountRecord.PhoneNumber,
                LanguageUtilities.MessageTokenSubject(accountRecord.PreferredLanguage) + CharacterUtilities.STRING_CHAR_SPACE + accountRecord.Token);
            }
        }
        public async Task<OperationResultProfileDto> LogInInDataBaseAsync(AccountDto accountClientDto)
        {
            if ((IsValidAccountEmail(accountClientDto.Email) || IsValidAccountPhoneNumber(accountClientDto.PhoneNumber)) 
                && IsValidAccountPassword(accountClientDto.Password))
            {
                Account accountRecord = await repositoryManager.AccountRepository.FindAccountAsync(accountClientDto.PhoneNumber, accountClientDto.Email,
                    accountClientDto.Password);

                if (accountRecord != null)
                {
                    Profile profileRecord = await serviceManager.ProfileService.GetProfileWithNewSessionId(accountRecord.Id);

                    if (accountRecord.Status)
                    {
                        ProfileDto profileServerDto = serviceManager.ProfileService.CreateProfileDto(profileRecord);
                        profileServerDto.IsRegistered = true;
                        return new OperationResultProfileDto(true, LanguageUtilities.MessageSuccess(accountClientDto.PreferredLanguage),
                                profileServerDto, EnumAuthenticationStatus.Verified);
                    }
                    else
                    {
                        return new OperationResultProfileDto(false, LanguageUtilities.MessageDataBaseUnableToLoad(accountClientDto.PreferredLanguage),
                            EnumAuthenticationStatus.NotVerified);
                    }
                }
            }
            return new OperationResultProfileDto(false, LanguageUtilities.MessageDataBaseUnableToLoad(accountClientDto.PreferredLanguage),
                EnumAuthenticationStatus.Incorrect);
        }

        public static bool ComparePassWord(Account accountRecord, AccountDto accountClientDto)
        {
            return PasswordUtilities.ComparePassword(accountClientDto.Password, accountRecord.Salt, accountRecord.PasswordHash);
        }

        public static bool IsValidAccountEmail(string email)
        {
            bool isValid = true;

            if (string.IsNullOrWhiteSpace(email) || email.Length > 253)
            {
                return false; 
            }

            try
            {
                isValid &= Regex.IsMatch(email, AccountValidationUtilities.REGEX_PROFILE_EMAIL_VALIDATION, RegexOptions.None, TimeSpan.FromMilliseconds(1000));

                if (isValid)
                {
                    string[] parts = email.Split(CharacterUtilities.STRING_CHAR_ARROBA, (char)StringSplitOptions.RemoveEmptyEntries);
                    isValid &= parts.Length == 2;

                    if (isValid)
                    {
                        string localPart = parts[0];
                        string domainPart = parts[1];

                        isValid &= !HasInvalidDotsOrDashes(localPart) && !HasInvalidDotsOrDashes(domainPart);
                    }
                }
            }
            catch (RegexMatchTimeoutException ex)
            {
                Log.Error(ex, ex.Source);
                isValid = false;
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
                isValid = false;
            }

            return isValid;
        }

        private static bool HasInvalidDotsOrDashes(string part)
        {
            return Regex.IsMatch(part, AccountValidationUtilities.REGEX_DOUBLE_POINTS, RegexOptions.None, TimeSpan.FromMilliseconds(1000)) ||
                   part.StartsWith(CharacterUtilities.STRING_CHAR_DASH) ||
                   part.EndsWith(CharacterUtilities.STRING_CHAR_DASH) ||
                   part.StartsWith(CharacterUtilities.STRING_CHAR_POINT) ||
                   part.EndsWith(CharacterUtilities.STRING_CHAR_POINT);
        }

        public static bool IsValidAccountPhoneNumber(string phoneNumber)
        {
            bool isValidPhoneNumber = false;

            if (!string.IsNullOrEmpty(phoneNumber) && phoneNumber.Length <= AccountValidationUtilities.USERNAME_MAX_LENGTH 
                && phoneNumber.Length >= AccountValidationUtilities.PASSWORD_MIN_LENGTH)
            {
                string phoneNumberRegex = AccountValidationUtilities.REGEX_PHONE_NUMBER_VALIDATION;

     
                try
                {
                    isValidPhoneNumber = Regex.IsMatch(phoneNumber, phoneNumberRegex, RegexOptions.None, TimeSpan.FromMilliseconds(1000));
                }
                catch (RegexMatchTimeoutException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (Exception ex)
                {
                    Log.Error(ex, ex.Source);
                }
            }
            return isValidPhoneNumber;
        }

        public static bool IsValidAccountPassword(string password)
        {
            bool isValidPassword = false;

            if (!string.IsNullOrEmpty(password) && password.Length >= AccountValidationUtilities.PASSWORD_MIN_LENGTH 
                && password.Length <= AccountValidationUtilities.PASSWORD_MAX_LENGTH)
            {
                string passwordRegex = AccountValidationUtilities.REGEX_PASSWORD_ACCOUNT_VALIDATION;

                try
                {
                    isValidPassword = Regex.IsMatch(password, passwordRegex, RegexOptions.None, TimeSpan.FromMilliseconds(1000));
                }
                catch (RegexMatchTimeoutException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch(Exception ex)
                {
                    Log.Error(ex, ex.Source);
                }
            }

            return isValidPassword;
        }

        public static string GenerateVerificationCode()
        {
            const string alphabet = AccountValidationUtilities.ALPHABET_EN;
            StringBuilder verificationCode = new StringBuilder();

            using (RandomNumberGenerator randomNumber = RandomNumberGenerator.Create())
            {
                byte[] arrayRandomNumbers = new byte[AccountValidationUtilities.VERIFICATION_CODE_LENGTH];
                randomNumber.GetBytes(arrayRandomNumbers);

                for(int i = 0; i < AccountValidationUtilities.VERIFICATION_CODE_LENGTH; i++)
                {
                    verificationCode.Append(alphabet[arrayRandomNumbers[i] % alphabet.Length]);
                    if (i < AccountValidationUtilities.VERIFICATION_CODE_LENGTH - 1 && (i + 1) % AccountValidationUtilities.VERIFICATION_CODE_PARTS_LENGTH == 0)
                    {
                        verificationCode.Append(CharacterUtilities.STRING_CHAR_DASH);
                    }
                }
            }
            return verificationCode.ToString(); 
        }
        public static bool IsValidLanguage(string language)
        {
            return !string.IsNullOrEmpty(language);
        }

        public async Task<OperationResultDto> IsVerifyAccount(AccountDto accountClientDto)
        {
            bool isVerified = false;
            if (accountClientDto.Token != null  && (IsValidAccountEmail(accountClientDto.Email) || IsValidAccountPhoneNumber(accountClientDto.PhoneNumber)))
            {
                isVerified = await repositoryManager.AccountRepository.
                ChangeStatusToVerifyAsync(accountClientDto.PhoneNumber, accountClientDto.Email, accountClientDto.Token);

                if (isVerified)
                {
                    await repositoryManager.SaveAsync();
                    return new OperationResultDto(isVerified, LanguageUtilities.MessageSuccess(accountClientDto.PreferredLanguage));
                }
            }
            return new OperationResultDto(false, LanguageUtilities.MessageDataBaseUnableToLoad(accountClientDto.PreferredLanguage));
        }

        public async Task<bool> ResendVerificationCodeAsync(string emailOrPhone)
        {
            Account accountRecord = null;

            if (IsValidAccountEmail(emailOrPhone))
            {
                accountRecord = await repositoryManager.AccountRepository.FindAccountByEmailAsync(emailOrPhone);
            }
            else if (IsValidAccountPhoneNumber(emailOrPhone))
            {
                accountRecord = await repositoryManager.AccountRepository.FindAccountByPhoneAsync(emailOrPhone);
            }

            if (accountRecord != null)
            {
                return await HandleResendToken(accountRecord.Id);

            }
            return false;
        }
        public async Task SendverificationCode(Account accountRecord)
        {
            await SendEmailVerificationCode(accountRecord);
            await SendSmsVerificationCode(accountRecord);
            await SendTelegramVerificationCode(accountRecord);
        }
        public async Task<bool> IsAccountRegisteredWithEmail(string email)
        {
            if (!string.IsNullOrEmpty(email))
            {
                return await repositoryManager.AccountRepository.IsAccountRegisteredWithEmailAsync(email);
            }
            return false;
        }
        public async Task<bool> IsAccountRegisteredWithPhone(string phone)
        {
            if (string.IsNullOrEmpty(phone))
            {
                return await repositoryManager.AccountRepository.IsAccountRegisteredWithPhoneAsync(phone);
            }
            return false;
        }

        public async Task<bool> HandleResendToken(int idAccountClient)
        {
            bool isAccountFind = false;
            Account accountRecord = await repositoryManager.AccountRepository.FindEntityByIdAsync(idAccountClient);
            if (accountRecord != null)
            {
                accountRecord.Token = GenerateVerificationCode();
                accountRecord.UpdatedAt = DateTime.UtcNow;
                accountRecord.RecoveryTokenExpiry = DateTime.UtcNow;
                await repositoryManager.SaveAsync();
                _ = Task.Run(async () =>
                {
                    await SendverificationCode(accountRecord);
                });
                isAccountFind = true;
            }
            return isAccountFind;
        }
        public async Task<OperationResultDto> SendVerificationCodeToChangePasswordInDataBaseAsync(AccountDto accountClientDto)
        {
            if (IsValidAccountPassword(accountClientDto.Password) && accountClientDto.Id != null
                && await HandleResendToken((int)accountClientDto.Id))
            {
                return new OperationResultDto(true, LanguageUtilities.MessageSuccess(accountClientDto.PreferredLanguage));
            }
            return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(accountClientDto.PreferredLanguage));
        }

        public async Task<bool> CompareTokenServerAndTokenClientAndSave(AccountDto accountClientDto)
        {
            
            Account accountRecord = await repositoryManager.AccountRepository.FindEntityByIdAsync((int)accountClientDto.Id);

            if (accountRecord != null && accountClientDto.Token == accountRecord.Token && 
                DiferenceBetweenDates((DateTime)accountRecord.RecoveryTokenExpiry, accountClientDto.TokenExpiration))
            {
                return true;
            }
            return false; 
        }

        public static bool DiferenceBetweenDates(DateTime dateTimeExpiricy, DateTime dateTimeClient)
        {
            TimeSpan timeDifference = dateTimeClient - dateTimeExpiricy;
            return timeDifference.TotalHours <= AccountValidationUtilities.HOURS_MAX_DIFFERENCE;
        }

        public async Task<OperationResultDto> ChangePasswordInDataBaseAsync(AccountDto accountClientDto)
        {
            if(await CompareTokenServerAndTokenClientAndSave(accountClientDto))
            {
                await SaveNewPassWord(accountClientDto);
                return new OperationResultDto(true, LanguageUtilities.MessageSuccess(accountClientDto.PreferredLanguage));
            }
            return new OperationResultDto(false, LanguageUtilities.MessageUnableToSaveData(accountClientDto.PreferredLanguage));
        }

        public async Task SaveNewPassWord(AccountDto accountClientDto)
        {
            Account accountRecord = await repositoryManager.AccountRepository.FindEntityByIdAsync((int)accountClientDto.Id);
            if(accountRecord != null)
            {
                accountRecord.Salt = PasswordUtilities.GetSaltPassword();
                accountRecord.PasswordHash = PasswordUtilities.GetHashPassword(accountClientDto.Password, accountRecord.Salt);
                await repositoryManager.SaveAsync();
            }
        }

        public async Task<OperationResultChangeRegisterEmailOrPhone> SendVerificationCodeToChangeEmailOrPhoneInDataBaseAsync(AccountDto accountClientDto)
        {
            if (IsValidAccountEmail(accountClientDto.Email) || IsValidAccountPhoneNumber(accountClientDto.PhoneNumber))
            {
                if(await IsAccountRegisteredWithEmail(accountClientDto.Email) || await IsAccountRegisteredWithPhone(accountClientDto.PhoneNumber))
                {
                    return new OperationResultChangeRegisterEmailOrPhone(false, LanguageUtilities.MessageUnableToSaveData(accountClientDto.PreferredLanguage),
                        EnumChangeAccountRegister.AlreadyExists);
                }else if (await HandleResendToken((int)accountClientDto.Id))
                {
                    return new OperationResultChangeRegisterEmailOrPhone(true, LanguageUtilities.MessageSuccess(accountClientDto.PreferredLanguage),
                        EnumChangeAccountRegister.Success);
                }
            }
            return new OperationResultChangeRegisterEmailOrPhone(false, LanguageUtilities.MessageUnableToSaveData(accountClientDto.PreferredLanguage),
                    EnumChangeAccountRegister.UnableToSaveData);
        }

        public async Task<OperationResultChangeRegisterEmailOrPhone> ChangeEmailOrPhoneInDataBaseAsync(AccountDto accountClientDto)
        {
            if ((IsValidAccountEmail(accountClientDto.Email) || IsValidAccountPassword(accountClientDto.Password)) && 
                (!await IsAccountRegisteredWithEmail(accountClientDto.Email) || !await IsAccountRegisteredWithPhone(accountClientDto.PhoneNumber)) 
                && await CompareTokenServerAndTokenClientAndSave(accountClientDto))
            {
                await SaveNewEmailOrPhone(accountClientDto);
                return new OperationResultChangeRegisterEmailOrPhone(true, LanguageUtilities.MessageSuccess(accountClientDto.PreferredLanguage),
                    EnumChangeAccountRegister.Success);
            }

            return new OperationResultChangeRegisterEmailOrPhone(false, LanguageUtilities.MessageUnableToSaveData(accountClientDto.PreferredLanguage), 
                EnumChangeAccountRegister.UnableToSaveData);
        }
        public async Task<bool> SaveNewEmailOrPhone(AccountDto accountClientDto)
        {
            bool isSuccessChanged = false;
            Account accountRecord = await repositoryManager.AccountRepository.FindEntityByIdAsync((int)accountClientDto.Id);

            if(accountRecord != null)
            {
                if (!string.IsNullOrEmpty(accountClientDto.Email))
                {
                    accountRecord.Email = accountClientDto.Email;
                    isSuccessChanged = true;
                }
                else if (!string.IsNullOrEmpty(accountClientDto.PhoneNumber))
                {
                    accountRecord.PhoneNumber = accountClientDto.PhoneNumber;
                    isSuccessChanged = true;
                }
                await repositoryManager.SaveAsync();
            }

            return isSuccessChanged;
        }

        public async Task<OperationResultAccountDto> ConsultAccountProfileServiceInDataBase(ProfileDto profileClientDto)
        {
            AccountDto accountServerDto = await GetProfileAccountInformation((int)profileClientDto.Id);

            if(accountServerDto != null)
            {
                return new OperationResultAccountDto(true, LanguageUtilities.MessageSuccess(profileClientDto.PreferredLanguage), accountServerDto);
            }
            return new OperationResultAccountDto(false, LanguageUtilities.MessageDataBaseUnableToLoad(profileClientDto.PreferredLanguage), accountServerDto);
        }

        public async Task<AccountDto> GetProfileAccountInformation(int idProfile)
        {
            Account accountRecord = await repositoryManager.AccountRepository.FindEntityByIdAsync(idProfile);
            AccountDto accountServerDto = null;
            
            if(accountRecord != null)
            {
                accountServerDto = new AccountDto();
                accountServerDto.Email = accountRecord.Email;
                accountServerDto.PhoneNumber = accountRecord.PhoneNumber;
            }

            return accountServerDto;
        }

        public async Task SendInviteGameToFriends(Account accountRecord, string accessKey)
        {
            await SendGameCodeByEmail(accountRecord, accessKey);
            await SendGameCodeToPhone(accountRecord, accessKey);
            await SendGameCodeToTelegram(accountRecord, accessKey);
        }

        public async Task SendGameCodeByEmail(Account accountRecord, string accessKey)
        {
            if(!string.IsNullOrEmpty(accountRecord.Email) && !string.IsNullOrEmpty(accessKey))
            {
                await serviceManager.EmailService.SendGameCodeToFriends(accountRecord, accessKey);
            }
        }
        public async Task SendGameCodeToPhone(Account accountRecord, string accessKey)
        {
            if (!string.IsNullOrEmpty(accountRecord.PhoneNumber) && !string.IsNullOrEmpty(accessKey))
            {
                await serviceManager.SmsService.SendSmsAsync(accountRecord.PhoneNumber, accessKey);
            }
        }
        public async Task SendGameCodeToTelegram(Account accountRecord, string accessKey)
        {
            if (!string.IsNullOrEmpty(accountRecord.PhoneNumber) && !string.IsNullOrEmpty(accessKey))
            {
                await serviceManager.TelegramService.SendMessageAsync(accountRecord.PhoneNumber, accessKey);
            }
        }

        public async Task<bool> NeedHelpProblemWithEmailInDataBase(string email)
        {
            bool isFreeEmail = false;

            if (IsValidAccountEmail(email))
            {
                isFreeEmail = await repositoryManager.AccountRepository.LiberateEmailForFreeUseAsync(email);
            }

            return isFreeEmail;
        }

        public async Task<bool> NeedHelpProblemWithPasswordInDataBase(string email)
        {
            if (IsValidAccountEmail(email))
            {
               Account accountRecord = await repositoryManager.AccountRepository.FindAccountByEmailAsync(email);
                if (accountRecord != null)
                {
                    await HandleResendToken(accountRecord.Id);
                    return true;
                }
            }
            return false;
        }

        public async Task<bool> ChangeForgotPasswordInDataBase(string email, string newPassword, string token)
        {
            if (IsValidAccountEmail(email) && IsValidAccountPassword(newPassword))
            {
                Account accountRecord = await repositoryManager.AccountRepository.FindAccountByEmailAsync(email);

                if (accountRecord != null && accountRecord.Token == token)
                {
                    accountRecord.Salt = PasswordUtilities.GetSaltPassword();
                    accountRecord.PasswordHash = PasswordUtilities.GetHashPassword(newPassword, accountRecord.Salt);
                    await repositoryManager.SaveAsync();
                    return true;
                }

            }
            return false;
        }
    }
}
