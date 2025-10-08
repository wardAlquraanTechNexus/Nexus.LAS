using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.GetById
{
    public class GetFPCByIdHandler : IRequestHandler<GetFPCByIdQuery, FPCDto?>
    {
        private readonly IFPCService _fpcService;
        private readonly IMapper _mapper;

        public GetFPCByIdHandler(IFPCService fpcService, IMapper mapper)
        {
            _fpcService = fpcService;
            _mapper = mapper;
        }

        public async Task<FPCDto?> Handle(GetFPCByIdQuery request, CancellationToken cancellationToken)
        {
            var entity = await _fpcService.GetDtoByIdAsync(request.Id);
            return entity;
        }
    }
}