using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases._GenericUseCases.Queries
{
    public class GetBaseHandler<Service , Entity> : 
        IRequestHandler<
            GetBaseQuery<PagingResult<Entity>>,
            PagingResult<Entity>
            > 
        where Service : IGenericService<Entity> where Entity : BaseEntity
    {
        protected readonly Service _service;

        public GetBaseHandler(Service service)
        {
            _service = service;
        }

        public async Task<PagingResult<Entity>> Handle(GetBaseQuery<PagingResult<Entity>> request, CancellationToken cancellationToken)
        {
            return await _service.GetAsync(request.Query);
        }
    }
}
