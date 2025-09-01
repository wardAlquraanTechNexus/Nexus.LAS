namespace Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases;

public class UpsertCompanyShareHolderCommand
{
    public int? Id { get; set; }
    public string RegistersIdc { get; set; } // Person or company
    public int RegistersIdn { get; set; } //List of person or companies
    public long? ShareHolderNumbersOfShares { get; set; }
    public DateTime? ShareHolderDate { get; set; }
    public DateTime? ShareHolderCessationDate { get; set; }
    public bool? ShareHolderActive { get; set; }
    public string? CreatedBy { get; set; }
    public DateTime? CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public int CompaniesIdn { get; set; }
}
