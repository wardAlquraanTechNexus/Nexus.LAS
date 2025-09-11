using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.CompanyEntities;

[Table("CompaniesBoardMembers")]

public class CompanyBoardMember:BaseEntity
{
    [Required]
    [MaxLength(50)]
    [Column("CompaniesBoardMemberIDC")]
    public string CompaniesBoardMemberIdc { get; set; } = EntityIDCs.CompaniesBoardMemberIDC;
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("CompaniesBoardMemberIDN")]
    public override int Id { get; set; }

    [Column("Companies_IDN")]
    public int CompanyId { get; set; }

    [Required]
    [Column("Person_IDN")]
    public int PersonId { get; set; }

    [Required]
    [Column("BoardMemberPosition")]
    public int Position { get; set; }

    [Column("MemberAppointmentDate")]
    public DateTime AppointmentDate { get; set; }

    [Column("MemberCessationDate")]
    public DateTime? CessationDate { get; set; }

    [Column("BoardMemberActive")]
    public bool IsActive { get; set; }

}
