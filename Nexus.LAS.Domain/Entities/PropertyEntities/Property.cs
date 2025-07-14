using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.PropertyEntities
{
    [Table("Properties")]
    public class Property : BaseEntity
    {
        [Column("PropertyIDC", Order = 0)]
        public string PropertyIdc { get; set; } = null!;

        [Key, Column("PropertyIDN", Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]

        public override int Id { get; set; }

        [Column("PropertyCode")]
        public string PropertyCode { get; set; } = null!;

        public string? PropertiesTypeOfTitle { get; set; }
        public bool? PropertiesGrantor { get; set; }
        public string? PropertiesGrantorAddress { get; set; }
        public DateTime? PropertiesGrantorTitleCommencementDate { get; set; }
        public DateTime? PropertiesGrantorTitleExpiryDate { get; set; }
        public bool? PropertiesGrantorTitleExpiryActiveReminder { get; set; }
        public string? PropertiesGrantorDescription { get; set; }

        public string? PropertiesLocationCountryIdn { get; set; }
        public string? PropertiesLocationCountry { get; set; }
        public string? PropertiesLocationCityIdn { get; set; }
        public string? PropertiesLocationCity { get; set; }
        public string? PropertiesLocationAreaIdn { get; set; }
        public string? PropertiesLocationArea { get; set; }
        public string? PropertiesLocationDetails { get; set; }

        public string? PropertiesType { get; set; }
        public string? PropertiesPurpose { get; set; }
        public string? PropertiesStatus { get; set; }

        [Column("PropertyStatus")]
        public string PropertyStatus { get; set; } = null!;

        public bool Private { get; set; }

        public string? PropertiesPlot { get; set; }
        public string? FArea { get; set; }
        public string? MArea { get; set; }
        public string? PropertyFArea { get; set; }
        public string? PropertyMArea { get; set; }
    }

}
