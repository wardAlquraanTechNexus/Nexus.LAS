using AutoMapper;
using DocumentFormat.OpenXml.Office.CoverPageProps;
using DocumentFormat.OpenXml.Vml.Office;
using EFCore.BulkExtensions;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.Models;
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
    private readonly IDynamicListRepo _dynamicListRepo;
    private readonly ICompanyActivityRepo _companyActivityRepo;
    IOptions<AppSettings> _appSettings;
    public CompanyService(
        NexusLASDbContext context,  
        IMapper mapper, 
        IUserIdentityService userIdentityService, 
        ICompanyRepo repo , 
        IDynamicListRepo dynamicListRepo , 
        ICompanyActivityRepo companyActivityRepo, 
        IOptions<AppSettings> appSettings)
        : base(context, userIdentityService,repo)
    {
        _mapper = mapper;
        _repo = repo;
        _dynamicListRepo = dynamicListRepo;
        _companyActivityRepo = companyActivityRepo;
        _appSettings = appSettings;
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



        var company = await _repo.GetAsync(id);
        if(company == null)
            throw new Exception("Company not found");
        
        string companyTypeName = string.Empty;
        string companyClassName = string.Empty;
        string companyLegalForm = string.Empty;
        string placeOfRegistration = string.Empty;
        string city = string.Empty;
        
        if(company.CompanyTypeIdn.HasValue)
        {
            companyTypeName = await _dynamicListRepo.GetNameById(company.CompanyTypeIdn.Value);
        }
        if(company.CompanyClassIdn.HasValue)
        {
            companyClassName = await _dynamicListRepo.GetNameById(company.CompanyClassIdn.Value);
        }
        if(company.LegalTypeIdn.HasValue)
        {
            companyLegalForm = await _dynamicListRepo.GetNameById(company.LegalTypeIdn.Value);
        }
        if(company.PlaceOfRegistrationMainIdn.HasValue)
        {
            placeOfRegistration = await _dynamicListRepo.GetNameById(company.PlaceOfRegistrationMainIdn.Value);
        }
        if(company.PlaceOfRegistrationSubIdn.HasValue)
        {
            city = await _dynamicListRepo.GetNameById(company.PlaceOfRegistrationSubIdn.Value);
        }

        var companyActivies = await _companyActivityRepo.GetListByCompanyId(company.Id);
        Dictionary<int, string> companyActivitiesDynamicList = new Dictionary<int, string>();
        
        if(companyActivies != null && companyActivies.Count > 0)
        {
            companyActivitiesDynamicList = await _dynamicListRepo.GetDictionaryByIds(companyActivies.Select(x=>x.Activity).ToList());

        }
        var document = Document.Create(container =>
        {
            container.Page(page =>
            {
                page.Margin(30);
                page.Size(PageSizes.A4);

                page.Header().Height(100).Background("#f8fafc").Padding(15).Row(header =>
                {
                    header.ConstantItem(80).Column(logoColumn =>
                    {
                        logoColumn.Item().AlignCenter().Border(1).BorderColor("#cccccc")
                            .Width(60).Height(60).AlignCenter().AlignMiddle()
                            .Text("LOGO").FontSize(10).FontColor("#888888");
                    });

                    header.RelativeItem().Column(titleColumn =>
                    {
                        titleColumn.Item().AlignCenter().Text("Legal Administration System")
                            .FontSize(16)
                            .FontColor("#1e3a8a")
                            .Bold()
                            .FontFamily("Arial");

                        titleColumn.Item().PaddingTop(5).AlignCenter().Text("Company Report")
                            .FontSize(14)
                            .FontColor("#374151")
                            .SemiBold()
                            .FontFamily("Arial");
                    });

                    header.ConstantItem(120).Column(dateColumn =>
                    {
                        dateColumn.Item().AlignRight().Text($"Generated: {DateTime.Now:dd/MM/yyyy}")
                            .FontSize(8)
                            .FontColor("#6b7280")
                            .FontFamily("Arial");

                        dateColumn.Item().AlignRight().Text($"Time: {DateTime.Now:HH:mm}")
                            .FontSize(8)
                            .FontColor("#6b7280")
                            .FontFamily("Arial");
                    });
                });

                page.Content()
                    .Column(column =>
                    {
                        column.Item().Background(Colors.Black).Padding(10).AlignCenter().Text("Company Details")
                                        .FontSize(20)
                                        .FontColor(Colors.White)
                                        .Bold();

                        column.Item().Row(row =>
                        {
                            row.ConstantItem(120).Text("Incorporation Date:").Bold();
                            row.RelativeItem().Text(company.IncorporationDate?.ToString("dd/MM/yyyy") ?? "-");
                        });
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(120).Text("Name En:").Bold();
                            row.RelativeItem().Text(company.CompanyEnglishName ?? "-");
                        });
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(120).Text("Name Ar:").Bold();
                            row.RelativeItem().Text(company.CompanyArabicName ?? "-");
                        });
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(120).Text("Short Name:").Bold();
                            row.RelativeItem().Text(company.CompanyShortName ?? "-");
                        });
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(120).Text("Company Type:").Bold();
                            row.RelativeItem().Text(companyTypeName ?? "-");
                        });
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(120).Text("Company Class:").Bold();
                            row.RelativeItem().Text(companyClassName ?? "-");
                        });
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(120).Text("Legal Form:").Bold();
                            row.RelativeItem().Text(companyLegalForm ?? "-");
                        });
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(120).Text("Place Of Registration:").Bold();
                            row.RelativeItem().Text(placeOfRegistration ?? "-");
                        });
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(120).Text("City:").Bold();
                            row.RelativeItem().Text(city ?? "-");
                        });
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(120).Text("Total Shares:").Bold();
                            row.RelativeItem().Text(company.TotalShares?.ToString() ?? "-");
                        });
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(120).Text("Capital Amount:").Bold();
                            row.RelativeItem().Text(company.CapitalAmount?.ToString("N2") ?? "-");
                        });
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(120).Text("Number Of Partners:").Bold();
                            row.RelativeItem().Text(company.NumberOfPartners?.ToString() ?? "-");
                        });

                        column.Item().Padding(10).Text(string.Empty);

                        column.CreateTable(companyActivies, new List<PdfDisplayColumn>()
                            {
                                    new PdfDisplayColumn("Activity", nameof(CompanyActivity.Activity) , companyActivitiesDynamicList),
                            }, "Activities" );

                        column.Item().Padding(10).Text(string.Empty);



                    });
            });
        });

        using var ms = new MemoryStream();
        document.GeneratePdf(ms);
        return ms.ToArray();
    }




}
