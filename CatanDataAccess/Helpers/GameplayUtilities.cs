using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanDataAccess.Helpers
{
    public static class GameplayUtilities
    {
        public const string GAMEPLAY_STATUS_START = "START";
        public const int TIME_TO_START_GAME = 60;
        public const int DICE_NUMBER_FISRT_LIMIT = 1;
        public const int DICE_NUMBER_END_LIMIT = 7;
        public const int INT_BEST_PLAYERS_NUMBER = 16;
        public const int HEXTILE_INITIAL_ID = 0;
        public const int NUMBER_OF_EDGES = 6;
        public const int NUMBER_OF_VERTICES = 6;
        public const string RESOURCE_LUNAR_STONE = "Lunar Stone";
        public const string RESOURCE_TRITONIUM = "Tritonium";
        public const string RESOURCE_ALPHA_NANOFIBERS = "Alpha Nanofibers";
        public const string RESOURCE_EPSILON_BIOMASS = "Epsilon Biomass";
        public const string RESOURCE_GRX_810 = "GRX-810";
        public const int RESOURCES_INITIAL_QUANTITI = 0;
        public const int RESOURCE_BASE_AMOUNT = 1;
        public const int RESOURCE_CITY_MULTIPLIER = 2;
        public const int ROAD_INITIAL_LENGTH = 1;
        public const int ROAD_START_LONGEST_ROAD_LENGTH = 0;
        public const int EDGE_NEXT_EDGE_SUM = 1;
        public const int ROAD_EXTENSION_LENGTH = 1;
        public const int VISITED_EDGE_LENGTH = 0;
        public const string PIECE_GAMEPLAY_SETTLEMEN = "Settlement";
        public const string PIECE_GAMEPLAY_ROAD = "Road";
        public const string PIECE_GAMEPLAY_CITY = "City";
        public const int WIN_POINTS_TO_WIN = 10;
        public const int TIME_PREVIOUS_TO_END_GAME = 10000;
        public const int RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS = 3;
        public const int RESOURCES_REWARD = 1;
        public const int RESOURCES_NO_REWARD = 0;
        public const int RESOURCE_REWARD_IS_CITY = 2;
        public const int RESOURCES_PRICE_CITY_LUNAR_STONE = 2;
        public const int RESOURCES_PRICE_CITY_BIOMASS = 2;
        public const int RESOURCES_ONE_RESOURCE = 1;
        public const int POINT_CITY = 4;
        public const int POINT_SETTLEMENT = 3;
        public const int POINT_ROAD = 2;
        public static readonly string[] RESOURCES_GAME =
        {
            "Lunar Stone",
            "Tritonium",
            "Alpha Nanofibers",
            "Epsilon Biomass",
            "GRX-810"
        };
        public static readonly int[] DICE_VALUES =
        {
            2, 3, 4, 5, 6, 8, 9, 10, 11, 12
        };

        public static readonly int[][] HEX_TILE_LAYOUT = new int[][]
        {
            new int[] { 0, 1, 2 },
            new int[] { 3, 4, 5, 6 },
            new int[] { 7, 8, 9, 10, 11 },
            new int[] { 12, 13, 14, 15 },
            new int[] { 16, 17, 18 }
        };
        public static Dictionary<int, List<int>> GET_MAP_HEXTILES()
        {
            Dictionary<int, List<int>> mapHexTiles = new Dictionary<int, List<int>>
            {
                { 2, new List<int> { 1 } },
                { 3, new List<int> { 3 } },
                { 4, new List<int> { 1, 4 } },
                { 8, new List<int> { 2 } },
                { 10, new List<int> { 2, 5 } },
                { 16, new List<int> { 6 } },
                { 20, new List<int> { 0, 4 } },
                { 21, new List<int> { 7 } },
                { 22, new List<int> { 4, 8 } },
                { 28, new List<int> { 5, 9 } },
                { 32, new List<int> { 2, 6 } },
                { 34, new List<int> { 6, 10 } },
                { 40, new List<int> { 11 } },
                { 44, new List<int> { 3 } },
                { 46, new List<int> { 8, 12 } },
                { 50, new List<int> { 4, 9 } },
                { 52, new List<int> { 9, 13 } },
                { 56, new List<int> { 5, 9, 10 } },
                { 58, new List<int> { 10, 14 } },
                { 62, new List<int> { 6, 11 } },
                { 64, new List<int> { 11, 15 } },
                { 73, new List<int> { 7 } },
                { 74, new List<int> { 13, 8 } },
                { 76, new List<int> { 13, 16 } },
                { 80, new List<int> { 14, 9 } },
                { 82, new List<int> { 14, 17 } },
                { 86, new List<int> { 15, 10 } },
                { 88, new List<int> { 15, 18 } },
                { 92, new List<int> { 11 } },
                { 97, new List<int> { 12 } },
                { 98, new List<int> { 13, 17 } },
                { 100, new List<int> { 17 } },
                { 104, new List<int> { 18, 14 } },
                { 106, new List<int> { 18 } },
                { 110, new List<int> { 15 } }
            };

            return mapHexTiles;
        }
    }
}
