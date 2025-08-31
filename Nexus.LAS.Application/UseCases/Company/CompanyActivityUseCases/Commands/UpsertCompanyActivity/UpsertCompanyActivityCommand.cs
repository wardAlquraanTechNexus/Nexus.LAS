namespace Nexus.LAS.Application.UseCases.CompanyActivityUseCases;

public class UpsertCompanyActivityCommand
{
    public int? Id { get; set; }
    public string Activity { get; set; }
    public string? CreatedBy { get; set; }
    public DateTime? CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public int CompaniesIdn { get; set; }
}
