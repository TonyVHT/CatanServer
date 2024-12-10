using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CatanDataAccess.Domain;

namespace CatanDataAccess.Repositories.GameRepositories
{
    public interface IGameRepository : IRepository<Game>
    {
        Task<Game> FindGameByKeyAccessAsync(string accessKey);
        Task<bool> IsGameAdminByIdAsync(int idProfile, int idGame);
    }
}
