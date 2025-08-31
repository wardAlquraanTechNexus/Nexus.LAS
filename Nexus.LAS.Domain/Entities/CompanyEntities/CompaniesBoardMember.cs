using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.CompanyEntities;

[Table("CompaniesBoardMembers")]

public class CompaniesBoardMember:BaseEntity
{
    [Required]
    [MaxLength(50)]
    [Column("CompaniesBoardMemberIDC")]
    public string CompaniesBoardMemberIdc { get; set; }
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("CompaniesBoardMemberIDN")]
    public override int Id { get; set; }

    [Column("CompaniesBoards_IDN")]
    public int? CompaniesBoardsIdn { get; set; }

    [Required]
    [Column("Person_IDN")]
    public int PersonId { get; set; }

    [Required]
    [MaxLength(50)]
    [Column("BoardMemberPosition")]
    public string BoardMemberPosition { get; set; }

    [Column("MemberAppointmentDate")]
    public DateTime? MemberAppointmentDate { get; set; }

    [Column("MemberCessationDate")]
    public DateTime? MemberCessationDate { get; set; }

    [Column("BoardMemberActive")]
    public bool? BoardMemberActive { get; set; }


    [Required]
    [Column("Companies_IDN")]
    public int CompanyId { get; set; }
}
