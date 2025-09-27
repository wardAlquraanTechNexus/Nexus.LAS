using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.LawFirmEntities
{
    public class LawFirmCounsel: BaseEntity
    {
        [Column("LawFirmCounselIDN")]
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public override int Id { get => base.Id; set => base.Id = value; }
        [Column("LawFirmCounselIDC")]
        public string LawFirmCounselIdc { get; set; } = EntityIDCs.LawFirmsCounsels;

        public int LawFirmId { get; set; }
        public string CounselName { get; set; } = null!;
        public int CounselLevel { get; set; }
        public int Rate { get; set; }

    }
}
