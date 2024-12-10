using CatanDataAccess.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Repositories.GuestAccountGameRepositories
{
    public interface IGuestAccountGameRepository : IRepository<GuestAccountGame>
    {
        Task<GuestAccountGame> IsGuestAccountJoinedToGameAsync(int idGuestAccount, int idGame);
        int FindGuestAccountIdToBeAdminByGame(Game gameRecord);
        Task<bool> StartGameGuestAccountAsync(int idGame, int idGuestAccount);
    }
}
