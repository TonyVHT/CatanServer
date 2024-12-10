using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Twilio;
using Twilio.Exceptions;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;
using CatanService.Helpers;
using CatanDataAccess.Domain;
using System.Net.Http.Headers;
using System.Net.Http;
using CatanDataAccess.Helpers;

namespace CatanService.Services
{
    public class SmsService : ISmsService
    {
        private readonly string twilioPhoneNumber;

        public SmsService()
        {
           string accountSid = Environment.GetEnvironmentVariable(ApiServiceUtilities.TWILIO_ENVIROMENT_ID);
            string authToken = Environment.GetEnvironmentVariable(ApiServiceUtilities.TWILIO_ENVIROMENT_TOKEN);
            twilioPhoneNumber = Environment.GetEnvironmentVariable(ApiServiceUtilities.TWILIO_PHONE_NUMBER);
            TwilioClient.Init(accountSid, authToken);
        }

        public async Task SendSmsAsync(string phoneNumber, string messageBody)
        {
            try
            {
                await MessageResource.CreateAsync(to: new PhoneNumber(phoneNumber), from: new PhoneNumber(twilioPhoneNumber),
                    body: messageBody);
            }
            catch (ApiException apiEx) 
            {
                LoggerUtilities.LogErrorCustomMessage(apiEx, apiEx.Message);
            }
        }
    }
}
