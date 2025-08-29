namespace Nexus.LAS.Application.DTOs.CompanyShareHolderDTOs;

public class CompanyShareHolderDto
{
    public int Id { get; set; }

    public string RegistersIdc { get; set; } = string.Empty;

    public int RegistersIdn { get; set; }

    public long NumbersOfShares { get; set; }

    public DateTime? ShareHolderDate { get; set; }

    public DateTime? CessationDate { get; set; }

    public bool ShareHolderActive { get; set; }

    public int CompanyId { get; set; }
    public string? RegisterName { get; set; } = string.Empty;

    public double SharePercent { get; set; }
}
