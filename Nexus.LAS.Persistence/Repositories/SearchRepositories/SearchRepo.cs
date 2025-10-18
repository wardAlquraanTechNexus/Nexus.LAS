using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs.SearchDTOs;
using Nexus.LAS.Application.UseCases.SearchUseCases.GlobalSearch.Queries;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;

namespace Nexus.LAS.Persistence.Repositories.SearchRepositories
{
    public class SearchRepo : ISearchRepo
    {
        private readonly NexusLASDbContext _context;
        public SearchRepo(NexusLASDbContext context) 
        {
            _context = context;
        }

        public async Task<List<GlobalSearchDTO>> GlobalSearch(GlobalSearchQuery query)
        {
            if (string.IsNullOrEmpty(query.Search))
            {
                return new List<GlobalSearchDTO>();
            }
            var peopleQuery = _context.People
                .Where(p =>
                p.PersonCode.ToLower().Contains(query.Search)
                || p.PersonEnglishName.ToLower().Contains(query.Search)
                || p.PersonArabicName.ToLower().Contains(query.Search)
                || p.PersonShortName.ToLower().Contains(query.Search)
            )
            .Select(p=> new GlobalSearchDTO()
            {
                EntityCode = p.PersonCode,
                EntityId = p.Id,
                EntityIdc = EntityIDCs.Person,
                EntityType = "Person",
                CreatedAt = p.CreatedAt
            })
            .AsQueryable();


            var companyQuery = _context.Companies
                .Where(p =>
                p.CompanyCode.ToLower().Contains(query.Search)
                || p.CompanyEnglishName.ToLower().Contains(query.Search)
                || p.CompanyArabicName.ToLower().Contains(query.Search)
                || p.CompanyShortName.ToLower().Contains(query.Search)
            )
            .Select(p => new GlobalSearchDTO()
            {
                EntityCode = p.CompanyCode,
                EntityId = p.Id,
                EntityIdc = EntityIDCs.Company,
                EntityType = "Company",
                CreatedAt = p.CreatedAt

            })
            .AsQueryable();


            var propertyQuery = _context.Properties
                .Where(p =>
                p.Code.ToLower().Contains(query.Search)
            )
            .Select(p => new GlobalSearchDTO()
            {
                EntityCode = p.Code,
                EntityId = p.Id,
                EntityIdc = EntityIDCs.Properties,
                EntityType = "Real Estate",
                CreatedAt = p.CreatedAt

            })
            .AsQueryable();


            var lawFirmQuery = _context.LawFirms
                .Where(p =>
                p.LawFirmCode.ToLower().Contains(query.Search)
                || p.EnglishName.ToLower().Contains(query.Search)
                || p.ArabicName.ToLower().Contains(query.Search)
                || p.ShortName.ToLower().Contains(query.Search)
            )
            .Select(p => new GlobalSearchDTO()
            {
                EntityCode = p.LawFirmCode,
                EntityId = p.Id,
                EntityIdc = EntityIDCs.LawFirmIDC,
                EntityType = "Law Firm",
                CreatedAt = p.CreatedAt

            })
            .AsQueryable();

            var transactionQuery = _context.Transactions
                .Where(p =>
                p.TransactionCode.ToLower().Contains(query.Search)
            )
            .Select(p => new GlobalSearchDTO()
            {
                EntityCode = p.TransactionCode,
                EntityId = p.Id,
                EntityIdc = EntityIDCs.Transactions,
                EntityType = "Transaction",
                CreatedAt = p.CreatedAt

            })
            .AsQueryable();


            var fpcQuery = _context.FPCs
                .Where(p =>
                p.FpcCode.ToLower().Contains(query.Search)
            )
            .Select(p => new GlobalSearchDTO()
            {
                EntityCode = p.FpcCode,
                EntityId = p.Id,
                EntityIdc = EntityIDCs.FPCs,
                EntityType = "FPC",
                CreatedAt = p.CreatedAt

            })
            .AsQueryable();

            var mergedResults = peopleQuery
                                .Union(companyQuery)
                                .Union(propertyQuery)
                                .Union(lawFirmQuery)
                                .Union(transactionQuery)
                                .Union(fpcQuery)
                                .OrderByDescending(x => x.CreatedAt)
                                .AsQueryable();

            mergedResults = mergedResults.Paginate(query.Page, query.PageSize);
            return await mergedResults.ToListAsync();

        }
    }
}
