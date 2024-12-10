using Serilog;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Twilio.TwiML.Voice;

namespace CatanDataAccess.Repositories
{
    public class Repository<T> : IRepository<T> where T : class
    {
        protected readonly DbContext dbContext;
        protected readonly DbSet<T> dbDomain;

        public Repository(DbContext dbContext)
        {
            this.dbContext = dbContext;
            this.dbDomain = dbContext.Set<T>();
        }

        public bool AddEntity(T entity)
        {
            bool isSuccessAdd = false;
            try
            {
                dbDomain.Add(entity);
                isSuccessAdd = true;
            }
            catch (DbEntityValidationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (DbUpdateException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(Exception ex) 
            {
                Log.Error(ex, ex.Source);
            }
            return isSuccessAdd;
        }

        public async Task<bool> DeleteEntityByIdAsync(int id)
        {
            bool isSuccessfulDelete = false;
            try
            {
                T entity = await dbDomain.FindAsync(id);
                if (entity != null)
                {
                    dbDomain.Remove(entity);
                    isSuccessfulDelete = true;
                }
            }
            catch (DbUpdateException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
            return isSuccessfulDelete;
        }

        public async Task<T> FindEntityByIdAsync(int id)
        {
            T entity = null;
            try
            {
                entity = await dbContext.Set<T>().FindAsync(id);

                if (entity != null)
                {
                    await dbContext.Entry(entity).ReloadAsync();
                }
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
            return entity;
        }
        public async Task<IEnumerable<T>> GetAllEntitiesAsync()
        {
            IEnumerable<T> entities = null;
            try
            {
                entities = await dbDomain.ToListAsync();
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
            return entities;
        }

        public async Task<T> GetEntityByIdAsync(int id)
        {
            T entity = null;
            try
            {
                entity = await dbDomain.FindAsync(id);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
            return entity;
        }

        public bool UpdateEntity(T entity)
        {
            bool isSuccessfulUpdate = false;    
            try
            {
                dbContext.Entry(entity).State = EntityState.Modified;
                isSuccessfulUpdate = true;
            }
            catch (DbUpdateException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
            return isSuccessfulUpdate;
        }
    }
}
