using Nexus.LAS.Domain.CommonAttributes;
using Nexus.LAS.Domain.Constants.Enums;

namespace Nexus.LAS.Application.DTOs.PersonDTOs;

public class PersonDto
{
    [IgnoreOnExport]
    public int Id { get; set; }
    [IgnoreOnExport]
    public string? PersonIdc { get; set; }
    [ExcelColumnName("Code")]
    public string? PersonCode { get; set; }
    [ExcelColumnName("EnglishName")]
    public string? PersonEnglishName { get; set; }
    [ExcelColumnName("ArabicName")]
    public string? PersonArabicName { get; set; }
    [ExcelColumnName("ShortName")]
    public string? PersonShortName { get; set; }
    [ExcelColumnName("Status")]
    public CommonStatus PersonStatus { get; set; }
    [IgnoreOnExport]
    public string FPCCode { get; set; }
    public bool Private { get; set; }
    [IgnoreOnExport]
    public string? FileName { get; set; }
    [IgnoreOnExport]
    public string? ContentType { get; set; }
    [IgnoreOnExport]
    public byte[]? PersonImage { get; set; }
    [IgnoreOnExport]
    public int? CompanyId { get; set; }
    public DateTime? DateOfBirth { get; set; }
    public int? Nationality { get; set; }

    // Auditing fields
    [IgnoreOnExport]
    public string? CreatedBy { get; set; }
    [IgnoreOnExport]
    public DateTime CreatedAt { get; set; }
    [IgnoreOnExport]
    public string? ModifiedBy { get; set; }
    [IgnoreOnExport]
    public DateTime? ModifiedAt { get; set; }
}
