using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MyPortfolioWebForm.Models
{
    public class Contact
    {
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        [StringLength(150)]
        public string Contetn { get; set; }
        [Required]
        [StringLength(150)]
        public string İconName { get; set; }

    }
}