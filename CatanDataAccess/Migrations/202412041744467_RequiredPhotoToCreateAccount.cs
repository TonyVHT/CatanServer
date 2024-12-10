namespace CatanDataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class RequiredPhotoToCreateAccount : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Profiles", "PicturePath", c => c.String(nullable: false, maxLength: 255));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Profiles", "PicturePath", c => c.String(maxLength: 255));
        }
    }
}
