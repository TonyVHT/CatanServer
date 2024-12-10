using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Services
{
    public interface ITelegramService
    {
        Task SendMessageAsync(string phoneNumber, string message);
    }
}
