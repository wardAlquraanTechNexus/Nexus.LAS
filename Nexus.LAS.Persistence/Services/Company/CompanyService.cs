using AutoMapper;
using EFCore.BulkExtensions;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Queries;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Queries.GetAllActiveCompany;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;
using QuestPDF.Fluent;
using QuestPDF.Helpers;


namespace Nexus.LAS.Persistence.Services;

public class CompanyService : GenericService<Company> , ICompanyService
{
    private readonly IMapper _mapper;
    public CompanyService(NexusLASDbContext context, IMapper mapper, IUserIdentityService userIdentityService) 
        : base(context, userIdentityService)
    {
        _mapper = mapper;
    }
    public async Task<CompanyDto> GetCompanyDto(int id)
    {
        CompanyRepo companyRepo = new CompanyRepo(_context);
        RegisterFileRepo registerFileRepo = new RegisterFileRepo(_context);

        var company = await companyRepo.GetAsync(id);

        var fileData = await registerFileRepo.GetLastByIds(EntityIDCs.Company, id);

        var companyDto = _mapper.Map<CompanyDto>(company);

        return companyDto;
    }


    public async Task<PagingResult<Company>> GetCompanies(GetCompaniesQuery companyQuery)
    {
        CompanyRepo companyRepo = new CompanyRepo(_context);
        return await companyRepo.GetCompanies(companyQuery);
    }
    public async Task<PagingResult<Company>> GetAllActiveCompany(GetActiveCompaniesQuery companyQuery)
    {
        CompanyRepo companyRepo = new CompanyRepo(_context);
        return await companyRepo.GetActiveCompanies(companyQuery);
    }

    public async override Task<int> CreateAsync(Company entity)
    {
        CompanyRepo companyRepo = new CompanyRepo(_context);
        return await companyRepo.CreateAsync(entity);
    }
    public async Task<Company> UpdateCompanyAsync(Company entity)
    {
        CompanyRepo companyRepo = new CompanyRepo(_context);
        return await companyRepo.UpdateCompanyAsync(entity);
    }

    public async Task<int> BulkChangeStatus(List<int> companyIds, int status)
    {
        using var transaction = await _context.Database.BeginTransactionAsync();

        try
        {
            var companys = await BulkEditProperty<int>(companyIds, nameof(Company.CompanyStatus), status);
            await transaction.CommitAsync();
            return companys.Count;

        }
        catch
        {
            await transaction.RollbackAsync();
            throw;
        }
    }
    public async Task<int> BulkChangePrivate(List<int> companyIds, bool isPrivate)
    {
        using var transaction = await _context.Database.BeginTransactionAsync();

        try
        {
            var companys = await BulkEditProperty<bool>(companyIds, nameof(Company.Private), isPrivate);
            await transaction.CommitAsync();
            return companys.Count;

        }
        catch
        {
            await transaction.RollbackAsync();
            throw;
        }
    }

    public async Task<bool> IsCompanyEnglishNameUniqueAsync(string companyEnglishName, int? excludeId = null)
    {
        var query = _context.Companies.Where(p => p.CompanyEnglishName == companyEnglishName);

        if (excludeId.HasValue)
        {
            query = query.Where(p => p.Id != excludeId.Value);
        }

        return !await query.AnyAsync();
    }

    public async Task<bool> IsCompanyArabicNameUniqueAsync(string companyArabicName, int? excludeId = null)
    {
        var query = _context.Companies.Where(p => p.CompanyArabicName == companyArabicName);

        if (excludeId.HasValue)
        {
            query = query.Where(p => p.Id != excludeId.Value);
        }

        return !await query.AnyAsync();
    }

    public async Task<bool> IsCompanyShortNameUniqueAsync(string companyShortName, int? excludeId = null)
    {
        var query = _context.Companies.Where(p => p.CompanyShortName == companyShortName);

        if (excludeId.HasValue)
        {
            query = query.Where(p => p.Id != excludeId.Value);
        }

        return !await query.AnyAsync();
    }

