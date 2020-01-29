using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace MyPortfolioWebForm.Models
{
    public class AppDbContext:DbContext
    {
        public AppDbContext() : base("mydb") { }
        public DbSet<AboutMe> Abouts { get; set; }
        public DbSet<Contact> Contacts { get; set; }
        public DbSet<MyServices> Services { get; set; }
        public DbSet<MySkills> Skills { get; set; }
        public DbSet<MyStory> Stories { get; set; }

    }
}