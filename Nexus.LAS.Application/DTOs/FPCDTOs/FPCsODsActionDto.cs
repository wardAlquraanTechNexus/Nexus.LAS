using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Application.DTOs.FPCDTOs;

public class FPCODActionDto
{
    public int Id { get; set; }
    public int FPCOdIdn { get; set; }
    public int ActionType { get; set; }
    public DateTime ActionDate { get; set; }
    public string? ActionDescription { get; set; }
}