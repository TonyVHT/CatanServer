using CatanDataAccess.Domain;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Repositories.GuestAccountRepositories
{
    public class GuestAccountRepository : Repository<GuestAccount>, IGuestAccountRepository
    {
        public GuestAccountRepository(DbContext dbContext) : base(dbContext)
        {
        }
    }
}
