using Nexus.LAS.Domain.Constants.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs.PropertyDTOs
{
    public class SharedPropertyDTO
    {
        public string Code { get; set; }
        public int? LocationCountryId { get; set; }
        public int? LocationCityId { get; set; }
        public int? LocationAreaId { get; set; }
        public int? Relation { get; set; }
        public int TypeOfTitle { get; set; }
        public int? Type { get; set; }
        public DateTime? OwnStartDate { get; set; }
        public bool? OwnActive { get; set; }

    }
}
