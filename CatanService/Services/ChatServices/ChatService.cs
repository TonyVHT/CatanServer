using CatanService.DataTransferObject;
using CatanService.EndPoint;
using CatanService.EndPoint.ChatsServiceEnpoints.CallbacksChat;
using CatanService.EndPoint.ChatsServiceEnpoints.ChatModels;
using Serilog;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Linq;
using System.ServiceModel;
using System.Threading.Tasks;

namespace CatanService.Services
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single, ConcurrencyMode = ConcurrencyMode.Multiple)]
    public class ChatService : IChatService
    {
        private readonly ConcurrentDictionary<int, ConcurrentBag<ChatPlayer>> gameChatsOnline = new ConcurrentDictionary<int, ConcurrentBag<ChatPlayer>>();

        public ChatService()
        {
        }

        public async Task JoinChatAsync(GameDto gameClientDto, string namePlayer)
        {
            if (gameClientDto?.Id == null || string.IsNullOrEmpty(namePlayer)) return;

            IChatCallback callbackChannelClient = OperationContext.Current.GetCallbackChannel<IChatCallback>();
            ICommunicationObject communicationObjectClient = (ICommunicationObject)callbackChannelClient;

            ChatPlayer chatPlayer = new ChatPlayer
            {
                PlayerName = namePlayer,
                Callback = callbackChannelClient
            };

            gameChatsOnline.AddOrUpdate(gameClientDto.Id.Value,
                new ConcurrentBag<ChatPlayer> { chatPlayer },
                (gameId, players) =>
                {
                    var updatedPlayers = players.Where(player => player.PlayerName != namePlayer).ToList();
                    updatedPlayers.Add(chatPlayer);
                    return new ConcurrentBag<ChatPlayer>(updatedPlayers);
                });

            communicationObjectClient.Faulted += (sender, args) => RemoveDisconnectedPlayer(gameClientDto.Id.Value, chatPlayer);
            communicationObjectClient.Closed += (sender, args) => RemoveDisconnectedPlayer(gameClientDto.Id.Value, chatPlayer);

            await BroadcastMessageAsync(gameClientDto, namePlayer, string.Empty,
                (callback, playerName, message) => Task.Run(() => callback.ReceiveMessageJoinPlayerToChat(playerName)));
        }

        public async Task LeaveChatAsync(GameDto gameClientDto, string namePlayer)
        {
            if (gameClientDto?.Id == null || string.IsNullOrEmpty(namePlayer)) return;

            if (gameChatsOnline.TryGetValue(gameClientDto.Id.Value, out var players))
            {
                ChatPlayer playerToRemove = players.FirstOrDefault(playerInGame => playerInGame.PlayerName == namePlayer);
                if (playerToRemove != null)
                {
                    RemoveDisconnectedPlayer(gameClientDto.Id.Value, playerToRemove);
                }
            }

            await BroadcastMessageAsync(gameClientDto, namePlayer, string.Empty,
                async (callback, playerName, message) =>
                {
                    try
                    {
                        if (callback != null && ((ICommunicationObject)callback).State == CommunicationState.Opened)
                        {
                            await Task.Run(() => callback.ReceiveMessageLeftPlayerToChat(playerName));
                        }
                    }
                    catch (ObjectDisposedException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (CommunicationObjectAbortedException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (CommunicationException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                });
        }

        public async Task SendMessageToChatAsync(GameDto gameClientDto, string namePlayer, string messageToPlayers)
        {
            if (gameClientDto == null || string.IsNullOrEmpty(namePlayer) || string.IsNullOrEmpty(messageToPlayers)) return;

            await BroadcastMessageAsync(gameClientDto, namePlayer, messageToPlayers,
                (callback, playerName, message) => Task.Run(() => callback.ReceiveMessage(playerName, message)));
        }

        private async Task BroadcastMessageAsync(GameDto gameClientDto, string namePlayer, string message, Func<IChatCallback, string, string, Task> sendMessageAction)
        {
            bool isNeedToEliminateDisconnectedPlayers = true;
            if (gameChatsOnline.TryGetValue(gameClientDto.Id.Value, out var players))
            {
                List<ChatPlayer> disconnectedPlayers = new List<ChatPlayer>();

                foreach (ChatPlayer player in players)
                {
                    try
                    {
                        await sendMessageAction(player.Callback, namePlayer, message);
                        isNeedToEliminateDisconnectedPlayers = false;
                    }
                    catch (ObjectDisposedException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (CommunicationObjectAbortedException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (CommunicationException ex)
                    {
                        Log.Error(ex, ex.Source);
                    }
                    catch (Exception ex)
                    {
                        Log.Error(ex, ex.Source);
                    }

                    if (isNeedToEliminateDisconnectedPlayers)
                    {
                        disconnectedPlayers.Add(player);
                    }
                }

                foreach (ChatPlayer player in disconnectedPlayers)
                {
                    RemoveDisconnectedPlayer(gameClientDto.Id.Value, player);
                }
            }
        }


        private void RemoveDisconnectedPlayer(int gameId, ChatPlayer player)
        {
            if (gameChatsOnline.TryGetValue(gameId, out ConcurrentBag<ChatPlayer> players))
            {
                List<ChatPlayer> updatedPlayers = players.Where(playerInGame => playerInGame.PlayerName != player.PlayerName).ToList();
                if (updatedPlayers.Any())
                {
                    gameChatsOnline[gameId] = new ConcurrentBag<ChatPlayer>(updatedPlayers);
                }
                else
                {
                    gameChatsOnline.TryRemove(gameId, out _);
                }
            }
        }
    }

}