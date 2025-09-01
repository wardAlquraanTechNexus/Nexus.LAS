// UpdateCompanyShareHolderCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System.ComponentModel.DataAnnotations;

namespace Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Commands.UpdateCompanyShareHolder;

public class UpdateCompanyShareHolderCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int? ShareHoldersGroupsId { get; set; }

    public string RegistersIdc { get; set; } = string.Empty;
    [Required]
    public int RegistersIdn { get; set; }

    public long? NumbersOfShares { get; set; }

    public DateTime? ShareHolderDate { get; set; }

    public DateTime? CessationDate { get; set; } = null;

    public bool ShareHolderActive
    {
        get => _shareHolderActive;
        set
        {
            _shareHolderActive = value;
            if (value)
            {
                CessationDate = null;
            }
            else
            {
                CessationDate = DateTime.Now;
            }
        }
    }
    private bool _shareHolderActive;

    public int CompanyId { get; set; }
}