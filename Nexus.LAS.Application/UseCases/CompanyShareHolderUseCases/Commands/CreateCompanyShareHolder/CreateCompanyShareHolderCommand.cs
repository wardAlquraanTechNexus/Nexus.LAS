// CreateCompanyShareHolderCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System.ComponentModel.DataAnnotations;

namespace Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Commands.CreateCompanyShareHolder;

public class CreateCompanyShareHolderCommand : CreateBaseCommand
{
    public int Id { get; set; }

    public int? ShareHoldersGroupsId { get; set; }

    public string RegistersIdc { get; set; } = string.Empty;
    [Required]
    public int RegistersIdn { get; set; }

    public long? NumbersOfShares { get; set; }

    public DateTime? ShareHolderDate { get; set; }

    public DateTime? CessationDate { get; set; }

    public bool? ShareHolderActive { get; set; }

    public int CompanyId { get; set; }
}