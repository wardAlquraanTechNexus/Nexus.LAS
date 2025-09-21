using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Commands.CreatePropertyDocument;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Commands.UpdatePropertyDocument;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.PropertyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface IPropertyDocumentService : IGenericService<PropertyDocument>
{
    Task<int> CreatePropertyDocument(CreatePropertyDocumentCommand command);
    Task<int> UpdatPropertyDocument(UpdatePropertyDocumentCommand command);
    Task<PagingResult<PropertyDocumentDto>> GetPaging(GetPagingPropertyDocumentQuery param);
}