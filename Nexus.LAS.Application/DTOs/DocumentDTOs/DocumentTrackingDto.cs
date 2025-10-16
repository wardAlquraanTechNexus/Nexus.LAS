using Nexus.LAS.Domain.CommonAttributes;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Application.DTOs.DocumentDTOs;

public class DocumentTrackingDto
{
    public int Id { get; set; }
    public string DocumentTrackingCode { get; set; }
    public string ReferenceNumber { get; set; }
    public string PersonEnglishName { get; set; }
    public string PersonArabicName { get; set; }
    public string PersonShortName { get; set; }
    public int PersonId { get; set; }
    public string RegisterIdc { get; set; }
    public int RegisterIdn { get; set; }
    public string Description { get; set; }
    public string RegisterCode { get; set; }
    public string? ActionType { get; set; }
    [IgnoreOnExport]
    public string CreatedBy { get; set; }
    [IgnoreOnExport]
    public DateTime CreatedAt { get; set; }
    [IgnoreOnExport]
    public string? ModifiedBy { get; set; }
    [IgnoreOnExport]
    public DateTime? ModifiedAt { get; set; }
}