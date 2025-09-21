using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Application.DTOs.PropertyDTOs;

public class PropertyDocumentDto
{
    public int Id { get; set; }
    public int? PropertyId { get; set; }
    public int? Type { get; set; }
    public string? PlaceOfIssue { get; set; }
    public DateTime? IssueDate { get; set; }
    public DateTime? DocumentExpiryDate { get; set; }
    public bool? ActiveReminder { get; set; }
    public string? Description { get; set; }
    public string? FileName { get; set; }
    public string? ContentType { get; set; }
    public byte[]? DataFile { get; set; }
}