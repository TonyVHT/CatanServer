using CatanDataAccess.Domain;
using CatanDataAccess.Helpers;
using CatanService.DataTransferObject;
using CatanService.DataTransferObject.GamePlayDto;
using CatanService.DataTransferObject.GamePlayDto.Board;
using CatanService.DataTransferObject.GamePlayDto.PlayersMove;
using CatanService.DataTransferObject.PlayerDtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CatanService.Helpers
{
    public static class GameplayRules
    {
        public static bool CanUpgradeToCity(VertexDto vertex, int playerId)
        {
            return vertex.IsOccupied && vertex.OwnerPlayerId == playerId && !vertex.IsCity;
        }

        public static void GenerateVerticesAndEdgesForHexes(List<HexTileDto> hexTiles)
        {
            int vertexIdCounter = 0;
            int edgeIdCounter = 0;

            foreach (var hex in hexTiles)
            {
                GenerateVerticesForHex(hex, ref vertexIdCounter);
                GenerateEdgesForHex(hex, ref edgeIdCounter);
            }
        }

        private static void GenerateVerticesForHex(HexTileDto hex, ref int vertexIdCounter)
        {
            for (int i = 0; i < GameplayUtilities.NUMBER_OF_VERTICES; i++)
            {
                if (hex.Vertices.Count <= i)
                {
                    VertexDto vertex = CreateVertex(vertexIdCounter++, hex.Id);
                    hex.Vertices.Add(vertex);
                }
            }
        }

        private static void GenerateEdgesForHex(HexTileDto hex, ref int edgeIdCounter)
        {
            for (int i = 0; i < GameplayUtilities.NUMBER_OF_EDGES; i++)
            {
                int startVertexIndex = i;
                int endVertexIndex = (i + 1) % GameplayUtilities.NUMBER_OF_VERTICES;

                if (hex.Edges.Count <= i)
                {
                    EdgeDto edge = CreateEdge(edgeIdCounter++, hex.Id, startVertexIndex, endVertexIndex, hex);
                    hex.Edges.Add(edge);
                }
            }
        }

        private static VertexDto CreateVertex(int vertexId, int hexId)
        {
            return new VertexDto
            {
                Id = vertexId,
                ConnectedHexes = new List<int> { hexId }
            };
        }

        private static EdgeDto CreateEdge(int edgeId, int hexId, int startVertexIndex, int endVertexIndex, HexTileDto hex)
        {
            EdgeDto edge = new EdgeDto
            {
                Id = edgeId,
                ConnectedHexes = new List<int> { hexId },
                ConnectedEdges = new List<int>(),
            };

            var startVertex = hex.Vertices[startVertexIndex];
            var endVertex = hex.Vertices[endVertexIndex];

            startVertex.ConnectedEdges.Add(edge.Id);
            endVertex.ConnectedEdges.Add(edge.Id);

            return edge;
        }


        public static void ConnectVerticesWithManualRules(List<HexTileDto> hexTiles)
        {
            Dictionary<int, List<int>> vertexConnections = GameplayUtilities.GET_MAP_HEXTILES();

            foreach (HexTileDto hex in hexTiles)
            {
                foreach (VertexDto vertex in hex.Vertices)
                {
                    if (vertexConnections.ContainsKey(vertex.Id))
                    {
                        List<int> connectedHexIds = vertexConnections[vertex.Id];
                        foreach (var hexId in connectedHexIds)
                        {
                            HexTileDto adjacentHex = hexTiles.FirstOrDefault(hextileInBoard => hextileInBoard.Id == hexId);
                            if (adjacentHex != null && !vertex.ConnectedHexes.Contains(adjacentHex.Id))
                            {
                                vertex.ConnectedHexes.Add(adjacentHex.Id);
                            }
                        }
                    }
                    else
                    {
                        if (!vertex.ConnectedHexes.Contains(hex.Id))
                        {
                            vertex.ConnectedHexes.Add(hex.Id);
                        }
                    }
                }
            }
        }
    }

}