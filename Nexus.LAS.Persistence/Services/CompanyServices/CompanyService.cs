using AutoMapper;
using DocumentFormat.OpenXml.Vml.Office;
using EFCore.BulkExtensions;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Queries;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;
using QuestPDF.Fluent;
using QuestPDF.Helpers;


namespace Nexus.LAS.Persistence.Services;

public class CompanyService : GenericService<Company>, ICompanyService
{
    private readonly IMapper _mapper;
    private readonly ICompanyRepo _repo;
    public CompanyService(NexusLASDbContext context,  IMapper mapper, IUserIdentityService userIdentityService, ICompanyRepo repo)
        : base(context, userIdentityService,repo)
    {
        _mapper = mapper;
        _repo = repo;
    }
    public async Task<GetCompanyDto> GetCompanyDto(int id)
    {
        var company = await _repo.GetAsync(id);

        var companyDto = _mapper.Map<GetCompanyDto>(company);

        return companyDto;
    }


    public async Task<PagingResult<Company>> GetCompanies(GetCompaniesQuery companyQuery)
    {
        return await _repo.GetCompanies(companyQuery);
    }

    public async override Task<int> CreateAsync(Company entity)
    {
        return await _repo.CreateAsync(entity);
    }
    public async Task<Company> UpdateCompanyAsync(Company entity)
    {
        return await _repo.UpdateCompanyAsync(entity);
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
        var companies = await _context.Companies.Where(x => companyIds.Contains(x.Id)).ToListAsync();
        var property = typeof(Company).GetProperty(propertyName);
        foreach (var company in companies)
        {
            property.SetValue(company, value);
            SetCodeIfActive(company);
        }
        await _context.BulkInsertOrUpdateAsync(companies);
        return companies;
    }

    private void SetCodeIfActive(Company company)
    {
        if(company.CompanyStatus == (int)CompanyStatus.Active)
        {
            company.CompanyCode = "CC" + company.Id.ToString().PadLeft(6, '0');
        }
    }


    public async Task<byte[]> ExportToPdf(int id)
    {

        CompanyEmailRepo companyEmailRepo = new(_context);
        CompanyPhoneRepo companyPhoneRepo = new(_context);
        CompanyAddressRepo companyAddressRepo = new(_context);

        var company = await _repo.GetAsync(id);

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
                                    new PdfDisplayColumn("Type", nameof(CompanyPhone.PhoneType)),
                                    new PdfDisplayColumn("Phone Number", nameof(CompanyPhone.PhoneNumber)),
                                    new PdfDisplayColumn("Phone Primary", nameof(CompanyPhone.PhonePrimary)),
                            }, "Phones");

                        column.Item().Padding(10).Text(string.Empty);

                        column.CreateTable(companyEmails, new List<PdfDisplayColumn>()
                            {
                                    new PdfDisplayColumn("Email Primary", nameof(CompanyEmail.EmailPrimary)),
                                    new PdfDisplayColumn("Email", nameof(CompanyEmail.Email)),
                            }, "Emails");

                        column.Item().Padding(10).Text(string.Empty);

                        column.CreateTable(companyAddress, new List<PdfDisplayColumn>()
                            {
                                    new PdfDisplayColumn("Address Primary", nameof(CompanyAddress.AddressPrimary)),
                                    new PdfDisplayColumn("Address 1", nameof(CompanyAddress.AddressLine1)),
                                    new PdfDisplayColumn("Address 2", nameof(CompanyAddress.AddressLine2)),
                                    new PdfDisplayColumn("Address 3", nameof(CompanyAddress.AddressLine3)),
                                    new PdfDisplayColumn("PO Box Numeber", nameof(CompanyAddress.PoBoxNumber)),
                                    new PdfDisplayColumn("PO Box City", nameof(CompanyAddress.PoBoxCity)),
                                    new PdfDisplayColumn("PO Box Country", nameof(CompanyAddress.PoBoxCountry)),
                            }, "Addresses");
                    });
            });
        });

        using var ms = new MemoryStream();
        document.GeneratePdf(ms);
        return ms.ToArray();
    }




}
