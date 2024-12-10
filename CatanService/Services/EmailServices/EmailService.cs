using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using Serilog;
using System.Threading.Tasks;
using Serilog.Core;
using CatanService.Helpers;
using CatanDataAccess.Helpers;
using CatanDataAccess.Domain;

namespace CatanService.Services
{
    public class EmailService : IDisposable, IEmailService
    {
        private readonly SmtpClient smtpClient;
        bool disposed = false;
        public EmailService()
        {
            smtpClient = new SmtpClient(ApiServiceUtilities.SMTP_CLIENT_HOST, ApiServiceUtilities.SMTP_CLIENT_PORT)
            {
                Credentials = new NetworkCredential(
                    Environment.GetEnvironmentVariable(ApiServiceUtilities.SMTP_CLIENT_ENVIROMENT_NAME),
                    Environment.GetEnvironmentVariable(ApiServiceUtilities.SMTP_CLIENT_ENVIROMENT_PASSWORD)),
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Timeout = ApiServiceUtilities.SMTP_CLIENT_TIME_OUT
            };
        }

        public async Task SendConfirmationEmailAsync(Account accountEntity)
        {
            using (MailMessage mailMessage = new MailMessage())
            {
                try
                {
                    mailMessage.From = new MailAddress(Environment.GetEnvironmentVariable(ApiServiceUtilities.SMTP_CLIENT_ENVIROMENT_NAME));
                    mailMessage.To.Add(accountEntity.Email);
                    mailMessage.Subject = LanguageUtilities.MessageTokenSubject(accountEntity.PreferredLanguage);
                    mailMessage.Body = LanguageUtilities.MessageTokenSubject(accountEntity.PreferredLanguage) + CharacterUtilities.STRING_CHAR_SPACE + accountEntity.Token;
                    mailMessage.IsBodyHtml = false;

                    await smtpClient.SendMailAsync(mailMessage);
                }
                catch (SmtpException ex)
                {
                    Log.Error(ex, ex.Source);
                }
            }
        }
        public async Task SendGameCodeToFriends(Account accountRecord, string codeGame)
        {
            using (MailMessage mailMessage = new MailMessage())
            {
                try
                {
                    mailMessage.From = new MailAddress(Environment.GetEnvironmentVariable(ApiServiceUtilities.SMTP_CLIENT_ENVIROMENT_NAME));
                    mailMessage.To.Add(accountRecord.Email);
                    mailMessage.Subject = LanguageUtilities.MessageSubjectCodeAccessGame(accountRecord.PreferredLanguage);
                    mailMessage.Body = LanguageUtilities.MessageCode(accountRecord.PreferredLanguage) + CharacterUtilities.STRING_CHAR_SPACE + codeGame;
                    mailMessage.IsBodyHtml = false;

                    await smtpClient.SendMailAsync(mailMessage);
                }
                catch (SmtpException ex)
                {
                    Log.Error(ex, ex.Source);
                }
            }
        }
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!disposed)
            {
                if (disposing)
                {
                    smtpClient?.Dispose();
                }
                disposed = true;
            }
        }
    }
}
