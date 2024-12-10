using CatanDataAccess.Domain;
using CatanDataAccess.Helpers;
using Serilog;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Twilio.Jwt.AccessToken;

namespace CatanDataAccess.Repositories.ProfileGameRepositories
{
    public class ProfileGameRepository : Repository<ProfileGame>, IProfileGameRepository
    {
        public ProfileGameRepository(DbContext dbContext) :base(dbContext)
        {

        }
        public async Task<ProfileGame> IsPlayerJoinedToGameAsync(int idProfile, int idGame)
        {
            ProfileGame profilegameRecord = null;
            try
            {
                profilegameRecord = await dbDomain.FirstOrDefaultAsync(profileGame => profileGame.ProfileId == idProfile 
                && profileGame.GameId == idGame);
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);

            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return profilegameRecord;
        }

        public async Task<bool> StartGameProfile(int idGame, int idProfile)
        {
            bool isSuccessChange = false;

            try
            {
                ProfileGame profilegameRecord = await dbDomain.FirstOrDefaultAsync(profileGame => profileGame.ProfileId == idProfile
                && profileGame.GameId == idGame);

                if (profilegameRecord != null)
                {
                    profilegameRecord.IsActiveGame = GameplayUtilities.GAMEPLAY_STATUS_START;
                }

            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);

            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return isSuccessChange;
        }

        public async Task<List<ProfileGame>> GetTenBestPlayers()
        {
            List<ProfileGame> profileGameRecord = null;
            try
            {
                profileGameRecord = await dbDomain
                    .Where(profileGame => profileGame.Points >= GameplayUtilities.WIN_POINTS_TO_WIN)
                    .GroupBy(profileGame => profileGame.ProfileId)
                    .Select(group => group.FirstOrDefault())
                    .OrderByDescending(profileGame => profileGame.Points)
                    .Take(GameplayUtilities.WIN_POINTS_TO_WIN)
                    .ToListAsync();

                foreach (ProfileGame profileGame in profileGameRecord)
                {
                    Console.WriteLine(profileGame.ProfileId);
                }
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
            return profileGameRecord;
        }

        public async Task<int> GetGlobalPosition(Profile currentPlayer)
        {
            int globalPosition = -1;

            try
            {
                if (currentPlayer != null)
                {
                    int gamesWonByCurrentPlayer = await dbDomain
                        .Where(profilegame => profilegame.ProfileId == currentPlayer.Id && profilegame.Points >= GameplayUtilities.WIN_POINTS_TO_WIN)
                        .CountAsync();

                    if (gamesWonByCurrentPlayer == 0)
                    {
                        return -1;
                    }

                    var playersWithGamesWon = await dbDomain
                        .Where(profilegame => profilegame.Points >= GameplayUtilities.WIN_POINTS_TO_WIN)
                        .GroupBy(profilegame => profilegame.ProfileId)
                        .Select(group => new
                        {
                            ProfileId = group.Key,
                            GamesWon = group.Count()
                        })
                        .OrderByDescending(player => player.GamesWon)
                        .ToListAsync();

                    var playerPosition = playersWithGamesWon
                        .Select((player, index) => new { player.ProfileId, Position = index + 1 })
                        .FirstOrDefault(player => player.ProfileId == currentPlayer.Id);

                    if (playerPosition != null)
                    {
                        globalPosition = playerPosition.Position;
                    }
                    else
                    {
                        globalPosition = -1;
                    }
                }
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return globalPosition;
        }

        public async Task<List<ProfileGame>> GetFriendsPositionAsync(List<Profile> listProfileFriends)
        {
            List<ProfileGame> friendsAndSelfPositions = new List<ProfileGame>();

            try
            {
                if (listProfileFriends.Any())
                {
                    List<int> friendIds = listProfileFriends.Select(friend => friend.Id).ToList();

                    List<ProfileGame> profileGames = await dbDomain.Where(profileGame => friendIds.Contains(profileGame.ProfileId)).ToListAsync();

                    var friendsWithWins = await dbDomain
                        .Where(profileGame => friendIds.Contains(profileGame.ProfileId))
                        .GroupBy(profileGame => profileGame.ProfileId)  
                        .Select(group => new
                        {
                            ProfileId = group.Key,
                            GamesWon = group.Count(pg => pg.Points >= GameplayUtilities.WIN_POINTS_TO_WIN) 
                        }).ToListAsync();

                    friendsAndSelfPositions = profileGames
                    .Select(profileGame =>
                    {
                        var gamesWon = friendsWithWins.FirstOrDefault(f => f.ProfileId == profileGame.ProfileId)?.GamesWon ?? 0;
                        return new { profileGame, gamesWon };
                    })
                    .OrderByDescending(f => f.gamesWon).ThenByDescending(f => f.profileGame.Points).GroupBy(f => f.profileGame.ProfileId).
                     Select(g => g.First().profileGame).ToList();

                }
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return friendsAndSelfPositions;
        }


        public async Task<int> GetGamesWonByPlayer(int idProfile)
        {
            int gamesWon = 0;
            try
            {
                gamesWon = await dbDomain
                    .Where(profileGame => profileGame.ProfileId == idProfile && profileGame.Points >= GameplayUtilities.WIN_POINTS_TO_WIN)
                    .CountAsync();
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }
            return gamesWon;
        }

        public async Task<int> GetTotalPointsByPlayer(int idProfile)
        {
            int totalPoints = 0;
            try
            {
                totalPoints = await dbDomain
                    .Where(profileGame => profileGame.ProfileId == idProfile && profileGame.Points >= GameplayUtilities.WIN_POINTS_TO_WIN)
                    .SumAsync(profileGame => (int?)profileGame.Points) ?? 0;
            }
            catch (ArgumentNullException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (InvalidOperationException ex)
            {
                Log.Error(ex, ex.Source);
            }
            catch (Exception ex)
            {
                Log.Error(ex, ex.Source);
            }

            return totalPoints;
        }

    }
}
