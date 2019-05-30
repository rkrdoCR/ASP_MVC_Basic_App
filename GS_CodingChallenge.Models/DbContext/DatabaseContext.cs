using System.Data.Entity;

namespace GS_CodingChallenge.Models
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext()
            : base("DefaultConnection")
        {
            Configuration.LazyLoadingEnabled = false;
            //Database.SetInitializer<DatabaseContext>(new DatabaseInitializer());
        }

        protected override void OnModelCreating(DbModelBuilder builder)
        {
            builder.Entity<User>().HasKey(q => q.Id);
            builder.Entity<Project>().HasKey(q => q.Id);
            builder.Entity<UserProject>().HasKey(q =>
                new {
                    q.UserId,
                    q.ProjectId
                });


            builder.Entity<UserProject>()
                .HasRequired(t => t.Project)
                .WithMany(t => t.UserProjects)
                .HasForeignKey(t => t.ProjectId);

            builder.Entity<UserProject>()
                .HasRequired(t => t.User)
                .WithMany(t => t.UserProjects)
                .HasForeignKey(t => t.UserId);
        }

        public DbSet<User> Users { get; set; }
        public DbSet<Project> Projects { get; set; }
        public DbSet<UserProject> UserProjects { get; set; }
    }
}