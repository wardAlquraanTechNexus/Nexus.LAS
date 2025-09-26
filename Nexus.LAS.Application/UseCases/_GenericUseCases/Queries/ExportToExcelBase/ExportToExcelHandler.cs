using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Domain.Entities.Base;

namespace Nexus.LAS.Application.UseCases._GenericUseCases.Queries.ExportToExcelBase
{
    public class ExportToExcelHandler<Entity , DTO , Service , Query> : IRequestHandler<Query, ExcelDto> where Entity : BaseEntity where Service: IGenericService<Entity> where Query : ExportToExcelQuery
    {
        public readonly Service _service;

        public ExportToExcelHandler(Service service)
        {
            _service = service;
        }

        public async Task<ExcelDto> Handle(Query query, CancellationToken cancellationToken)
        {
            var props = typeof(DTO).GetProperties();
            var res = await _service.ExportToExcel(query.Query, props);
            return new ExcelDto()
            {
                Data = res,
                FileName = $"{typeof(Entity).Name} Sheet"
            };
        }
    }
}
