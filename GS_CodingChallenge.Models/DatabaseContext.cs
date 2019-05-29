using System.Data.Entity;

namespace GS_CodingChallenge.Models
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext() 
            : base("DefaultConnection") 
        {

        }

        public DbSet<User> Users { get; set; }
    }
}
