// UpdateCompanyShareHolderCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Commands.UpdateCompanyShareHolder;

public class UpdateCompanyShareHolderCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int? CompaniesShareHoldersGroupsIdn { get; set; }
    public string RegistersIdc { get; set; } = null!;
    public int RegistersIdn { get; set; }
    public long? ShareHolderNumbersOfShares { get; set; }
    public DateTime? ShareHolderDate { get; set; }
    public DateTime? ShareHolderCessationDate { get; set; }
    public bool? ShareHolderActive { get; set; }
    public int CompaniesIdn { get; set; }
}