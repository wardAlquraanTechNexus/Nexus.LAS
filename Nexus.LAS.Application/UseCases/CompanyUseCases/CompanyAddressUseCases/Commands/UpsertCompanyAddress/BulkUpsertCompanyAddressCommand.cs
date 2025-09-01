using MediatR;
using Nexus.LAS.Application.DTOs.CompanyAddressDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyAddressUseCases;

public class BulkUpsertCompanyAddressCommand: IRequest<List<CompanyAddressDto>>
{
    public List<UpsertCompanyAddressCommand> Commands { get; set; }
}
