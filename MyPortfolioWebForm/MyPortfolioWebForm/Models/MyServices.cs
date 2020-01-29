using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MyPortfolioWebForm.Models
{
    public class MyServices
    {
        public int Id { get; set; }
        [Required]
        [StringLength(100)]
        public string Title { get; set; }
        [Required]
        [StringLength(500, MinimumLength = 20)]
        public string Description { get; set; }
        [Required]
        [StringLength(150)]
        public string LinkIcon { get; set; }
    }
}