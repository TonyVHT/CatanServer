using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Helpers
{
    public static class ApiServiceUtilities
    {
        public const string SMTP_CLIENT_HOST = "smtp.gmail.com";
        public const string SMTP_CLIENT_ENVIROMENT_NAME = "EMAIL_USERNAME";
        public const string SMTP_CLIENT_ENVIROMENT_PASSWORD = "EMAIL_PASSWORD";
        public const string TWILIO_ENVIROMENT_ID = "TWILIO_ACCOUNT_SID";
        public const string TWILIO_ENVIROMENT_TOKEN = "TWILIO_AUTH_TOKEN";
        public const string TWILIO_PHONE_NUMBER = "TWILIO_PHONE_NUMBER";
        public const int SMTP_CLIENT_PORT = 587;
        public const int SMTP_CLIENT_TIME_OUT = 20000;
        public const string BOT_TELEGRAM_TOKEN = "BOT_TELEGRAM_TOKEN";
    }
}
