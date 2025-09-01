using MediatR;
using Nexus.LAS.Application.DTOs.CompanyLicenseDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyLicenseUseCases;

public class BulkUpsertCompanyLicenseCommand: IRequest<List<CompanyLicenseDto>>
{
    public List<UpsertCompanyLicenseCommand> Commands { get; set; }
}
