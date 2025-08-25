namespace Nexus.LAS.Application.DTOs.CompanyChamberOfCommerceDTOs;

public class CompanyChamberOfCommerceDto
{
    public int Id { get; set; }
    public int CompanyIdn { get; set; }
    public string CciNumber { get; set; }
    public DateTime CciIssueDate { get; set; }
    public DateTime? CciExpiryDate { get; set; }
    public bool CciExpiryActiveReminder { get; set; }
    public string CciUsername { get; set; }
    public string CciPassword { get; set; }
}
