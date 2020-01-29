using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MyPortfolioWebForm.Models
{
    public class AboutMe
    {
        public int Id { get; set; }
        [Required]
        [StringLength(100)]
        public string Title { get; set; }
        [Required]
        [StringLength(500, MinimumLength = 20)]
        public string Description { get; set; }
        [Required]
        [StringLength(250)]
        public string MyPicture { get; set; }
       
    }
}