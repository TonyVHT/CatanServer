using CatanDataAccess.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Repositories.ProfileGameRepositories
{
    public interface IProfileGameRepository :IRepository<ProfileGame>
    {
        Task<ProfileGame> IsPlayerJoinedToGameAsync(int idProfile, int idGame);
        Task<bool> StartGameProfile(int idGame, int idProfile);
        Task<List<ProfileGame>> GetTenBestPlayers();
        Task<int> GetGlobalPosition(Profile currentPlayer);
        Task<List<ProfileGame>> GetFriendsPositionAsync(List<Profile> listProfileFriends);
        Task<int> GetGamesWonByPlayer(int idProfile);
        Task<int> GetTotalPointsByPlayer(int idProfile);
    }
}
