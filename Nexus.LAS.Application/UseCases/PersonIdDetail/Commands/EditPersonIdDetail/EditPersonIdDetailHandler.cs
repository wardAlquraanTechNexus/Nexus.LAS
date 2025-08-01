using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.PersonIdDetail.Commands.CreatePersonIdDetail;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonIdDetail.Commands.EditPersonIdDetail
{
    public class EditPersonIdDetailHandler: IRequestHandler<EditPersonIdDetailCommand , int>
    {
        private readonly IPersonIdDetailService _personIdDetailService;
        private readonly IMapper _mapper;

        public EditPersonIdDetailHandler(IPersonIdDetailService personIdDetailService, IMapper mapper)
        {
            _personIdDetailService = personIdDetailService;
            _mapper = mapper;
        }

        public async Task<int> Handle(EditPersonIdDetailCommand request, CancellationToken cancellationToken)
        {
            await _personIdDetailService.EditPersonIdDetail(request);
            return request.Id;
        }
    }
}
