using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyBoardMemberDTOs;
using Nexus.LAS.Application.DTOs.CompanyPersonInChargeDTOs;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using System.Linq;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyBoardMemberRepo : GenericRepo<CompanyBoardMember>, ICompanyBoardMemberRepo
{
    public CompanyBoardMemberRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<bool> IsPersonActiveExist(int companyId, int personId, int? excludedId = null)
    {
        return await _dbSet.AnyAsync(x => x.CompanyId == companyId && x.PersonId == personId && x.IsActive && (excludedId == null || x.Id != excludedId));
    }

    public async Task<PagingResult<CompanyBoardMemberDto>> SearchDtoAsync(GetPagingCompanyBoardMemberQuery query)
    {
        var queryable = _dbSet
            .Include(cb => cb.Person)
            .Include(cb => cb.Company)
            .Where(cb =>
                (!query.CompanyId.HasValue || cb.CompanyId == query.CompanyId) &&
                (!query.PersonId.HasValue || cb.PersonId == query.PersonId)
            )
            .Select(cb => new CompanyBoardMemberDto
            {
                Id = cb.Id,
                CompanyId = cb.CompanyId,
                PersonId = cb.PersonId,
                AppointmentDate = cb.AppointmentDate,
                CessationDate = cb.CessationDate,
                IsActive = cb.IsActive,
                Position = cb.Position,
                CompanyNameAr = cb.Company.CompanyArabicName,
                CompanyNameEn = cb.Company.CompanyEnglishName,
                PersonNameEn = cb.Person.PersonEnglishName,
                PersonNameAr = cb.Person.PersonArabicName
            });


        var count = await queryable.CountAsync();
        queryable = queryable.Paginate(query.Page, query.PageSize);

        var data = await queryable.ToListAsync();
        return new PagingResult<CompanyBoardMemberDto>(data, query.Page, query.PageSize, count);

    }
}
