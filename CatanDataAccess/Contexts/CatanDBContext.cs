using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;
using CatanDataAccess.Domain;
using CatanDataAccess.Helper;

namespace CatanDataAccess.Contexts
{
    public class CatanDBContext : DbContext
    {
        public CatanDBContext() : base(ConnectionStringProvider.GetSafeConnectionString())
        {
            
        }
        public DbSet<Account> Account { get; set; }
        public DbSet<FriendRequest> FriendRequest { get; set; }
        public DbSet<Game> Game { get; set; }
        public DbSet<GuestAccount> GuestAccount { get; set; }
        public DbSet<GuestAccountGame> GuestAccountsGame { get; set; }
        public DbSet<ProfileGame> ProfileGame { get; set; }
        public DbSet<Profile> Profile {  get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<GuestAccountGame>().HasKey(primaryKey => new { primaryKey.GuestAccountId, primaryKey.GameId });

            modelBuilder.Entity<ProfileGame>().HasKey(primaryKey => new { primaryKey.ProfileId, primaryKey.GameId });

            modelBuilder.Entity<Account>().HasRequired(account => account.RelationProfile).WithRequiredPrincipal(profile => profile.RelationAccount) 
                .WillCascadeOnDelete(true);                

            modelBuilder.Entity<FriendRequest>().HasRequired(friendRequest => friendRequest.RelationReceiverProfile).
                WithMany(profile => profile.RelationReceivedFriendRequests).WillCascadeOnDelete(true);

            modelBuilder.Entity<FriendRequest>().HasRequired(friendRequest => friendRequest.RelationSenderProfile).
                WithMany(profile => profile.RelationSentFriendRequests).WillCascadeOnDelete(false);

            modelBuilder.Entity<ProfileGame>().HasRequired(profileGame => profileGame.RelationProfile).WithMany(profile => profile.RelationProfileGames)
                .WillCascadeOnDelete(true);

            modelBuilder.Entity<ProfileGame>().HasRequired(profileGame => profileGame.RelationGame).WithMany(game => game.RelationProfileGames)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<GuestAccountGame>().HasRequired(guestAccountGame => guestAccountGame.RelationGuestAccount)
                .WithMany(guestAccount => guestAccount.RelationGuestAccountGames).WillCascadeOnDelete(true);

            modelBuilder.Entity<GuestAccountGame>().HasRequired(guestAccountsGame => guestAccountsGame.RelationGame).
                WithMany(game => game.RelationGuestAccountGames).WillCascadeOnDelete(true);
        }
    }
}