using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Application.DTOs.FPCDTOs;

public class FPCODDto
{
    public int Id { get; set; }
    public int FPCIdn { get; set; }
    public int DocType { get; set; }
    public string? Description { get; set; }
    public DateTime? LastActionDate { get; set; }
    public int? LastActionType { get; set; }
    public string? LastActionDescription { get; set; }
}