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
    [Table("CompaniesShareHolders")]

    public class CompaniesShareHolder:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesShareHolderIDC")]
        public string CompaniesShareHolderIdc { get; set; }
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesShareHolderIDN")]
        public override int Id { get; set; }

        [Column("CompaniesShareHoldersGroups_IDN")]
        public int? CompaniesShareHoldersGroupsIdn { get; set; }

        [Required]
        [MaxLength(50)]
        [Column("Registers_IDC")]
        public string RegistersIdc { get; set; }

        [Required]
        [Column("Registers_IDN")]
        public int RegistersIdn { get; set; }

        [Column("ShareHolderNumbersOfShares")]
        public long? ShareHolderNumbersOfShares { get; set; }

        [Column("ShareHolderDate")]
        public DateTime? ShareHolderDate { get; set; }

        [Column("ShareHolderActive")]
        public bool? ShareHolderActive { get; set; }
    }
}
