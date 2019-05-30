using GS_CodingChallenge.Models;
using System.Collections.Generic;

namespace GS_CodingChallenge.Services
{
    public interface IDefaultControllerService
    {
        List<User> GetUsers();
        IEnumerable<UserProjectDTO> GetUserProjects(int id);
    }
}