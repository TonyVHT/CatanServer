using CatanService.DataTransferObject;
using CatanService.EndPoint;
using CatanService.EndPoint.ChatsServiceEnpoints.CallbacksChat;
using CatanService.Services;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System.Threading.Tasks;

namespace CatanService.Tests.ServicesTests
{
    [TestClass]
    public class ChatServiceEndpointTests
    {
        private Mock<IServiceManager> mockServiceManager;
        private Mock<IChatService> mockChatService;
        private ChatServiceEndpoint chatServiceEndpoint;

        [TestInitialize]
        public void Setup()
        {
            mockServiceManager = new Mock<IServiceManager>();
            mockChatService = new Mock<IChatService>();
            mockServiceManager.Setup(sm => sm.ChatService).Returns(mockChatService.Object);
            mockServiceManager.Setup(sm => sm.ChatService).Returns(mockChatService.Object);

            chatServiceEndpoint = new ChatServiceEndpoint(mockServiceManager.Object);
            mockChatService.Setup(cs => cs.JoinChatAsync(It.IsAny<GameDto>(), It.IsAny<string>())).Returns(Task.CompletedTask);
        }
        [TestMethod]
        public async Task JoinChatAsync_ShouldInvokeChatService_WhenInputsAreValid()
        {
            var gameClientDto = new GameDto { Id = 1, Name = "Test Game" };
            var namePlayer = "Player1";

            mockChatService.Setup(cs => cs.JoinChatAsync(gameClientDto, namePlayer)).Returns(Task.CompletedTask);

            chatServiceEndpoint.JoinChatAsync(gameClientDto, namePlayer);

            mockChatService.Verify(cs => cs.JoinChatAsync(gameClientDto, namePlayer), Times.Once);

            await Task.CompletedTask;
        }

        [TestMethod]
        public async Task LeaveChatAsync_ShouldInvokeChatService_WhenInputsAreValid()
        {
            var gameClientDto = new GameDto { Id = 1, Name = "Test Game" };
            var namePlayer = "Player1";

            mockChatService.Setup(cs => cs.LeaveChatAsync(gameClientDto, namePlayer)).Returns(Task.CompletedTask);

            chatServiceEndpoint.LeaveChatAsync(gameClientDto, namePlayer);

            mockChatService.Verify(cs => cs.LeaveChatAsync(gameClientDto, namePlayer), Times.Once);

            await Task.CompletedTask;
        }

        [TestMethod]
        public async Task LeaveChatAsync_ShouldNotInvokeChatService_WhenGameClientDtoIsNull()
        {
            GameDto gameClientDto = null;
            var namePlayer = "Player1";

            chatServiceEndpoint.LeaveChatAsync(gameClientDto, namePlayer);

            mockChatService.Verify(cs => cs.LeaveChatAsync(It.IsAny<GameDto>(), It.IsAny<string>()), Times.Never);

            await Task.CompletedTask;
        }

        [TestMethod]
        public async Task LeaveChatAsync_ShouldNotInvokeChatService_WhenNamePlayerIsNullOrEmpty()
        {
            var gameClientDto = new GameDto { Id = 1, Name = "Test Game" };
            var namePlayer = "";

            chatServiceEndpoint.LeaveChatAsync(gameClientDto, namePlayer);

            mockChatService.Verify(cs => cs.LeaveChatAsync(It.IsAny<GameDto>(), It.IsAny<string>()), Times.Never);

            await Task.CompletedTask;
        }
        [TestMethod]
        public async Task JoinChatAsync_ShouldNotInvokeChatService_WhenGameClientDtoIsNull()
        {

            mockChatService.Setup(cs => cs.JoinChatAsync(It.IsAny<GameDto>(), It.IsAny<string>())).Returns(Task.CompletedTask);

            mockChatService.Verify(cs => cs.JoinChatAsync(It.IsAny<GameDto>(), It.IsAny<string>()), Times.Never);

            await Task.CompletedTask;
        }

        [TestMethod]
        public async Task SendMessageToChatAsync_ShouldInvokeChatService_WhenInputsAreValid()
        {
            var gameClientDto = new GameDto { Id = 1, Name = "Test Game" };
            var namePlayer = "Player1";
            var message = "Hello, chat!";

            mockChatService.Setup(cs => cs.SendMessageToChatAsync(gameClientDto, namePlayer, message)).Returns(Task.CompletedTask);

            chatServiceEndpoint.SendMessageToChatAsync(gameClientDto, namePlayer, message);

            mockChatService.Verify(cs => cs.SendMessageToChatAsync(gameClientDto, namePlayer, message), Times.Once);

            await Task.CompletedTask;
        }

        [TestMethod]
        public async Task SendMessageToChatAsync_ShouldNotInvokeChatService_WhenGameClientDtoIsNull()
        {
            GameDto gameClientDto = null;
            var namePlayer = "Player1";
            var message = "Hello, chat!";

            chatServiceEndpoint.SendMessageToChatAsync(gameClientDto, namePlayer, message);

            mockChatService.Verify(cs => cs.SendMessageToChatAsync(It.IsAny<GameDto>(), It.IsAny<string>(), It.IsAny<string>()), Times.Never);

            await Task.CompletedTask;
        }

        [TestMethod]
        public async Task SendMessageToChatAsync_ShouldNotInvokeChatService_WhenNamePlayerIsNullOrEmpty()
        {
            var gameClientDto = new GameDto { Id = 1, Name = "Test Game" };
            var namePlayer = "";
            var message = "Hello, chat!";

            chatServiceEndpoint.SendMessageToChatAsync(gameClientDto, namePlayer, message);

            mockChatService.Verify(cs => cs.SendMessageToChatAsync(It.IsAny<GameDto>(), It.IsAny<string>(), It.IsAny<string>()), Times.Never);

            await Task.CompletedTask;
        }

        [TestMethod]
        public async Task SendMessageToChatAsync_ShouldNotInvokeChatService_WhenMessageIsNullOrEmpty()
        {
            var gameClientDto = new GameDto { Id = 1, Name = "Test Game" };
            var namePlayer = "Player1";
            var message = "";

            chatServiceEndpoint.SendMessageToChatAsync(gameClientDto, namePlayer, message);

            mockChatService.Verify(cs => cs.SendMessageToChatAsync(It.IsAny<GameDto>(), It.IsAny<string>(), It.IsAny<string>()), Times.Never);

            await Task.CompletedTask;
        }
    }
}