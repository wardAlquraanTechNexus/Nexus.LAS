using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CommonDTOs;
using Nexus.LAS.Application.UseCases.SearchUseCases;
using Nexus.LAS.Application.UseCases.SearchUseCases.GlobalSearch.Queries;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;

namespace Nexus.LAS.Persistence.Repositories.SearchRepositories
{
    public class GlobalhRepo : IGlobalRepo
    {
        private readonly NexusLASDbContext _context;
        public GlobalhRepo(NexusLASDbContext context)
        {
            _context = context;
        }

        public async Task<List<GlobalSearchDTO>> GlobalSearch(GlobalSearchQuery query)
        {
            if (string.IsNullOrEmpty(query.Search))
            {
                return new List<GlobalSearchDTO>();
            }
            IQueryable<GlobalSearchDTO> peopleQuery = _context.People
                .Where(p =>
                p.PersonCode.ToLower().Contains(query.Search)
                || p.PersonEnglishName.ToLower().Contains(query.Search)
                || p.PersonArabicName.ToLower().Contains(query.Search)
                || p.PersonShortName.ToLower().Contains(query.Search)
            )
            .Select(p => new GlobalSearchDTO()
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

            IQueryable<GlobalSearchDTO> mergedResults = peopleQuery
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
        public async Task<List<GlobalInfoDTO>> GlobalInfo()
        {
            List<GlobalInfoDTO> globalInfo = new();
            var peopleCount = await _context.People.CountAsync();
            var companiesCount = await _context.Companies.CountAsync();
            var propertiesCount = await _context.Properties.CountAsync();
            var fpcCount = await _context.FPCs.CountAsync();
            var lawFirmsCount = await _context.LawFirms.CountAsync();
            var transactionsCount = await _context.Transactions.CountAsync();
            var documentsCount = await _context.DocumentTrackings.CountAsync();

            globalInfo.AddRange(
            new GlobalInfoDTO()
            {
                Count = peopleCount,
                Name = "People",
                Icon = "people",
                Path = "Persons/All-persons",
                Idc = EntityIDCs.Person
            },
            new GlobalInfoDTO()
            {
                Count = companiesCount,
                Name = "Companies",
                Icon = "domain",
                Path = "Companies/All-companies",
                Idc = EntityIDCs.Company
            }
            ,
            new GlobalInfoDTO()
            {
                Count = propertiesCount,
                Name = "Real Estates",
                Icon = "home_work",
                Path = "Real-estates/All-real-estates",
                Idc = EntityIDCs.Properties
            }
            ,
            new GlobalInfoDTO()
            {
                Count = lawFirmsCount,
                Name = "Law Firms",
                Icon = "home_work",
                Path = "Law-firms/All-law-firms",
                Idc = EntityIDCs.LawFirmIDC
            }
            ,
            new GlobalInfoDTO()
            {
                Count = transactionsCount,
                Name = "Transactions",
                Icon = "swap_horiz",
                Path = "Transactions/All-transactions",
                Idc = EntityIDCs.Transactions
            }
            ,
            new GlobalInfoDTO()
            {
                Count = fpcCount,
                Name = "FPCs",
                Icon = "business_center",
                Path = "Fpcs/All-fpcs",
                Idc = EntityIDCs.FPCs
            }
            ,
            new GlobalInfoDTO()
            {
                Count = documentsCount,
                Name = "Doc. Tracking",
                Icon = "track_changes",
                Path = "Doc-tracking/All-documents"
            }
            );


            return globalInfo;

        }

        public async Task<PagingResult<GlobalDocumentExpiredDto>> GlobalDocumentExpired(GetGlobalExpiredDocumentQuery request)
        {
            List<GlobalDocumentExpiredDto> expiredDocuments = new();

            var dateThresholds = new Dictionary<int, DateTime>
                                        {
                                            { 15, DateTime.Now.AddDays(-15).Date },
                                            { 30, DateTime.Now.AddDays(-30).Date },
                                            { 45, DateTime.Now.AddDays(-45).Date }
                                        };


            IQueryable<GlobalDocumentExpiredDto>? mergedQuery = null;
            foreach (var threshold in dateThresholds)
            {

                int days = threshold.Key;
                DateTime targetDate = threshold.Value;

                if (mergedQuery is null)
                {
                    mergedQuery = _context.PersonsIDDetails
                    .Where(x => x.ExpiryDate.HasValue &&
                                (days == 45
                                    ? x.ExpiryDate.Value.Date >= targetDate
                                    : x.ExpiryDate.Value.Date == targetDate))
                    .Select(x => new GlobalDocumentExpiredDto
                    {
                        Id = x.Id,
                        MainIdc = EntityIDCs.Person,
                        SubIdc = x.PersonsIDDetailIdc,
                        ExpiryPeriod = days,
                        ActiveReminder = x.ActiveReminder.HasValue ? x.ActiveReminder.Value : false,
                        CreatedAt = x.CreatedAt,
                        ModifiedAt = x.ModifiedAt,
                        CreatedBy = x.CreatedBy,
                        ModifiedBy = x.ModifiedBy,
                        ExpiryDate = x.ExpiryDate.Value
                    })
                    .AsQueryable();


                }
                else
                {
                    mergedQuery = mergedQuery!.Union(_context.PersonsIDDetails
                    .Where(x => x.ExpiryDate.HasValue &&
                                (days == 45
                                    ? x.ExpiryDate.Value.Date >= targetDate
                                    : x.ExpiryDate.Value.Date == targetDate))
                    .Select(x => new GlobalDocumentExpiredDto
                    {
                        Id = x.Id,
                        MainIdc = EntityIDCs.Person,
                        SubIdc = x.PersonsIDDetailIdc,
                        ExpiryPeriod = days,
                        ActiveReminder = x.ActiveReminder.HasValue ? x.ActiveReminder.Value : false,
                        CreatedAt = x.CreatedAt,
                        ModifiedAt = x.ModifiedAt,
                        CreatedBy = x.CreatedBy,
                        ModifiedBy = x.ModifiedBy,
                        ExpiryDate = x.ExpiryDate.Value
                    })
                    .AsQueryable());

                }

                mergedQuery = mergedQuery.Union(_context.CompaniesChamberOfCommerce
                        .Where(x => x.CciExpiryDate.HasValue &&
                                    (days == 45
                                        ? x.CciExpiryDate.Value.Date >= targetDate
                                        : x.CciExpiryDate.Value.Date == targetDate))
                        .Select(x => new GlobalDocumentExpiredDto
                        {
                            Id = x.Id,
                            MainIdc = EntityIDCs.Company,
                            SubIdc = x.CompanyChamberOfCommerceIdc,
                            ExpiryPeriod = days,
                            ActiveReminder = x.CciExpiryActiveReminder,
                            CreatedAt = x.CreatedAt,
                            ModifiedAt = x.ModifiedAt,
                            CreatedBy = x.CreatedBy,
                            ModifiedBy = x.ModifiedBy,
                            ExpiryDate = x.CciExpiryDate.Value
                        })
                        .AsQueryable());



                mergedQuery = mergedQuery.Union(_context.CompaniesLicenses
                    .Where(x => x.LicenseExpiryDate.HasValue &&
                                (days == 45
                                    ? x.LicenseExpiryDate.Value.Date >= targetDate
                                    : x.LicenseExpiryDate.Value.Date == targetDate))
                    .Select(x => new GlobalDocumentExpiredDto
                    {
                        Id = x.Id,
                        MainIdc = EntityIDCs.Company,
                        SubIdc = x.CompanyLicenseIdc,
                        ExpiryPeriod = days,
                        ActiveReminder = x.LicenseExpiryActiveReminder,
                        CreatedAt = x.CreatedAt,
                        ModifiedAt = x.ModifiedAt,
                        CreatedBy = x.CreatedBy,
                        ModifiedBy = x.ModifiedBy,
                        ExpiryDate = x.LicenseExpiryDate.Value

                    })
                    .AsQueryable());



                mergedQuery = mergedQuery.Union(_context.CompaniesContracts
                    .Where(x => x.ContractExpiryDate.HasValue &&
                                (days == 45
                                    ? x.ContractExpiryDate.Value.Date >= targetDate
                                    : x.ContractExpiryDate.Value.Date == targetDate))
                    .Select(x => new GlobalDocumentExpiredDto
                    {
                        Id = x.Id,
                        MainIdc = EntityIDCs.Company,
                        SubIdc = x.CompaniesContractIdc,
                        ExpiryPeriod = days,
                        ActiveReminder = x.ContractExpiryActiveReminder.HasValue ? x.ContractExpiryActiveReminder.Value : false,
                        CreatedAt = x.CreatedAt,
                        ModifiedAt = x.ModifiedAt,
                        CreatedBy = x.CreatedBy,
                        ModifiedBy = x.ModifiedBy,
                        ExpiryDate = x.ContractExpiryDate.Value

                    })
                    .AsQueryable());


                mergedQuery = mergedQuery.Union(_context.PropertyDocuments
                    .Where(x => x.DocumentExpiryDate.HasValue &&
                                (days == 45
                                    ? x.DocumentExpiryDate.Value.Date >= targetDate
                                    : x.DocumentExpiryDate.Value.Date == targetDate))
                    .Select(x => new GlobalDocumentExpiredDto
                    {
                        Id = x.Id,
                        MainIdc = EntityIDCs.Properties,
                        SubIdc = x.PropertyDocumentsIdc,
                        ExpiryPeriod = days,
                        ActiveReminder = x.ActiveReminder.HasValue ? x.ActiveReminder.Value : false,
                        CreatedAt = x.CreatedAt,
                        ModifiedAt = x.ModifiedAt,
                        CreatedBy = x.CreatedBy,
                        ModifiedBy = x.ModifiedBy,
                        ExpiryDate = x.DocumentExpiryDate.Value

                    })
                    .AsQueryable());



            }

            if (mergedQuery is null)
            {
                return new PagingResult<GlobalDocumentExpiredDto>(expiredDocuments, request.Page, request.PageSize, 0);
            }

            mergedQuery = mergedQuery!.Order(request);
            var count = await mergedQuery.CountAsync();
            mergedQuery = mergedQuery!.Paginate(request.Page, request.PageSize);

            var data = await mergedQuery.ToListAsync();

            return new PagingResult<GlobalDocumentExpiredDto>(data, request.Page, request.PageSize, count);

        }
    }
}
