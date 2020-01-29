using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MyPortfolioWebForm.Models
{
    public class MySkills
    {
        public int Id { get; set; }
        [Required]
        [StringLength(100)]
        public string Name { get; set; }
        [Required]
        [StringLength(300)]
        public string Description { get; set; }
        [Required]
        [StringLength(250)]
        public string Picture { get; set; }
    }
}