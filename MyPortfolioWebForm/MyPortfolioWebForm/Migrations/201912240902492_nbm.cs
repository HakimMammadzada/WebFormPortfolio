namespace MyPortfolioWebForm.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class nbm : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.AboutMes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Title = c.String(nullable: false, maxLength: 100),
                        Description = c.String(nullable: false, maxLength: 500),
                        MyPicture = c.String(nullable: false, maxLength: 250),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.MyServices",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Title = c.String(nullable: false, maxLength: 100),
                        Description = c.String(nullable: false, maxLength: 500),
                        LinkIcon = c.String(nullable: false, maxLength: 150),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.MySkills",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 100),
                        Description = c.String(nullable: false, maxLength: 300),
                        Picture = c.String(nullable: false, maxLength: 250),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.MyStories",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Head = c.String(nullable: false, maxLength: 100),
                        Content = c.String(nullable: false, maxLength: 500),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.MyStories");
            DropTable("dbo.MySkills");
            DropTable("dbo.MyServices");
            DropTable("dbo.AboutMes");
        }
    }
}
