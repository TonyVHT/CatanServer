using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Configuration;
using Autofac.Integration.Wcf;
using CatanDataAccess.Helpers;
using CatanService.EndPoint;
using Serilog;

namespace CatanService.Helpers
{
    public class ServiceHostManager : IDisposable
    {
        private readonly List<ServiceHostBase> serviceHostList;
        private bool disposed = false;
        public ServiceHostManager()
        {
            serviceHostList = new List<ServiceHostBase>();
        }



        public List<string> StartAllServices()
        {
            List<string> servicesUriConnection = new List<string>();

            AutofacDependencyConfigurator.ConfigureContainer();

            servicesUriConnection.Add(StartService(ServicesUriUtilities.URI_ACCOUNTSERVICE_DIRECTION, typeof(AccountServiceEndPoint)));
            servicesUriConnection.Add(StartService(ServicesUriUtilities.URI_GAMESERVICE_DIRECTION, typeof(GameServiceEndpoint)));
            servicesUriConnection.Add(StartService(ServicesUriUtilities.URI_CHATSERVICE_DIRECTION, typeof(ChatServiceEndpoint)));
            servicesUriConnection.Add(StartService(ServicesUriUtilities.URI_PROFILESERVICE_DIRECTION, typeof(ProfileServiceEndpoint)));
            servicesUriConnection.Add(StartService(ServicesUriUtilities.URI_GUESTACCOUNTSERVICE_DIRECTION, typeof(GuestAccountEndpoint)));

            return servicesUriConnection;
        }
        private static string GetServiceUriFromConfig(string endpointName)
        {
            Configuration appConfig = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            ServiceModelSectionGroup serviceModelSectionGroup = ServiceModelSectionGroup.GetSectionGroup(appConfig);

            if (serviceModelSectionGroup != null)
            {
                ServiceElement serviceElement = serviceModelSectionGroup.Services.Services.OfType<ServiceElement>().FirstOrDefault(service => service.Name == endpointName);

                if (serviceElement != null)
                {
                    foreach (ServiceEndpointElement endpoint in serviceElement.Endpoints)
                    {
                        if (!string.IsNullOrEmpty(endpoint.Address.ToString()))
                        {
                            return endpoint.Address.ToString();
                        }
                    }
                }
            }
            return string.Empty;
        }
        private string StartService(string uriServiceAddress, Type serviceEndpoin)
        {
            string serviceUri = GetServiceUriFromConfig(uriServiceAddress);

            if (!string.IsNullOrEmpty(serviceUri))
            {
                try
                {
                    ServiceHostBase serviceHost = new AutofacServiceHostFactory().CreateServiceHost(
                        serviceEndpoin.AssemblyQualifiedName, new Uri[] { new Uri(serviceUri) });

                    serviceHostList.Add(serviceHost);
                    serviceHost.Open();
                }
                catch (UriFormatException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (CommunicationException ex)
                {
                    Log.Error(ex, ex.Source);
                }
                catch (Exception ex)
                {
                    Log.Error(ex, ex.Source);
                }
            }

            return serviceUri;
        }
        public static bool IsServiceOpen(ServiceHostBase host)
        {
            return host.State != CommunicationState.Closed && host.State != CommunicationState.Closing;
        }
        private void StopAllServices()
        {
            foreach (ServiceHostBase host in serviceHostList)
            {
                try
                {
                    if (IsServiceOpen(host)) continue;
                    host.Close();
                }
                catch (CommunicationException ex)
                {
                    LoggerUtilities.LogAndAbortHost(host, ex);
                }
                catch (TimeoutException ex)
                {
                    LoggerUtilities.LogAndAbortHost(host, ex);
                }
                catch (Exception ex)
                {
                    LoggerUtilities.LogAndAbortHost(host, ex);
                }
            }
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!disposed)
            {
                if (disposing)
                {
                    StopAllServices();
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