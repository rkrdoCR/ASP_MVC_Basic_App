using GS_CodingChallenge.Services;
using System.Web.Mvc;

namespace GS_CodingChallenge
{
    //TODO: Implement request-response pattern

    public class DefaultController : Controller
    {
        private IDefaultControllerService _defaultControllerService;

        public DefaultController(IDefaultControllerService defaultControllerService)
        {
            _defaultControllerService = defaultControllerService;
        }

        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public virtual JsonResult LoadUsers()
        {
            var query = _defaultControllerService.GetUsers();

            return Json(query, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public virtual JsonResult LoadUserProjects(int id)
        {
            var query = _defaultControllerService.GetUserProjects(id);

            return Json(query, JsonRequestBehavior.AllowGet);
        }        
    }
}