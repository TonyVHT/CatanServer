using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Helpers
{
    public static class GameUtilities
    {
        public const string DOMAIN_GAME_STATUS_INGAME = "INGAME";
        public const string DOMAIN_GAME_STATUS_CANCELLED = "CANCELLED";
        public const string DOMAIN_GAME_STATUS_PREGAME = "PREGAME";
        public const string DOMAIN_GAME_STATUS_POSTGAME = "POSTGAME";
        public static readonly string[] WORDS_DICTIONARY_ANIMALS = { "Dogs", "Cats", "Lions" };
        public const int TIME_LIMIT_TO_DISCONNECT_PLAYERS = 10;
        public const int TIME_LIMIT_TO_DISCONNECT_GAMES = 5;
        public const int NUMBER_OF_PLAYERS_TO_CANCEL_GAME = 0;
        public const int REQUIRED_MAYORITY_DIVISOR_TO_EXPEL = 2;
        public const int MINIMUN_REQUIRRED_VOTES_TO_EXPEL = 1;
        public const int TIME_PING_INTERVAL_SECONDS = 10;
        public const int TIME_MILISECONDS = 1000;
        public const int TIME_MINIMUN_TO_START = 0;
        public const int MINIMUN_PLAYERS_BY_GAME = 1;
        public const int MINIMUN_PLAYERS_TO_START_GAME = 2;
        public const int TIME_TO_START_GAME_COUNTDOWN = 10;
        public const int TIME_LAST_SECOND_TO_START = 1;
        public const int NOT_TURNS_ASSIGNED = -1;
        public const int ONE_TURN = 1;
        public const int TIME_TURN_DURATION = 100;
        public const int NUMBER_OF_TASK_PARALELISM = 1;
        public const int NUMBER_OF_TASKS_CONCURRENCY = 1;
        public const int TIME_SECONDS_TO_UPDATE_PLAYER_LIST = 15;
    }
}
