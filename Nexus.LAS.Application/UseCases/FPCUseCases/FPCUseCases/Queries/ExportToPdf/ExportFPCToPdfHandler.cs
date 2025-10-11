using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.FPCDTOs;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.ExportToPdf
{
    public class ExportFPCToPdfHandler : IRequestHandler<ExportFPCToPdfQuery, ExcelDto>
    {
        private readonly IFPCService _fpcService;

        public ExportFPCToPdfHandler(IFPCService fpcService)
        {
            _fpcService = fpcService;
        }

        public async Task<ExcelDto> Handle(ExportFPCToPdfQuery query, CancellationToken cancellationToken)
        {
            var res = await _fpcService.ExportToPdf(query.Id);
            return new ExcelDto
            {
                Data = res,
                FileName = "FPC Report"
            };
        }
    }
}