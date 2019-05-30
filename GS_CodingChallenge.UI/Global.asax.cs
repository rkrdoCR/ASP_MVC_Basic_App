using System.Web.Mvc;
using System.Web.Routing;

namespace GS_CodingChallenge.UI
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            UnityConfig.RegisterComponents();
        }
    }
}
