using GS_CodingChallenge.Repository;
using GS_CodingChallenge.Services;
using System.Web.Mvc;
using Unity;
using Unity.Mvc5;

namespace GS_CodingChallenge.UI
{
    public static class UnityConfig
    {
        public static void RegisterComponents()
        {
			var container = new UnityContainer();

            // register all your components with the container here
            // it is NOT necessary to register your controllers

            container.RegisterType<IDefaultControllerService, DefaultControllerService>();
            container.RegisterType<IDefaultRepository, DefaultRepository>(); 


            DependencyResolver.SetResolver(new UnityDependencyResolver(container));
        }
    }
}