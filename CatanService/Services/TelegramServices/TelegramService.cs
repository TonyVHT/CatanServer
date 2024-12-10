using Autofac.Core;
using CatanDataAccess.Helpers;
using CatanService.Helpers;
using Serilog;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;

namespace CatanService.Services
{
    public class TelegramService : IDisposable, ITelegramService
    {
        private readonly HttpClient httpClient;
        private readonly Dictionary<string, string> IdFromNumbers;
        private bool disposed = false;

        public TelegramService()
        {
            string botToken = Environment.GetEnvironmentVariable(ApiServiceUtilities.BOT_TELEGRAM_TOKEN);
            httpClient = new HttpClient
            {
                BaseAddress = new Uri(LanguageUtilities.GetBaseAddressServiceTelegramBot(botToken))
            };

            IdFromNumbers = new Dictionary<string, string>
            {
                {"+", "6" },
                {"+", "1" }
            };
        }

        public async Task SendMessageAsync(string phoneNumber, string message)
        {
            if (string.IsNullOrEmpty(phoneNumber)) return;
            try
            {
                if (IdFromNumbers.TryGetValue(phoneNumber, out string chatId))
                {
                    await httpClient.GetAsync(LanguageUtilities.GetAPITelegramMessageURI(chatId, message));
                }
            }
            catch(ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(UriFormatException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (HttpRequestException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (TaskCanceledException ex)
            {
                Log.Error(ex, ex.Source);
            }
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!disposed)
            {
                if (disposing)
                {
                    httpClient?.Dispose();
                }
                disposed = true;
            }
        }
    
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }

}
