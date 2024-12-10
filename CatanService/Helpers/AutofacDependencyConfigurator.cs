using Autofac.Integration.Wcf;
using Autofac;
using CatanDataAccess.Contexts;
using CatanDataAccess.Repositories;
using CatanService.EndPoint;
using CatanService.Services;
using System.Data.Entity;
using Serilog;
using System;

namespace CatanService.Helpers
{
    public class AutofacDependencyConfigurator : AutofacServiceHostFactory
    {
        public static void ConfigureContainer()
        {
            try
            {
                ContainerBuilder builder = new ContainerBuilder();

                builder.RegisterType<CatanDBContext>().As<DbContext>().InstancePerDependency();

                builder.RegisterType<RepositoryManager>().As<IRepositoryManager>().InstancePerLifetimeScope();

                builder.RegisterType<ServiceManager>().As<IServiceManager>().InstancePerLifetimeScope();

                builder.RegisterType<AccountServiceEndPoint>().AsSelf().InstancePerLifetimeScope();

                builder.RegisterType<ProfileServiceEndpoint>().AsSelf().InstancePerLifetimeScope();

                builder.RegisterType<GuestAccountEndpoint>().AsSelf().InstancePerLifetimeScope();

                builder.RegisterType<ChatServiceEndpoint>().AsSelf().SingleInstance();

                builder.RegisterType<GameServiceEndpoint>().AsSelf().SingleInstance();

                IContainer container = builder.Build();

                AutofacHostFactory.Container = container;
            }
            catch(InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
        }
    }
}
