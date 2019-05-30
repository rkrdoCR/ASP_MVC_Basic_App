using GS_CodingChallenge.Models;
using System.Collections.Generic;

namespace GS_CodingChallenge.Repository
{
    public interface IDefaultRepository
    {
        List<User> GetUsers();
        IEnumerable<UserProject> GetUserProjects(int id);
        IEnumerable<Project> GetProjects(int id);
    }
}