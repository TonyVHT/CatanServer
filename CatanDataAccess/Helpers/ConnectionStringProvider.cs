using Serilog;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Helper
{
    public static class ConnectionStringProvider
    {
        public static string GetConnectionString()
        {
            SqlConnectionStringBuilder stringConnection = null;
            try
            {
                stringConnection = new SqlConnectionStringBuilder();
                stringConnection.DataSource = GetEnvironmentVariable("CATANDB_SERVER");
                stringConnection.InitialCatalog = GetEnvironmentVariable("CATANDB_NAME");
                stringConnection.UserID = GetEnvironmentVariable("CATANDB_USER");
                stringConnection.Password = GetEnvironmentVariable("CATANDB_PASSWORD");
                stringConnection.ConnectTimeout = 10;
                stringConnection.MultipleActiveResultSets = true;
            }
            catch(ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (FormatException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch(Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return stringConnection?.ConnectionString ?? string.Empty;
        }
        public static string GetSafeConnectionString()
        {
            try
            {
                return GetConnectionString();
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (FormatException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return string.Empty;

        }

        public static string GetEnvironmentVariable(string variableName)
        {
            string environmentValue = Environment.GetEnvironmentVariable(variableName);
            if (environmentValue == null)
            {
                return string.Empty;
            }
            return environmentValue;
        }
    }
}
