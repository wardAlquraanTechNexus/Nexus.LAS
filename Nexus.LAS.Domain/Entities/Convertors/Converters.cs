using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities
{
    public static class Converters
    {
        public static string? SerializeList(List<int>? list)
            => list == null ? null : JsonSerializer.Serialize(list);

        public static List<int>? DeserializeList(string? json)
            => string.IsNullOrEmpty(json) ? new List<int>() : JsonSerializer.Deserialize<List<int>>(json);
    }
}
