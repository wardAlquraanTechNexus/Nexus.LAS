namespace Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases;

public class UpsertCompanyChamberOfCommerceCommand
{
    public int? Id { get; set; }
    public string CciNumber { get; set; }
    public DateTime CciIssueDate { get; set; }
    public DateTime? CciExpiryDate { get; set; }
    public bool? CciExpiryActiveReminder { get; set; }
    public string CciUsername { get; set; }
    public string CciPassword { get; set; }
    public string? CreatedBy { get; set; }
    public DateTime? CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public int CompaniesIdn { get; set; }
}
