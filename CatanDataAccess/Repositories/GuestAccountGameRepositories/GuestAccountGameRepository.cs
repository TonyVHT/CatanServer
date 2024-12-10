using CatanDataAccess.Domain;
using CatanDataAccess.Repositories.GuestAccountGameRepositories;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using Serilog;
using System.Threading.Tasks;
using CatanDataAccess.Helpers;

namespace CatanDataAccess.Repositories
{
    public class GuestAccountGameRepository : Repository<GuestAccountGame>, IGuestAccountGameRepository
    {
        public GuestAccountGameRepository(DbContext dbContext) : base(dbContext)
        {
        }

        public int FindGuestAccountIdToBeAdminByGame(Game gameRecord)
        {
            try
            {
                GuestAccountGame nextAdmin = gameRecord.RelationGuestAccountGames.FirstOrDefault(guestAccountGame => guestAccountGame.GuestAccountId != gameRecord.AdminGameId 
                && IsActiveWithinTimeLimite(guestAccountGame.RelationGuestAccount.LastActivity, DateTime.UtcNow, GameUtilities.TIME_LIMIT_TO_DISCONNECT_PLAYERS));

                if(nextAdmin != null)
                {
                    return nextAdmin.GuestAccountId;
                }
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
            return 0;
        }

        public async Task<GuestAccountGame> IsGuestAccountJoinedToGameAsync(int idGuestAccount, int idGame)
        {
            GuestAccountGame guestAccountGame = null;
            try
            {
                guestAccountGame = await dbDomain.
                    FirstOrDefaultAsync(guestAccount => guestAccount.GuestAccountId == idGuestAccount && guestAccount.GameId == idGame);
            }
            catch(ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return guestAccountGame;
        }

        public static bool IsActiveWithinTimeLimite(DateTime? lastActivity, DateTime? newActivity, int timeLimit)
        {
            bool isOnline = false;

            if (lastActivity != null && newActivity != null)
            {
                Double timeDifference = (newActivity.Value - lastActivity.Value).TotalMinutes;

                isOnline = timeDifference < timeLimit;
            }

            return isOnline;
        }


        public async Task<bool> StartGameGuestAccountAsync(int idGame, int idGuestAccount)
        {
            try
            {
                GuestAccountGame guestAccountGame = await dbDomain.
                    FirstOrDefaultAsync(guestAccount => guestAccount.GuestAccountId == idGuestAccount && guestAccount.GameId == idGame);

                if (guestAccountGame != null)
                {
                    guestAccountGame.IsActiveGame = GameplayUtilities.GAMEPLAY_STATUS_START;
                    return true;
                }
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return false;
        }
    }
}
