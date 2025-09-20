using MediatR;
using AutoMapper;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetPropertyDto
{
    public class GetPropertyDtoQueryHandler : IRequestHandler<GetPropertyDtoQuery, PropertyDto>
    {
        private readonly IPropertyService _propertyService;
        private readonly IMapper _mapper;

        public GetPropertyDtoQueryHandler(IPropertyService propertyService, IMapper mapper)
        {
            _propertyService = propertyService;
            _mapper = mapper;
        }

        public async Task<PropertyDto> Handle(GetPropertyDtoQuery request, CancellationToken cancellationToken)
        {
            var property = await _propertyService.GetAsync(request.Id);
            return property == null ? null : _mapper.Map<PropertyDto>(property);
        }
    }
}