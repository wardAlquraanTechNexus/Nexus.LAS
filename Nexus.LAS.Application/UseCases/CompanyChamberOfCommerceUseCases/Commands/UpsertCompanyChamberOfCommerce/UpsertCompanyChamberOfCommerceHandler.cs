using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.CompanyChamberOfCommerceDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases;

public class UpsertCompanyChamberOfCommerceHandler: IRequestHandler<BulkUpsertCompanyChamberOfCommerceCommand, List<CompanyChamberOfCommerceDto>>
{
    private readonly ICompanyChamberOfCommerceService _companyChamberOfCommerceService;
    private readonly IMapper _mapper;
    public UpsertCompanyChamberOfCommerceHandler(ICompanyChamberOfCommerceService companyChamberOfCommerceService, IMapper mapper) 
    {
        _companyChamberOfCommerceService = companyChamberOfCommerceService;
        _mapper = mapper;   
    }
    public async Task<List<CompanyChamberOfCommerceDto>> Handle(BulkUpsertCompanyChamberOfCommerceCommand command , CancellationToken cancellationToken)
    {
        var companiesChamberOfCommerce = command.Commands.Select(cmd => _mapper.Map<CompanyChamberOfCommerce>(cmd)).ToList();
        var companyChamberOfCommercesRes = await _companyChamberOfCommerceService.BulkUpsertAsync(companiesChamberOfCommerce);
        return companyChamberOfCommercesRes.Select(e => _mapper.Map<CompanyChamberOfCommerceDto>(e)).ToList();

    }
}
