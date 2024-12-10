using CatanService.DataTransferObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.EndPoint.GameEndPoints.GameModels
{
    public class ConnectedPlayer
    {
        public ConnectedPlayer(ProfileDto profileClientDto, IGameCallback gameCallback, GuestAccountDto guestAccountClientDto)
        {
            this.profileClientDto = profileClientDto;
            this.gameCallback = gameCallback;
            this.guestAccountDto = guestAccountClientDto;
            this.votesReceived = new HashSet<int>();
        }
        public ConnectedPlayer(ProfileDto profileClientDto, IGameCallback gameCallback)
        {
            this.profileClientDto = profileClientDto;
            this.gameCallback = gameCallback;
            this.votesReceived = new HashSet<int>();
        }
        public ConnectedPlayer(IGameCallback gameCallback, GuestAccountDto guestAccountClientDto)
        {
            this.gameCallback = gameCallback;
            this.guestAccountDto = guestAccountClientDto;
            this.votesReceived = new HashSet<int>();
        }
        public ProfileDto profileClientDto { get; set; }
        public int Points { get; set; } = 0;
        public DateTime JoinedAt { get; set; } = DateTime.UtcNow;
        public GuestAccountDto guestAccountDto { get; set; }
        public IGameCallback gameCallback { get; set; }
        public HashSet<int> votesReceived { get; set; }
        public bool IsReadyToPlay { get; set; } = false;
        public bool AddVote(int voterId)
        {
            Console.WriteLine(votesReceived.Count);
            return votesReceived.Add(voterId); 
        }
    }
}
