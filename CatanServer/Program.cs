using System;
using Serilog;
using CatanService.Helpers;
using System.Collections.Generic;
using CatanDataAccess.Contexts;



namespace CatanServer
{
    public static class Program
    {
        public static void Main(string[] args)
        {
            LoggerUtilities.configureLogger();
            Log.Information(LoggerUtilities.LOGGER_START_INFO);

            List<string> servicesUriConnection = StartServerServices();

            PrintServicesName(servicesUriConnection);


            ConsoleKeyInfo keyPressed;

            do
            {
                keyPressed = Console.ReadKey(intercept: true);

            } while (keyPressed.Key != ConsoleKey.Escape);
        }

        public static void PrintServicesName(List<string> servicesUriConnection)
        {
            if (servicesUriConnection.Count == 0)
            {
                Console.Write(LoggerUtilities.LOGGER_START_INFO);
                return;
            }
            foreach (string serviceUri in servicesUriConnection)
            {
                Console.WriteLine(serviceUri);
            }
        }

        public static List<string> StartServerServices()
        {
            List<string> servicesUriConnection = new List<string>();

            using (ServiceHostManager serviceHostManager = new ServiceHostManager())
            {
                try
                {
                    servicesUriConnection = serviceHostManager.StartAllServices();
                }
                catch (Exception ex)
                {
                    Log.Error(ex, ex.Source);
                }
            }

            return servicesUriConnection;
        }
    }
}