namespace Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases;

public class UpsertCompanyPersonInChargeCommand
{
    public int? Id { get; set; }
    public int PersonsIdn { get; set; }
    public string Designation { get; set; }
    public string AuthorityRule { get; set; }//Jointly, Single
    public string Notes { get; set; }
    public DateTime? PersonInChargeDate { get; set; }
    public DateTime? CessationDate { get; set; }
    public bool? PersonInChargeActive { get; set; }
    public string? CreatedBy { get; set; }
    public DateTime? CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public int CompaniesIdn { get; set; }
}
