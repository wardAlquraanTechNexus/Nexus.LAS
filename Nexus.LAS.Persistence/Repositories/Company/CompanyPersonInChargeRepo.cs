using AutoMapper;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts._Repositories._CompanyRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyPersonInChargeDTOs;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Queries;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyPersonInChargeRepo : GenericRepo<CompanyPersonInCharge> , ICompanyPersonInChargeRepo
{
    public CompanyPersonInChargeRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<PagingResult<CompanyPersonInChargeDto>> GetPaging(GetPagingCompanyPersonInChargeQuery query)
    {
        IQueryable<CompanyPersonInChargeDto> queryable = 
            _dbSet
            .Include(cpic=>cpic.Person)
            .Where(cpic => cpic.CompanyIdn == query.CompanyId)
            .Select(cpic=>
            new CompanyPersonInChargeDto
            {
                Id = cpic.Id,
                CompanyIdn = cpic.CompanyIdn,
                PersonIdn = cpic.PersonIdn,
                AuthorityRule = cpic.AuthorityRule,
                PersonNameEn =  cpic.Person.PersonEnglishName ,
                PersonNameAr =  cpic.Person.PersonArabicName ,
                CessationDate = cpic.CessationDate,
                Designation = cpic.Designation,
                Notes = cpic.Notes,
                PersonInChargeActive = cpic.PersonInChargeActive,
                PersonInChargeDate = cpic.PersonInChargeDate
            }

            )
            ;

        var count = await queryable.CountAsync();
        queryable = queryable.Paginate(query.Page, query.PageSize);

        var data = await queryable.ToListAsync();

        return new PagingResult<CompanyPersonInChargeDto>(data,query.Page , query.PageSize , count);
    }
}
