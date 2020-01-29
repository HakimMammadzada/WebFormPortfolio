using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MyPortfolioWebForm.Models
{
    public class MyStory
    {
        public int Id { get; set; }
        [Required]
        [StringLength(100)]
        public string Head { get; set; }
        [Required]
        [StringLength(500, MinimumLength = 10)]
        public string Content { get; set; }
    }
}