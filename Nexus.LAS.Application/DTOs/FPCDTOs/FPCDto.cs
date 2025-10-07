using Nexus.LAS.Domain.CommonAttributes;
using Nexus.LAS.Domain.Constants.Enums;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Application.DTOs.FPCDTOs;

public class FPCDto
{
    public int Id { get; set; }
    public string FpcCode { get; set; } = null!;
    public string RegisterIdc { get; set; } = null!;
    public int RegisterIdn { get; set; }
    public CommonStatus FpcStatus { get; set; }
    public bool Private { get; set; }
    [IgnoreOnExport]
    public string CreatedBy { get; set; }
    [IgnoreOnExport]
    public DateTime CreatedAt { get; set; }
    [IgnoreOnExport]
    public string? ModifiedBy { get; set; }
    [IgnoreOnExport]
    public DateTime? ModifiedAt { get; set; }
}