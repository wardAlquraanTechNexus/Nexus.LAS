using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyBoardMemberDTOs;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Repositories
{
    public class CompanyAccountSignatoryRepo : GenericRepo<CompanyAccountSignatory>, ICompanyAccountSignatoryRepo
    {
        public CompanyAccountSignatoryRepo(NexusLASDbContext context) : base(context)
        {
        }


        public async Task<PagingResult<CompanyAccountSignatoryDTO>> SearchDtoAsync(GetPagingAcccountSignatoryQuery query)
        {

            var queryable = (from cas in _dbSet
                             join cba in _context.CompaniesBankAccounts
                             on cas.CompanyBankAccountId equals cba.Id
                             join c in _context.Companies
                             on cba.CompanyId equals c.Id
                             where (!query.CompanyId.HasValue || c.Id == query.CompanyId)
                             && (!query.CompanyBankAccountId.HasValue || cba.Id == query.CompanyBankAccountId)
                             && (!query.PersonId.HasValue || cas.PersonId == query.PersonId)
                             select new CompanyAccountSignatoryDTO()
                                {
                                    Id = cas.Id,
                                    CompanyBankAccountId = cas.CompanyBankAccountId,
                                    PersonId = cas.PersonId,
                                    AccountSignatoryActive = cas.AccountSignatoryActive,
                                    AccountSignatoryDate = cas.AccountSignatoryDate,
                                    Description = cas.Description,
                                    FromAmount = cas.FromAmount,
                                    Rule= cas.Rule,
                                    ToAmount = cas.ToAmount,
                                    CompanyNameEn = c.CompanyEnglishName,
                                    CompanyNameAr = c.CompanyArabicName
                             }
                             ).AsQueryable();

            var count = await queryable.CountAsync();
            queryable = queryable.Paginate(query.Page, query.PageSize);

            var data = await queryable.ToListAsync();
            return new PagingResult<CompanyAccountSignatoryDTO>(data, query.Page, query.PageSize, count);

        }
    }
}
