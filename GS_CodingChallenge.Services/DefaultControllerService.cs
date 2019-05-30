using GS_CodingChallenge.Models;
using GS_CodingChallenge.Repository;
using System;
using System.Collections.Generic;
using System.Linq;

namespace GS_CodingChallenge.Services
{
    public class DefaultControllerService : IDefaultControllerService
    {
        private IDefaultRepository _defaultRepository;

        public DefaultControllerService(IDefaultRepository defaultRepository)
        {
            _defaultRepository = defaultRepository;
        }

        public List<User> GetUsers()
        {
            List<User> result = new List<User>();

            result = _defaultRepository.GetUsers();

            return result;
        }

        public IEnumerable<UserProjectDTO> GetUserProjects(int id)
        {
            IEnumerable<UserProjectDTO> result;

            var p_query = _defaultRepository.GetProjects(id);

            var up_query = _defaultRepository.GetUserProjects(id);

            result = from p in p_query
                     join up in up_query on p.Id equals up.ProjectId
                     where up.UserId == id
                     select new UserProjectDTO()
                     {
                         ProjectId = p.Id,
                         StartDate = p.StartDate,
                         TimeToStart = GetValue(p.StartDate, up.AssignedDate),
                         EndDate = p.EndDate,
                         Credits = p.Credits,
                         IsActive = up.IsActive ? "Active":"Inactive"
                     };

            return result;
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
