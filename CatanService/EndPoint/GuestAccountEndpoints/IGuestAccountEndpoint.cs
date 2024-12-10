using CatanService.DataTransferObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.EndPoint
{
    /// <summary>
    /// Defines the contract for operations related to guest accounts.
    /// </summary>
    [ServiceContract]
    public interface IGuestAccountEndpoint
    {
        /// <summary>
        /// Creates a new guest account in the system.
        /// </summary>
        /// <param name="preferredLanguage">The preferred language for the guest account's notifications or messages.</param>
        /// <returns>A result object containing details about the created guest account, including success status and data.</returns>
        [OperationContract]
        Task<OperationResultGuestAccountDto> CreateGuestAccount(string preferredLanguage);
    }

}
