using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._LawFirmRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories.LawFirmRepositories
{
    public class LawFirmRepo : GenericRepo<LawFirm>, ILawFirmRepo
    {
        public LawFirmRepo(NexusLASDbContext context) : base(context)
        {
        }
        public async Task<PagingResult<LawFirm>> GetPagingLawFirms(GetPagingLawFirmQuery query)
        {
            var queryable = _dbSet.Where(
                lf =>
                    (!query.Privates.Any() || query.Privates.Contains(lf.Private))
                    && (!query.Statuses.Any() || query.Statuses.Contains(lf.Status))
                    && (
                        query.SearchBy == null
                        || (lf.LawFirmCode.ToLower().Contains(query.SearchBy.ToLower()))
                        || (!string.IsNullOrEmpty(lf.EnglishName) && lf.EnglishName.ToLower().Contains(query.SearchBy.ToLower()))
                        || (!string.IsNullOrEmpty(lf.ArabicName) && lf.ArabicName.ToLower().Contains(query.SearchBy.ToLower()))
                        || (!string.IsNullOrEmpty(lf.ShortName) && lf.ShortName.ToLower().Contains(query.SearchBy.ToLower()))
                    )
                    && (string.IsNullOrEmpty(query.Fid) || query.Fid == lf.LawFirmCode)
                    && (string.IsNullOrEmpty(query.EnglishName) || query.EnglishName == lf.EnglishName)
                    && (string.IsNullOrEmpty(query.ArabicName) || query.ArabicName == lf.ArabicName)
                    && (string.IsNullOrEmpty(query.ShortName) || query.ShortName == lf.ShortName)
            ).AsQueryable();


            if (query.ExpertiseId.HasValue)
            {
                queryable = (from lf in queryable
                             join lfb in _context.LawFirmsBranchs on lf.Id equals lfb.LawFirmId
                             where lfb.Id == query.ExpertiseId.Value
                             select lf
                             ).AsQueryable();


            }


            if (query.CountryId > 0)
            {
                queryable = (
                    from lf in queryable
                    join lfb in _context.LawFirmsBranchs on lf.Id equals lfb.LawFirmId
                    where lfb.CountryId == query.CountryId
                    select lf
                )
                .Distinct()
                .AsQueryable();
            }




            int totalRecords = await queryable.CountAsync();

            queryable = queryable.Paginate(query.Page, query.PageSize);

            if (!string.IsNullOrEmpty(query.OrderBy))
            {
                queryable = queryable.Order(query.OrderBy, query.OrderDir ?? "asc");
            }

            var data = await queryable.ToListAsync();

            return new PagingResult<LawFirm>(data , query.Page, query.PageSize ,totalRecords);
        }

        public override async Task<int> CreateAsync(LawFirm entity)
        {
            var id = await base.CreateAsync(entity);
            entity.Id = id;
            entity.LawFirmCode = EntityIDCs.LawFirmIDC + entity.Id.ToString().PadLeft(6, '0');

            await _context.SaveChangesAsync();

            return entity.Id;
        }

        public async Task<int> BulkChangeStatus(List<int> ids, CommonStatus status)
        {
            var properties = await _dbSet.Where(p => ids.Contains(p.Id)).ToListAsync();
            foreach (var property in properties)
            {
                property.Status = status;
            }
            await _context.SaveChangesAsync();
            return properties.Count;
        }

        public async Task<int> BulkChangePrivate(List<int> ids, bool privateValue)
        {
            var properties = await _dbSet.Where(p => ids.Contains(p.Id)).ToListAsync();
            foreach (var property in properties)
            {
                property.Private = privateValue;
            }
            await _context.SaveChangesAsync();
            return properties.Count;
        }

    }
}