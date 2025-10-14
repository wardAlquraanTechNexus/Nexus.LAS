using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.DocumentDTOs;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories.DocumentRepositories;

public class DocumentTrackingRepo : GenericRepo<DocumentTracking>, IDocumentTrackingRepo
{

    public DocumentTrackingRepo(NexusLASDbContext dbContext) : base(dbContext)
    {
    }

    public async Task<PagingResult<DocumentTrackingDto>> GetPaging(GetPagingDocumentTrackingQuery query)
    {
        var queryable = _dbSet
            .Where(dt => (query.Id == null || dt.Id == query.Id)
                     && (string.IsNullOrEmpty(query.SearchBy) || dt.DocumentTrackingCode.Contains(query.SearchBy) || dt.ReferenceNumber.Contains(query.SearchBy))
                     && (query.PersonId == null || dt.PersonId == query.PersonId)
                     && (string.IsNullOrEmpty(query.RegisterIdc) || dt.RegisterIdc == query.RegisterIdc)
                     && (string.IsNullOrEmpty(query.DocumentTrackingCode) || dt.DocumentTrackingCode == query.DocumentTrackingCode)
                     && (string.IsNullOrEmpty(query.ReferenceNumber) || dt.ReferenceNumber == query.ReferenceNumber)
                     && (query.RegisterIdn == 0 || dt.RegisterIdn == query.RegisterIdn))
            .Select(d => new DocumentTrackingDto()
            {
                Description = d.Description,
                DocumentTrackingCode = d.DocumentTrackingCode,
                Id = d.Id,
                PersonId = d.PersonId,
                ReferenceNumber = d.ReferenceNumber,
                RegisterIdc = d.RegisterIdc,
                RegisterIdn = d.RegisterIdn,
                PersonEnglishName = d.Person.PersonEnglishName,
                PersonArabicName = d.Person.PersonArabicName,
                PersonShortName = d.Person.PersonShortName,
            })
            .AsQueryable();

        if (!string.IsNullOrEmpty(query.OrderBy))
        {
            queryable = queryable.Order(query.OrderBy, query.OrderDir ?? "asc");
        }

        int totalRecords = await queryable.CountAsync();

        queryable = queryable.Paginate(query.Page, query.PageSize);

        var data = await queryable.ToListAsync();
        var documentTrackingIds = data.Select(d => d.Id).ToList();
        
        var documentActionsQuery = _context.DocumentTrackingsActions
            .Where(da => documentTrackingIds.Contains(da.DocumentTrackingId))
            .AsQueryable();

        var documentActions = await documentActionsQuery.ToListAsync();

        var registerTypes = data.Select(d => d.RegisterIdc)
            .Distinct()
            .ToList();

        if (registerTypes.Any(x => x.Equals(EntityIDCs.Transactions)))
        {

            var transactionIds = data
                .Where(d => d.RegisterIdc == EntityIDCs.Transactions)
                .Select(d => d.RegisterIdn)
                .Distinct()
                .ToList();

            var transactions = await _context.Transactions
                .Where(t => transactionIds.Contains(t.Id))
                .Select(t => new { t.Id, t.TransactionCode })
                .ToListAsync();

            foreach (var doc in data.Where(d => d.RegisterIdc.Equals(EntityIDCs.Transactions)))
            {
                var transaction = transactions.FirstOrDefault(t => t.Id == doc.RegisterIdn);
                if (transaction != null)
                {
                    doc.RegisterCode = transaction.TransactionCode;
                }
            }
        }
        if (registerTypes.Any(x => x.Equals(EntityIDCs.Transactions)))
        {
            var companyIds = data
            .Where(d => d.RegisterIdc == EntityIDCs.Company)
            .Select(d => d.RegisterIdn)
            .Distinct()
            .ToList();

            var companies = await _context.Companies
                .Where(c => companyIds.Contains(c.Id))
                .Select(c => new { c.Id, c.CompanyCode })
                .ToListAsync();
            foreach (var doc in data.Where(d => d.RegisterIdc.Equals(EntityIDCs.Company)))
            {
                var company = companies.FirstOrDefault(c => c.Id == doc.RegisterIdn);
                if (company != null)
                {
                    doc.RegisterCode = company.CompanyCode;
                }
            }
        }


        foreach (var doc in data)
        {
            var lastAction = documentActions.Where(x => x.DocumentTrackingId == doc.Id).OrderByDescending(da => da.ActionDate).Select(x=>x.ActionType).FirstOrDefault();
            doc.ActionType = lastAction;
        }


        return new PagingResult<DocumentTrackingDto>(
            data,
            query.Page,
            query.PageSize,
            totalRecords);
    }
    public async Task<DocumentTrackingDto> GetDtoById(int id)
    {
        var queryable = _dbSet
            .Where(dt => dt.Id == id)
            .Select(d => new DocumentTrackingDto()
            {
                Description = d.Description,
                DocumentTrackingCode = d.DocumentTrackingCode,
                Id = d.Id,
                PersonId = d.PersonId,
                ReferenceNumber = d.ReferenceNumber,
                RegisterIdc = d.RegisterIdc,
                RegisterIdn = d.RegisterIdn,
                PersonEnglishName = d.Person.PersonEnglishName,
                PersonArabicName = d.Person.PersonArabicName,
                PersonShortName = d.Person.PersonShortName,
            })
            .AsQueryable();


        var data = await queryable.FirstOrDefaultAsync();

        var registerType = data.RegisterIdc;

        if (registerType.Equals(EntityIDCs.Transactions))
        {
            var transactionQuery = _context.Transactions
                .Where(t => t.Id == data.Id)
                .Select(t => new { t.Id, t.TransactionCode })
                .AsQueryable();

            var transaction = await transactionQuery.FirstOrDefaultAsync();

            if (transaction != null)
            {
                data.RegisterCode = transaction.TransactionCode;
            }

        }
        if (registerType.Equals(EntityIDCs.Company))
        {


            var companyQuery = _context.Companies
                .Where(t => t.Id == data.Id)
                .Select(t => new { t.Id, t.CompanyCode })
                .AsQueryable();

            var company = await companyQuery.FirstOrDefaultAsync();

            if (company != null)
            {
                data.RegisterCode = company.CompanyCode;
            }

        }

        return data;
    }

    public override async Task<int> CreateAsync(DocumentTracking entity)
    {
        entity.DocumentTrackingCode = EntityIDCs.DocumentTrackings;
        var id = await base.CreateAsync(entity);
        entity.DocumentTrackingCode = EntityIDCs.DocumentTrackings + entity.Id.ToString().PadLeft(6, '0');
        await _context.SaveChangesAsync();
        return id;
    }

    public async Task<bool> ExistsByRegisterAsync(string registerIdc, int registerIdn, int? excludedId)
    {
        return await _dbSet
            .AnyAsync(x =>
                x.RegisterIdc == registerIdc &&
                x.RegisterIdn == registerIdn &&
                !x.IsDeleted &&
                (!excludedId.HasValue || x.Id != excludedId.Value));
    }
}