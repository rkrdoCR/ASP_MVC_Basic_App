using System;

namespace GS_CodingChallenge.Models
{
    public class UserProject
    {
        public int UserId { get; set; }
        public int ProjectId { get; set; }
        public bool IsActive { get; set; }
        public DateTime AssignedDate { get; set; }
        public virtual User User { get; set; }
        public virtual Project Project { get; set; }
    }
}
