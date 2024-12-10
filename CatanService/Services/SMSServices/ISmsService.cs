using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Services
{
    public interface ISmsService
    {
        Task SendSmsAsync(string phoneNumber, string messageBody);
    }
}
