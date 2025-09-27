using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetLawFirmDto
{
    public class GetLawFirmDtoQueryHandler : IRequestHandler<GetLawFirmDtoQuery, LawFirmDto?>
    {
        private readonly ILawFirmService _lawFirmService;

        public GetLawFirmDtoQueryHandler(ILawFirmService lawFirmService)
        {
            _lawFirmService = lawFirmService;
        }

        public async Task<LawFirmDto?> Handle(GetLawFirmDtoQuery request, CancellationToken cancellationToken)
        {
            return await _lawFirmService.GetDTOById(request.Id);
        }
    }
}