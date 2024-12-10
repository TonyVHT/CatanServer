using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Helpers
{
    public static class AccountValidationUtilities
    {
        public const string REGEX_DOUBLE_POINTS = "\\.\\.+";
        public const string REGEX_PROFILE_NAME_VALIDATION = "^[a-zA-ZñÑ0-9]+( [a-zA-ZñÑ0-9]+)*$";
        public const string REGEX_PROFILE_EMAIL_VALIDATION = @"^[a-zA-ZñÑ0-9._-]+(?<!\.)@[a-zA-ZñÑ0-9.-]+\.[a-zA-ZñÑ]{2,}$";
        public const string REGEX_PHONE_NUMBER_VALIDATION = @"^\+[0-9]+$";
        public const string REGEX_PASSWORD_ACCOUNT_VALIDATION = "^(?=.*[A-ZÑ])(?=.*[0-9])(?=.*[!@#$%^&*(),.?\":{}|<>_])(?=.*[a-zA-ZñÑ0-9]).{8,}$";
        public const int PASSWORD_MIN_LENGTH = 8;
        public const int PASSWORD_MAX_LENGTH = 15;
        public const int USERNAME_MIN_LENGTH = 8;
        public const int USERNAME_MAX_LENGTH = 15;
        public const int TOKEN_VERIFY_ACCOUNT_SIZE = 11;
        public const string ALPHABET_EN = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        public const int VERIFICATION_CODE_PARTS_LENGTH = 3;
        public const int VERIFICATION_CODE_LENGTH = 9;
        public const string GUEST_USER_RESERVED_NAME = "USER";
        public const int HOURS_MAX_DIFFERENCE = 5;
        public const int ACCESS_KEY_LENGTH = 5;
        public const int PICTURE_MINIMUN_SIZE = 0;
        public const int ACCOUNT_ID_DEFAULT = 0;
    }
}
