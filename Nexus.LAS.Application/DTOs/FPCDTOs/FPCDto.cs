using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Application.DTOs.FPCDTOs;

public class FPCDto
{
    public int Id { get; set; }
    public string FpcCode { get; set; } = null!;
    public string RegisterIdc { get; set; } = null!;
    public int RegisterIdn { get; set; }
    public string FpcStatus { get; set; } = null!;
    public bool Private { get; set; }
}