using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Application.DTOs.FPCDTOs;

public class FPCODDto
{
    public int Id { get; set; }
    public int FPCIdn { get; set; }
    public string DocType { get; set; } = null!;
    public string? Description { get; set; }
}