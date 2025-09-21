using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetPropertyDto;
using Nexus.LAS.Application.UseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories.PropertyRepositories;

public class PropertyDocumentRepo : GenericRepo<PropertyDocument>, IPropertyDocumentRepo
{
    public PropertyDocumentRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<PagingResult<PropertyDocumentDto>> GetPaging(GetPagingPropertyDocumentQuery param)
    {
        var queryable =
            from pd in _dbSet
            join rf in _context.RegisterFiles
                on new { RegistersIdc = pd.PropertyDocumentsIdc, RegistersIdn = pd.Id }
                equals new { RegistersIdc = rf.RegistersIdc, RegistersIdn = rf.RegistersIdn } into gj
            from registerFile in gj.DefaultIfEmpty()
            where !param.PropertyId.HasValue || pd.PropertyId == param.PropertyId.Value
            select new PropertyDocumentDto
            {
                Id = pd.Id,
                ActiveReminder = pd.ActiveReminder,
                DocumentExpiryDate = pd.DocumentExpiryDate,
                Description = pd.Description,
                IssueDate = pd.IssueDate,
                PlaceOfIssue = pd.PlaceOfIssue,
                PropertyId = pd.PropertyId,
                Type = pd.Type,
                FileName = registerFile != null ? registerFile.Name : null,
                ContentType = registerFile != null ? registerFile.ContentType : null,
                DataFile = registerFile != null ? registerFile.Data : null
            };

        var count = await queryable.CountAsync();
        queryable = queryable.Skip((param.Page) * param.PageSize).Take(param.PageSize);
        var data = await queryable.ToListAsync();
        return new PagingResult<PropertyDocumentDto>(data, param.Page, param.PageSize, count);
    }
}