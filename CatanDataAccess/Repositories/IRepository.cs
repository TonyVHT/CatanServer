using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Repositories
{
    public interface IRepository <T> where T : class 
    {
        Task<IEnumerable<T>> GetAllEntitiesAsync();
        Task<T> GetEntityByIdAsync(int id);
        bool AddEntity(T entity);
        Task<bool> DeleteEntityByIdAsync(int id);
        bool UpdateEntity(T entity);
        Task<T> FindEntityByIdAsync(int id);
    }
}
