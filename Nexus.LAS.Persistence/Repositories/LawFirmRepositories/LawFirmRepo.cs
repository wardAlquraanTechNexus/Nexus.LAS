using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._LawFirmRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetAll;
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
        public async Task<LawFirmDto?> GetDTOById(int id)
        {
            var queryable =
                 from lf in _dbSet
                 where lf.Id == id
                 join lfb in _context.LawFirmsBranchs
                     on lf.Id equals lfb.LawFirmId into lfBranchGroup
                 let primaryBranch = lfBranchGroup.FirstOrDefault(b => b.BranchPrimary)
                 where
                     // No branches at all ? include firm
                     !lfBranchGroup.Any()

                     // Has a primary branch ? include
                     || primaryBranch != null

                     // Has branches but no primary ? include firm (as if no branch)
                     || (lfBranchGroup.Any() && primaryBranch == null)
                 select new LawFirmDto
                 {
                     Id = lf.Id,
                     LawFirmCode = lf.LawFirmCode,
                     ShortName = lf.ShortName,
                     EnglishName = lf.EnglishName,
                     ArabicName = lf.ArabicName,
                     Status = lf.Status,
                     LasDate = lf.LasDate,
                     EstYear = lf.EstYear,
                     Website = lf.Website,
                     Private = lf.Private,
                     CountryId = primaryBranch != null ? primaryBranch.CountryId : (int?)null,
                     CreatedAt = lf.CreatedAt,
                     CreatedBy = lf.CreatedBy,
                     ModifiedAt = lf.ModifiedAt,
                     ModifiedBy = lf.ModifiedBy,
                 };


            return await queryable.FirstOrDefaultAsync();
        }
        public async Task<PagingResult<LawFirmDto>> GetPagingLawFirms(GetPagingLawFirmQuery query)
        {
            var searchBy = query.SearchBy?.ToLower();

            var queryable =
                (from lf in _dbSet
                 join lfb in _context.LawFirmsBranchs
                     on lf.Id equals lfb.LawFirmId into lfBranchGroup
                 let primaryBranch = lfBranchGroup.FirstOrDefault(b => b.BranchPrimary)
                 where
                     // Filter by Privates
                     (!query.Privates.Any() || query.Privates.Contains(lf.Private))

                     // Filter by Status
                     && (!query.Statuses.Any() || query.Statuses.Contains(lf.Status))

                     // Search filters
                     && (string.IsNullOrEmpty(searchBy)
                         || lf.LawFirmCode.ToLower().Contains(searchBy)
                         || (!string.IsNullOrEmpty(lf.EnglishName) && lf.EnglishName.ToLower().Contains(searchBy))
                         || (!string.IsNullOrEmpty(lf.ArabicName) && lf.ArabicName.ToLower().Contains(searchBy))
                         || (!string.IsNullOrEmpty(lf.ShortName) && lf.ShortName.ToLower().Contains(searchBy))
                     )

                     // Exact match filters
                     && (string.IsNullOrEmpty(query.Fid) || query.Fid == lf.LawFirmCode)
                     && (string.IsNullOrEmpty(query.EnglishName) || query.EnglishName == lf.EnglishName)
                     && (string.IsNullOrEmpty(query.ArabicName) || query.ArabicName == lf.ArabicName)
                     && (string.IsNullOrEmpty(query.ShortName) || query.ShortName == lf.ShortName)

                     // ? Branch logic
                     && (
                         // No branches at all ? include firm
                         !lfBranchGroup.Any()

                         // Has primary branch ? include if matches CountryId (or no filter)
                         || (primaryBranch != null
                             && (!query.CountryId.HasValue || primaryBranch.CountryId == query.CountryId))

                         // Has branches but no primary ? include firm (as if no branch)
                         || (lfBranchGroup.Any() && primaryBranch == null && !query.CountryId.HasValue)
                     )
                 select new LawFirmDto
                 {
                     Id = lf.Id,
                     LawFirmCode = lf.LawFirmCode,
                     ShortName = lf.ShortName,
                     EnglishName = lf.EnglishName,
                     ArabicName = lf.ArabicName,
                     Status = lf.Status,
                     LasDate = lf.LasDate,
                     EstYear = lf.EstYear,
                     Website = lf.Website,
                     Private = lf.Private,
                     CountryId = primaryBranch != null ? primaryBranch.CountryId : (int?)null,
                     CreatedAt = lf.CreatedAt,
                     CreatedBy = lf.CreatedBy,
                     ModifiedAt = lf.ModifiedAt,
                     ModifiedBy = lf.ModifiedBy
                 })
                .Distinct()
                .AsQueryable();



            if (query.ExpertiseId.HasValue)
            {
                var lawFirmIds = await _context.LawFirmsExpertises.Where(x => x.Id == query.ExpertiseId).Select(x=>x.LawFirmId).ToListAsync();
                queryable = queryable.Where(lf => lawFirmIds.Contains(lf.Id)).AsQueryable();


            }



            int totalRecords = await queryable.CountAsync();

            if (!string.IsNullOrEmpty(query.OrderBy))
            {
                queryable = queryable.Order(query.OrderBy, query.OrderDir ?? "asc");
            }

            queryable = queryable.Paginate(query.Page, query.PageSize);


            var data = await queryable.ToListAsync();

            return new PagingResult<LawFirmDto>(data , query.Page, query.PageSize ,totalRecords);
        }
        
        public async Task<List<LawFirmDto>> GetAllLawFirms(GetAllLawFirmQuery query)
        {
            var queryable =
                    from lf in _dbSet
                    where
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
                    select new LawFirmDto
                    {
                        Id = lf.Id,
                        LawFirmCode = lf.LawFirmCode,
                        ShortName = lf.ShortName,
                        EnglishName = lf.EnglishName,
                        ArabicName = lf.ArabicName,
                        Status = lf.Status,
                        LasDate = lf.LasDate,
                        EstYear = lf.EstYear,
                        Website = lf.Website,
                        Private = lf.Private,
                        CreatedAt = lf.CreatedAt,
                        CreatedBy = lf.CreatedBy,
                        ModifiedAt = lf.ModifiedAt,
                        ModifiedBy = lf.ModifiedBy,
                    };



            if (query.ExpertiseId.HasValue)
            {
                var lawFirmIds = await _context.LawFirmsExpertises.Where(x => x.Id == query.ExpertiseId).Select(x=>x.LawFirmId).ToListAsync();
                queryable = queryable.Where(lf => lawFirmIds.Contains(lf.Id)).AsQueryable();


            }



            if (!string.IsNullOrEmpty(query.OrderBy))
            {
                queryable = queryable.Order(query.OrderBy, query.OrderDir ?? "asc");
            }

            var data = await queryable.ToListAsync();

            return data;
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