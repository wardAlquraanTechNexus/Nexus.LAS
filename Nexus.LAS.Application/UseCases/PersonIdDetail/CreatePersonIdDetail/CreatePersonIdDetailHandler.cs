using MediatR;
using Nexus.LAS.Application.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonIdDetail.CreatePersonIdDetail
{
    public class CreatePersonIdDetailHandler : IRequestHandler<CreatePersonIdDetailCommand, int>
    {
        private readonly IPersonIdDetailService _personIdDetailService;
        public CreatePersonIdDetailHandler(IPersonIdDetailService personIdDetailService)
        {
            _personIdDetailService = personIdDetailService;
        }
        public async Task<int> Handle(CreatePersonIdDetailCommand request, CancellationToken cancellationToken)
        {
            return await _personIdDetailService.CreatePersonIdDetail(request);
        }
    }
}
