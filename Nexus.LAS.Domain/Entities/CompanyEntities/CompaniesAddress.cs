﻿using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.CompanyEntities
{
    [Table("CompaniesAddresses")]

    public class CompaniesAddress : BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesAddressIDC")]
        public string CompaniesAddressIdc { get; set; }
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesAddressIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompaniesIdn { get; set; }

        [Required]
        [Column("AddressPrimary")]
        public bool AddressPrimary { get; set; }

        [Required]
        [MaxLength(50)]
        [Column("AddressLine1")]
        public string AddressLine1 { get; set; }

        [MaxLength(50)]
        [Column("AddressLine2")]
        public string AddressLine2 { get; set; }

        [MaxLength(50)]
        [Column("AddressLine3")]
        public string AddressLine3 { get; set; }

        [MaxLength(50)]
        [Column("POBoxumber")]
        public string PoBoxNumber { get; set; }

        [MaxLength(50)]
        [Column("POBoxCity")]
        public string PoBoxCity { get; set; }

        [MaxLength(50)]
        [Column("POBoxCountry")]
        public string PoBoxCountry { get; set; }
    }
}
