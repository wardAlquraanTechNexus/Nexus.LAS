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

        [Column("PropertiesTypeOfTitle")]
        public string? PropertyTypeOfTitle { get; set; }

        [Column("PropertiesGrantor")]
        public bool? PropertyGrantor { get; set; }

        [Column("PropertiesGrantorAddress")]
        public string? PropertyGrantorAddress { get; set; }

        [Column("PropertiesGrantorTitleCommencementDate")]
        public DateTime? PropertyGrantorTitleCommencementDate { get; set; }

        [Column("PropertiesGrantorTitleExpiryDate")]
        public DateTime? PropertyGrantorTitleExpiryDate { get; set; }

        [Column("PropertiesGrantorTitleExpiryActiveReminder")]
        public bool? PropertyGrantorTitleExpiryActiveReminder { get; set; }

        [Column("PropertiesGrantorDescription")]
        public string? PropertyGrantorDescription { get; set; }

        [Column("PropertiesLocationCountryIdn")]
        public string? PropertyLocationCountryIdn { get; set; }

        [Column("PropertiesLocationCountry")]
        public string? PropertyLocationCountry { get; set; }

        [Column("PropertiesLocationCityIdn")]
        public string? PropertyLocationCityIdn { get; set; }

        [Column("PropertiesLocationCity")]
        public string? PropertyLocationCity { get; set; }

        [Column("PropertiesLocationAreaIdn")]
        public string? PropertyLocationAreaIdn { get; set; }

        [Column("PropertiesLocationArea")]
        public string? PropertyLocationArea { get; set; }

        [Column("PropertiesLocationDetails")]
        public string? PropertyLocationDetails { get; set; }

        [Column("PropertiesType")]
        public string? PropertyType { get; set; }

        [Column("PropertiesPurpose")]
        public string? PropertyPurpose { get; set; }

        [Column("PropertiesStatus")]
        public string? PropertyStatus { get; set; }

        [Column("Private")]
        public bool Private { get; set; }

        [Column("PropertiesPlot")]
        public string? PropertyPlot { get; set; }

        [Column("FArea")]
        public string? FArea { get; set; }

        [Column("MArea")]
        public string? MArea { get; set; }

        [Column("PropertyFArea")]
        public string? PropertyFArea { get; set; }

        [Column("PropertyMArea")]
        public string? PropertyMArea { get; set; }
    }

}
