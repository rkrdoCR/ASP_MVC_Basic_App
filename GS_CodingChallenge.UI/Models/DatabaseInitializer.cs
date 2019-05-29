using System;
using System.Collections.Generic;
using System.Data.Entity;

namespace GS_CodingChallenge
{
    public class DatabaseInitializer : DropCreateDatabaseAlways<DatabaseContext>
    {
        protected override void Seed(DatabaseContext context)
        {
            var users = new List<User>()
            {
                new User() { FirstName="Ricardo", LastName="Alfaro"},
                new User() { FirstName="Juan", LastName="Perez"},
                new User() { FirstName="John", LastName="Doe" }
            };

            var projects = new List<Project>()
            {
                new Project() { Credits=1, StartDate = new DateTime(2020, 5, 1), EndDate = new DateTime(2020, 2, 1)},
                new Project() { Credits=2, StartDate = new DateTime(2018, 3, 1), EndDate = new DateTime(2020, 2, 1)},
                new Project() { Credits=3, StartDate = new DateTime(2018, 4, 1), EndDate = new DateTime(2020, 2, 1)},
                new Project() { Credits=4, StartDate = new DateTime(2018, 5, 1), EndDate = new DateTime(2020, 2, 1)},
                new Project() { Credits=5, StartDate = new DateTime(2018, 6, 1), EndDate = new DateTime(2020, 2, 1)},
                new Project() { Credits=6, StartDate = new DateTime(2018, 7, 1), EndDate = new DateTime(2020, 2, 1)},
                new Project() { Credits=7, StartDate = new DateTime(2018, 8, 1), EndDate = new DateTime(2020, 2, 1)},
                new Project() { Credits=8, StartDate = new DateTime(2018, 9, 1), EndDate = new DateTime(2020, 2, 1)},
                new Project() { Credits=9, StartDate = new DateTime(2018, 10, 1), EndDate = new DateTime(2020, 2, 1)},
                new Project() { Credits=10, StartDate = new DateTime(2018, 11, 1), EndDate = new DateTime(2020, 2, 1)},
                new Project() { Credits=11, StartDate = new DateTime(2018, 12, 1), EndDate = new DateTime(2020, 2, 1)},
                new Project() { Credits=12, StartDate = new DateTime(2019, 2, 1), EndDate = new DateTime(2020, 2, 1)},
                new Project() { Credits=13, StartDate = new DateTime(2019, 3, 1), EndDate = new DateTime(2020, 2, 1)},
                new Project() { Credits=14, StartDate = new DateTime(2019, 4, 1), EndDate = new DateTime(2020, 2, 1)},
                new Project() { Credits=15, StartDate = new DateTime(2019, 5, 1), EndDate = new DateTime(2020, 2, 1)}
            };

            var userProjects = new List<UserProject>()
            {
                new UserProject(){ UserId = 1, ProjectId = 1, AssignedDate = new DateTime(2019, 2, 3), IsActive = true },
                new UserProject(){ UserId = 1, ProjectId = 2, AssignedDate = new DateTime(2019, 2, 3), IsActive = true },
                new UserProject(){ UserId = 1, ProjectId = 3, AssignedDate = new DateTime(2019, 2, 3), IsActive = true },
                new UserProject(){ UserId = 1, ProjectId = 4, AssignedDate = new DateTime(2019, 2, 3), IsActive = true },
                new UserProject(){ UserId = 1, ProjectId = 5, AssignedDate = new DateTime(2019, 2, 3), IsActive = true },
                new UserProject(){ UserId = 2, ProjectId = 3, AssignedDate = new DateTime(2019, 2, 3), IsActive = true },
                new UserProject(){ UserId = 2, ProjectId = 4, AssignedDate = new DateTime(2019, 2, 3), IsActive = true },
                new UserProject(){ UserId = 2, ProjectId = 5, AssignedDate = new DateTime(2019, 2, 3), IsActive = true }
            };

            context.Users.AddRange(users);
            context.Projects.AddRange(projects);
            context.UserProjects.AddRange(userProjects);

            context.SaveChanges();
        }
    }
}