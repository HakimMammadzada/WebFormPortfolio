using MyPortfolioWebForm.Extentions;
using MyPortfolioWebForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPortfolioWebForm
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (AppDbContext db = new AppDbContext())
            {
                GridView1.DataSource = db.Stories.ToList();
                GridView1.DataBind();

                GridView2.DataSource = db.Services.ToList();
                GridView2.DataBind();

                GridView3.DataSource = db.Contacts.ToList();
                GridView3.DataBind();

                GridView4.DataSource = db.Skills.ToList();
                GridView4.DataBind();
            }
        }
      

        protected void Submit1_ServerClick(object sender, EventArgs e)
        {
            GridView1.DataSource = String.Empty;
            MyStory myStory = new MyStory
            {
                Head = title.Value,
                Content = content.Value
            };
            using (AppDbContext db = new AppDbContext())
            {
                db.Stories.Add(myStory);
                db.SaveChanges();
                GridView1.DataSource = db.Stories.ToList();
                GridView1.DataBind();
            }

        }

        protected void Submit2_ServerClick(object sender, EventArgs e)
        {
            GridView2.DataSource = String.Empty;

            MyServices services = new MyServices
            {
                Title= serviceT.Value,
                Description=desc.Value,
                LinkIcon=icon.Value
            };
            using (AppDbContext db = new AppDbContext())
            {
                db.Services.Add(services);
                db.SaveChanges();

                GridView2.DataSource = db.Services.ToList();
                GridView2.DataBind();
            }
        }

        protected void Submit3_ServerClick(object sender, EventArgs e)
        {
            GridView3.DataSource = String.Empty;

            Contact contact = new Contact
            {
                Name = name.Value,
                Contetn = con.Value,
                İconName = icname.Value
            };
            using (AppDbContext db = new AppDbContext())
            {
                db.Contacts.Add(contact);
                db.SaveChanges();

                GridView3.DataSource = db.Contacts.ToList();
                GridView3.DataBind();
            }
        }

        protected void Submit4_ServerClick(object sender, EventArgs e)
        {
            GridView4.DataSource = String.Empty;

            MySkills skills = new MySkills();

           skills.Name = head.Value;
            skills.Description = descrip.Value;
            skills.Picture = img.PostedFile.SaveImage(Server.MapPath("~/Image"));
        
            using (AppDbContext db = new AppDbContext())
            {
                db.Skills.Add(skills);
                db.SaveChanges();

                GridView4.DataSource = db.Skills.ToList();
                GridView4.DataBind();
            }

        }
    }
}