namespace Nexus.LAS.Application.DTOs.CompanyDTOs;

public class CompanyShareHoldersGroupDto
{
    public int Id { get; set; }
    public int CompanyId { get; set; }
    public DateTime ShareHolderGroupDate { get; set; }
    public bool ShareHolderGroupActive { get; set; }
}