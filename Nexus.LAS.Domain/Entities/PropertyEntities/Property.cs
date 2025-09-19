using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Constants.Enums;
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
        public string PropertyIdc { get; set; } = EntityIDCs.Properties;

        [Key, Column("PropertyIDN", Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]

        public override int Id { get; set; }

        [Column("PropertyCode")]
        public string Code { get; set; } = null!;

        [Column("PropertiesTypeOfTitle")]
        public int TypeOfTitle { get; set; }

        [Column("PropertiesGrantor")]
        public bool? Grantor { get; set; }

        [Column("PropertiesGrantorAddress")]
        public string? GrantorAddress { get; set; }

        [Column("PropertiesGrantorTitleCommencementDate")]
        public DateTime? GrantorTitleCommencementDate { get; set; }

        [Column("PropertiesGrantorTitleExpiryDate")]
        public DateTime? GrantorTitleExpiryDate { get; set; }

        [Column("PropertiesGrantorTitleExpiryActiveReminder")]
        public bool? GrantorTitleExpiryActiveReminder { get; set; }

        [Column("PropertiesGrantorDescription")]
        public string? GrantorDescription { get; set; }

        [Column("PropertiesLocationCountryIdn")]
        public int? LocationCountryId { get; set; }

        
        [Column("PropertiesLocationCityIdn")]
        public int? LocationCityId { get; set; }

        [Column("PropertiesLocationAreaIdn")]
        public int? LocationAreaId { get; set; }

        [Column("PropertiesLocationDetails")]
        public string? LocationDetails { get; set; }

        [Column("PropertiesType")]
        public int? Type { get; set; }

        [Column("PropertiesPurpose")]
        public int? Purpose { get; set; }

        [Column("PropertiesStatus")]
        public string? LegalStatuses { get; set; } // seperator by comma
        public CommonStatus Status { get; set; }

        [Column("Private")]
        public bool Private { get; set; }

        [Column("PropertiesPlot")]
        public string? Plot { get; set; }

        [Column("FArea")]
        public long? PlotFArea { get; set; }

        [Column("MArea")]
        public long? PlotMArea { get; set; }

        [Column("PropertyFArea")]
        public long? PropertyFArea { get; set; }

        [Column("PropertyMArea")]
        public long? PropertyMArea { get; set; }
    }

}
