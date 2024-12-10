namespace CatanDataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialMigrationCatanDB : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Accounts",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Email = c.String(maxLength: 320),
                        PhoneNumber = c.String(maxLength: 20),
                        PasswordHash = c.Binary(nullable: false),
                        Salt = c.Binary(nullable: false),
                        CreatedAt = c.DateTime(nullable: false),
                        PreferredLanguage = c.String(nullable: false),
                        UpdatedAt = c.DateTime(nullable: false),
                        Status = c.Boolean(nullable: false),
                        Token = c.String(),
                        RecoveryTokenExpiry = c.DateTime(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Profiles",
                c => new
                    {
                        Id = c.Int(nullable: false),
                        Name = c.String(nullable: false, maxLength: 100),
                        SessionId = c.String(),
                        LastActivity = c.DateTime(),
                        PicturePath = c.String(maxLength: 255),
                        PictureVersion = c.Int(nullable: false),
                        IsOnline = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Accounts", t => t.Id, cascadeDelete: true)
                .Index(t => t.Id);
            
            CreateTable(
                "dbo.ProfileGames",
                c => new
                    {
                        ProfileId = c.Int(nullable: false),
                        GameId = c.Int(nullable: false),
                        IsActiveGame = c.String(),
                        IsPlayerInGame = c.Boolean(nullable: false),
                        Points = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.ProfileId, t.GameId })
                .ForeignKey("dbo.Games", t => t.GameId)
                .ForeignKey("dbo.Profiles", t => t.ProfileId, cascadeDelete: true)
                .Index(t => t.ProfileId)
                .Index(t => t.GameId);
            
            CreateTable(
                "dbo.Games",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        AccessKey = c.String(nullable: false, maxLength: 30),
                        Date = c.DateTime(nullable: false),
                        Status = c.String(nullable: false, maxLength: 50),
                        NumberPlayers = c.Int(nullable: false),
                        MaxNumberPlayers = c.Int(nullable: false),
                        Name = c.String(nullable: false),
                        AdminGameId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .Index(t => t.AccessKey, unique: true);
            
            CreateTable(
                "dbo.GuestAccountGames",
                c => new
                    {
                        GuestAccountId = c.Int(nullable: false),
                        GameId = c.Int(nullable: false),
                        IsPlayerInGame = c.Boolean(nullable: false),
                        IsActiveGame = c.String(),
                    })
                .PrimaryKey(t => new { t.GuestAccountId, t.GameId })
                .ForeignKey("dbo.Games", t => t.GameId, cascadeDelete: true)
                .ForeignKey("dbo.GuestAccounts", t => t.GuestAccountId, cascadeDelete: true)
                .Index(t => t.GuestAccountId)
                .Index(t => t.GameId);
            
            CreateTable(
                "dbo.GuestAccounts",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(maxLength: 255),
                        IsActive = c.Boolean(nullable: false),
                        LastActivity = c.DateTime(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.FriendRequests",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Date = c.DateTime(nullable: false),
                        SenderProfileId = c.Int(nullable: false),
                        ReceiverProfileId = c.Int(nullable: false),
                        Status = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Profiles", t => t.ReceiverProfileId, cascadeDelete: true)
                .ForeignKey("dbo.Profiles", t => t.SenderProfileId)
                .Index(t => t.SenderProfileId)
                .Index(t => t.ReceiverProfileId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Profiles", "Id", "dbo.Accounts");
            DropForeignKey("dbo.FriendRequests", "SenderProfileId", "dbo.Profiles");
            DropForeignKey("dbo.FriendRequests", "ReceiverProfileId", "dbo.Profiles");
            DropForeignKey("dbo.ProfileGames", "ProfileId", "dbo.Profiles");
            DropForeignKey("dbo.ProfileGames", "GameId", "dbo.Games");
            DropForeignKey("dbo.GuestAccountGames", "GuestAccountId", "dbo.GuestAccounts");
            DropForeignKey("dbo.GuestAccountGames", "GameId", "dbo.Games");
            DropIndex("dbo.FriendRequests", new[] { "ReceiverProfileId" });
            DropIndex("dbo.FriendRequests", new[] { "SenderProfileId" });
            DropIndex("dbo.GuestAccountGames", new[] { "GameId" });
            DropIndex("dbo.GuestAccountGames", new[] { "GuestAccountId" });
            DropIndex("dbo.Games", new[] { "AccessKey" });
            DropIndex("dbo.ProfileGames", new[] { "GameId" });
            DropIndex("dbo.ProfileGames", new[] { "ProfileId" });
            DropIndex("dbo.Profiles", new[] { "Id" });
            DropTable("dbo.FriendRequests");
            DropTable("dbo.GuestAccounts");
            DropTable("dbo.GuestAccountGames");
            DropTable("dbo.Games");
            DropTable("dbo.ProfileGames");
            DropTable("dbo.Profiles");
            DropTable("dbo.Accounts");
        }
    }
}
