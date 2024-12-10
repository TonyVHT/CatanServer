using CatanDataAccess.Helpers;
using Serilog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Helpers
{
    public static class LoggerUtilities
    {
        public const string LOGGER_FILE_DIRECTORY = "../../../logs/catanserver-log-.txt";
        public const string LOGGER_START_INFO = "Start";
        public static void LogAndAbortHost(ServiceHostBase host, Exception ex)
        {
            Log.Error(ex, ex.Source);
            host.Abort();
        }
        public static void LogErrorCustomMessage(Exception ex, string message)
        {
            Log.Error(ex.Message, message);
        }
        public static void LogCustomFatalMessage(Exception ex, string message)
        {
            Log.Fatal(ex.Message, message);
        }
        public static void configureLogger()
        {
            Log.Logger = new LoggerConfiguration()
                .MinimumLevel.Debug()
                .WriteTo.Console()
                .WriteTo.File(LOGGER_FILE_DIRECTORY, rollingInterval: RollingInterval.Infinite)
                .CreateLogger();
        }
    }
}
