using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CatanDataAccess.Domain;
using CatanDataAccess.Helpers;
using CatanDataAccess.Repositories.GameRepositories;
using Serilog;

namespace CatanDataAccess.Repositories
{
    public class GameRepository : Repository<Game>, IGameRepository
    {
        public GameRepository(DbContext dbContext) : base(dbContext) 
        { }

        public async Task<Game> FindGameByKeyAccessAsync(string accessKey)
        {
            Game gameRecord = null;
            try
            {
                gameRecord = await dbDomain.FirstOrDefaultAsync(game => game.AccessKey == accessKey && game.Status == GameUtilities.DOMAIN_GAME_STATUS_PREGAME) ;
            }catch(ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return gameRecord;
        }

        public async Task<bool> IsGameAdminByIdAsync(int idProfile, int idGame)
        {
            bool isGameAdmin = false;

            try
            {
                isGameAdmin = await dbDomain.FirstOrDefaultAsync(game => game.Id == idGame && game.AdminGameId == idProfile) != null;
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

            return isGameAdmin;
        }
    }
}
