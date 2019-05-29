using System;
using System.Linq;
using System.Web.Mvc;

namespace GS_CodingChallenge
{
    public class DefaultController : Controller
    {
        // GET: Default
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public virtual JsonResult LoadUsers()
        {
            object query;
            using (var context = new DatabaseContext())
            {
                 query = context.Users.ToList(); 
            }

            return Json(query, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public virtual JsonResult LoadUserProjects(int id)
        {
            object query = null;
            using (var context = new DatabaseContext())
            {
                var p_query = context.Projects
                    .Where(p => p.UserProjects
                    .Any(up => up.UserId == id))
                    .ToList();

                var up_query = context.UserProjects
                    .Where(up => up.UserId == id).ToList();

                query = from p in p_query
                        join up in up_query on p.Id equals up.ProjectId
                        where up.UserId == id
                        select new {
                            p.Id,
                            p.StartDate,
                            TimeToStart = GetValue(p.StartDate, up.AssignedDate),
                            p.EndDate,
                            p.Credits,
                            up.IsActive
                        };
            }

            return Json(query, JsonRequestBehavior.AllowGet);
        }

        private string GetValue(DateTime startDate, DateTime assignedDate)
        {
            var days = GetTimeToStart(startDate, assignedDate);

            return days > 0 ? days.ToString() : "Started";
        }

        private double GetTimeToStart(DateTime startDate, DateTime assignedDate)
        {
            return (startDate - assignedDate).Days;
        }
    }
}