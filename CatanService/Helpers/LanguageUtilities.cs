using CatanDataAccess.Language;
using Serilog;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Helpers
{
    public static class LanguageUtilities
    {
        public const string LANGUAGE_ENGLISH_FORMAT_RESX = "en";
        public const string LANGUAGE_ESPANISH_FORMAT_RESX = "es";
        public static string MessageDataBaseUnableToLoad(string language, Exception ex)
        {
            Log.Error(ex.ToString());
            return Resources.ResourceManager.GetString("dialog_database_load_exception", new CultureInfo(language));
        }
        public static string MessageDataBaseUnableToLoad(string language)
        {
            return Resources.ResourceManager.GetString("dialog_database_load_exception", new CultureInfo(language));
        }
        public static string MessageDataBaseSuccessFullySave(string language)
        {
            return Resources.ResourceManager.GetString("dialog_success_save_database", new CultureInfo(language));
        }
        public static string MessageUnableToFindInDataBase(string language)
        {
            return Resources.ResourceManager.GetString("dialog_database_load_exception", new CultureInfo(language));
        }
        public static string MessageInvalidUsername(string language)
        {
            return Resources.ResourceManager.GetString("dialog_invalid_username_characters", new CultureInfo(language));
        }
        public static string MessageServerLostConnection(string language)
        {
            return Resources.ResourceManager.GetString("dialog_connection_server_exception", new CultureInfo(language));
        }
        public static string MessageTokenSubject(string language)
        {
            return Resources.ResourceManager.GetString("subject_verification_code", new CultureInfo(language));
        }
        public static string MessageSubjectCodeAccessGame(string language)
        {
            return Resources.ResourceManager.GetString("email_subject_invite_friends_game", new CultureInfo(language));
        }
        public static string MessageCode(string language)
        {
            return Resources.ResourceManager.GetString("email_subject_invite_friends_game", new CultureInfo(language));
        }
        public static string MessageSuccess(string language)
        {
            return Resources.ResourceManager.GetString("dialog_success", new CultureInfo(language));
        }
        public static string MessageUnableToSaveData(string language)
        {
            return Resources.ResourceManager.GetString("dialog_database_save_exception", new CultureInfo(language));
        }
        public static string GetAPITelegramMessageURI(string chatId, string message)
        {
            return $"sendMessage?chat_id={chatId}&text={Uri.EscapeDataString(message)}";
        }
        public static string GetBaseAddressServiceTelegramBot(string token)
        {
            return $"https://api.telegram.org/bot{token}/";
        }

        public static string MessageJoinChatNewPlayer(string language)
        {
            return Resources.ResourceManager.GetString("Message_join_chat", new CultureInfo(language));
        }

        public static string MessageExpelPlayer(string language)
        {
            return Resources.ResourceManager.GetString("", new CultureInfo(language));
        }
    }
}
