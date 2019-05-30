using System.Collections.Generic;
using System.Linq;
using GS_CodingChallenge.Models;

namespace GS_CodingChallenge.Repository
{

    //TODO: Implement Generic Repository
    public class DefaultRepository : IDefaultRepository
    {
        public DefaultRepository()
        {

        }

        public IEnumerable<Project> GetProjects(int id)
        {
            IEnumerable<Project> result;

            using (var context = new DatabaseContext())
            {
                result = context.Projects
                    .Where(p => p.UserProjects
                    .Any(up => up.UserId == id))
                    .ToList();                
            }

            return result;
        }

        public IEnumerable<UserProject> GetUserProjects(int id)
        {
            IEnumerable<UserProject> result;

            using (var context = new DatabaseContext())
            {
                result = context.UserProjects
                    .Where(up => up.UserId == id).ToList();
            }

            return result;
        }

        public List<User> GetUsers()
        {
            List<User> result = new List<User>();

            using (var context = new DatabaseContext())
            {
                result = context.Users.ToList();
            }

            return result;
        }
    }
}
