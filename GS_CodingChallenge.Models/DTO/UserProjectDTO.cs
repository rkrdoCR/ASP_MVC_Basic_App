using System;

namespace GS_CodingChallenge.Models
{
    public class UserProjectDTO
    {
        public int ProjectId { get; set; }
        public DateTime StartDate { get; set; }
        public string TimeToStart { get; set; }
        public DateTime EndDate { get; set; }
        public int Credits { get; set; }
        public string IsActive { get; set; }
    }
}
