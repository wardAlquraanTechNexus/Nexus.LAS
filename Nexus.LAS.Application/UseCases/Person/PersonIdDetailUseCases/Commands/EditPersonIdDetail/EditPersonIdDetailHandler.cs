using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.PersonIdDetailUseCases.Commands.EditPersonIdDetail;

namespace Nexus.LAS.Application.UseCases.Commands.EditPersonIdDetail
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