    private async Task<List<Company>> BulkEditProperty<V>(List<int> companyIds, string propertyName, V value)
    {
        var people = await _context.Companies.Where(x => companyIds.Contains(x.Id)).ToListAsync();
        var property = typeof(Company).GetProperty(propertyName);
        foreach (var company in people)
        {
            property.SetValue(company, value);
        }
        await _context.BulkInsertOrUpdateAsync(people);
        return people;
    }


    public async Task<byte[]> ExportToPdf(int id)
    {
        var repo = new CompanyRepo(_context);

        CompanyEmailRepo companyEmailRepo = new(_context);
        CompanyPhoneRepo companyPhoneRepo = new(_context);
        CompanyAddressRepo companyAddressRepo = new(_context);

        var company = await repo.GetAsync(id);

        var companyEmails = await companyEmailRepo.GetListByCompanyId(id);
        var companyPhones = await companyPhoneRepo.GetListByCompanyId(id);
        var companyAddress = await companyAddressRepo.GetListByCompanyId(id);

        var document = Document.Create(container =>
        {
            container.Page(page =>
            {
                page.Margin(30);
                page.Size(PageSizes.A4);
                page.Content()
                    .Column(column =>
                    {
                        column.Item().Background(Colors.Black).Padding(10).AlignCenter().Text("Company Details")
                                        .FontSize(20)
                                        .FontColor(Colors.White)
                                        .Bold();

                        column.Item().Text($"Name En: {company.CompanyEnglishName}");
                        column.Item().Text($"Name Ar: {company.CompanyArabicName}");
                        column.Item().Text($"Short Name: {company.CompanyShortName}");

                        column.Item().Padding(10).Text(string.Empty);


                        column.Item().Padding(10).Text(string.Empty);

 
                        column.Item().Padding(10).Text(string.Empty);

                        column.CreateTable(companyPhones, new List<PdfDisplayColumn>()
                            {
                                    new PdfDisplayColumn("Type", nameof(CompaniesPhone.PhoneType)),
                                    new PdfDisplayColumn("Phone Number", nameof(CompaniesPhone.PhoneNumber)),
                                    new PdfDisplayColumn("Phone Primary", nameof(CompaniesPhone.PhonePrimary)),
                            }, "Phones");

                        column.Item().Padding(10).Text(string.Empty);

                        column.CreateTable(companyEmails, new List<PdfDisplayColumn>()
                            {
                                    new PdfDisplayColumn("Email Primary", nameof(CompaniesEmail.EmailPrimary)),
                                    new PdfDisplayColumn("Email", nameof(CompaniesEmail.Email)),
                            }, "Emails");

                        column.Item().Padding(10).Text(string.Empty);

                        column.CreateTable(companyAddress, new List<PdfDisplayColumn>()
                            {
                                    new PdfDisplayColumn("Address Primary", nameof(CompaniesAddress.AddressPrimary)),
                                    new PdfDisplayColumn("Address 1", nameof(CompaniesAddress.AddressLine1)),
                                    new PdfDisplayColumn("Address 2", nameof(CompaniesAddress.AddressLine2)),
                                    new PdfDisplayColumn("Address 3", nameof(CompaniesAddress.AddressLine3)),
                                    new PdfDisplayColumn("PO Box Numeber", nameof(CompaniesAddress.PoBoxNumber)),
                                    new PdfDisplayColumn("PO Box City", nameof(CompaniesAddress.PoBoxCity)),
                                    new PdfDisplayColumn("PO Box Country", nameof(CompaniesAddress.PoBoxCountry)),
                            }, "Addresses");
                    });
            });
        });

        using var ms = new MemoryStream();
        document.GeneratePdf(ms);
        return ms.ToArray();
    }

    public async Task<PagingResult<Company>> GetActiveCompanies(GetActiveCompaniesQuery companyQuery)
    {
        CompanyRepo companyRepo = new CompanyRepo(_context);
        return await companyRepo.GetActiveCompanies(companyQuery);
    }



}
