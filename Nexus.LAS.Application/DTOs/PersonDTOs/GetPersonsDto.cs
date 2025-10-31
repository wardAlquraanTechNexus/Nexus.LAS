using Nexus.LAS.Domain.CommonAttributes;
using Nexus.LAS.Domain.Constants.Enums;

namespace Nexus.LAS.Application.DTOs.PersonDTOs;

public class GetPersonsDto
{
    public int Id { get; set; }
    public string? PersonIdc { get; set; }
    public string? PersonCode { get; set; }
    public string? PersonEnglishName { get; set; }
    public string? PersonArabicName { get; set; }
    public string? PersonShortName { get; set; }
    public CommonStatus PersonStatus { get; set; }
    public string FPCCode { get; set; }
    public bool Private { get; set; }
    public DateTime? DateOfBirth { get; set; }
    public string? Nationality
    {
        get => _nationality;
        set
        {
            _nationality = value;
            if (string.IsNullOrWhiteSpace(value))
            {
                NationalityIds = new();
            }
            else
            {
                NationalityIds = value.Split(',').Select(idStr => int.Parse(idStr.Trim())).ToList();
            }
        }
    }
    private string? _nationality;
    public List<int>? NationalityIds { get; set; }

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
