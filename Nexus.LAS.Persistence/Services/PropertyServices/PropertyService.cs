using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetShared;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;
using QuestPDF.Fluent;
using QuestPDF.Helpers;

namespace Nexus.LAS.Persistence.Services.PropertyServices;

public class PropertyService : GenericService<Property>, IPropertyService
{
    private readonly IPropertyRepo _repo;
    private readonly IDynamicListRepo _dynamicListRepo;
    private readonly IPropertyDocumentRepo _propertyDocumentRepo;
    private readonly IPropertyOwnerRepo _propertyOwnerRepo;
    private readonly IRegisterNoteRepo _registerNoteRepo;
    public PropertyService(NexusLASDbContext context, IUserIdentityService userIdentityService, IPropertyRepo repo, IDynamicListRepo dynamicListRepo, IPropertyDocumentRepo propertyDocumentRepo, IPropertyOwnerRepo propertyOwnerRepo, IRegisterNoteRepo registerNoteRepo)
        : base(context, userIdentityService, repo)
    {
        _repo = repo;
        _dynamicListRepo = dynamicListRepo;
        _propertyDocumentRepo = propertyDocumentRepo;
        _propertyOwnerRepo = propertyOwnerRepo;
        _registerNoteRepo = registerNoteRepo;
    }

    public async Task<PagingResult<Property>> GetPagingProperties(GetPagingPropertyQuery propertyQuery)
    {   
        return await _repo.GetPagingProperties(propertyQuery);
    }

    public async Task<int> BulkChangeStatus(List<int> propertyIds, int status)
    {
        return await _repo.BulkChangeStatus(propertyIds, status);
    }

    public async Task<int> BulkChangePrivate(List<int> propertyIds, bool privateValue)
    {
        return await _repo.BulkChangePrivate(propertyIds, privateValue);
    }

    public async Task<PagingResult<SharedPropertyDTO>> GetSharedProperties(GetSharedPropertyQuery query)
    {
        return await _repo.GetSharedProperties(query);
    }

    public async Task<byte[]> ExportToPdf(int id)
    {



        var property = await _repo.GetAsync(id);
        if (property == null)
            throw new Exception("Company not found");

        string typeOfTitle = string.Empty;
        string country = string.Empty;
        string city = string.Empty;
        string area = string.Empty;
        string type = string.Empty;
        string purpose = string.Empty;

        if (property.TypeOfTitle is > 0)
        {
            typeOfTitle = await _dynamicListRepo.GetNameById(property.TypeOfTitle);
        }
        if (property.LocationCountryId.HasValue)
        {
            country = await _dynamicListRepo.GetNameById(property.LocationCountryId.Value);
        }
        if (property.LocationCityId.HasValue)
        {
            city = await _dynamicListRepo.GetNameById(property.LocationCityId.Value);
        }
        if (property.LocationAreaId.HasValue)
        {
            area = await _dynamicListRepo.GetNameById(property.LocationAreaId.Value);
        }
        if (property.Type.HasValue)
        {
            type = await _dynamicListRepo.GetNameById(property.Type.Value);
        }
        
        if (property.Purpose.HasValue)
        {
            purpose = await _dynamicListRepo.GetNameById(property.Type.Value);
        }

        var notes = await _registerNoteRepo.GetNotesByRegisterIdcAndId(EntityIDCs.Properties, property.Id);


        var propertyOwners = await _propertyOwnerRepo.GetOwnersByPropertyId(property.Id);
        Dictionary<int, string> peopertyOwnersDynamicList = new Dictionary<int, string>();

        if (propertyOwners != null && propertyOwners.Count > 0)
        {
            peopertyOwnersDynamicList = await _dynamicListRepo.GetDictionaryByIds(propertyOwners.Where(x=>x.Relation.HasValue).Select(x => x.Relation.Value).ToList());

        }

        string grantor = property.Grantor is true ? "Yes" : "No";
        string commencmentDate = property.GrantorTitleCommencementDate.HasValue ? property.GrantorTitleCommencementDate.Value.ToString("dd/MM/yyyy") : string.Empty;
        string expiryDate = property.GrantorTitleExpiryDate.HasValue ? property.GrantorTitleExpiryDate.Value.ToString("dd/MM/yyyy") : string.Empty;
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
                        titleColumn.Item().AlignCenter().Text("Legal Assistance System")
                            .FontSize(16)
                            .FontColor("#1e3a8a")
                            .Bold()
                            .FontFamily("Arial");

                        titleColumn.Item().PaddingTop(5).AlignCenter().Text("Property Report")
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
                         column.Item().Padding(4).Text(string.Empty);

                        column.Item().Background("#f8fafc").BorderBottom(2).BorderColor("#e2e8f0").Padding(12).AlignCenter().Text("Property Details")
                                        .FontSize(18)
                                        .FontColor("#334155")
                                        .Bold();

                        column.Item().Row(row =>
                        {
                            row.ConstantItem(140).Text("Type Of Title:").Bold();
                            row.RelativeItem().Text(typeOfTitle ?? "-");
                        });
                        column.Item().Padding(3).Text(string.Empty);
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(140).Text("Grantor:").Bold();
                            row.RelativeItem().Text(grantor ?? "-");
                        });
                        column.Item().Padding(3).Text(string.Empty);
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(140).Text("Grantor Address:").Bold();
                            row.RelativeItem().Text(property.GrantorAddress ?? "-");
                        });
                        column.Item().Padding(3).Text(string.Empty);
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(140).Text("Commencement Date:").Bold();
                            row.RelativeItem().Text(commencmentDate ?? "-");
                        });
                        column.Item().Padding(3).Text(string.Empty);
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(140).Text("Expiry Date:").Bold();
                            row.RelativeItem().Text(expiryDate ?? "-");
                        });
                        column.Item().Padding(3).Text(string.Empty);
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(140).Text("Description:").Bold();
                            row.RelativeItem().Text(property.GrantorDescription ?? "-");
                        });
                        column.Item().Padding(3).Text(string.Empty);
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(140).Text("Country Name:").Bold();
                            row.RelativeItem().Text(country ?? "-");
                        });
                        column.Item().Padding(3).Text(string.Empty);
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(140).Text("City:").Bold();
                            row.RelativeItem().Text(city ?? "-");
                        });
                        column.Item().Padding(3).Text(string.Empty);
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(140).Text("Area:").Bold();
                            row.RelativeItem().Text(area ?? "-");
                        });
                        column.Item().Padding(3).Text(string.Empty);
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(140).Text("Details:").Bold();
                            row.RelativeItem().Text(property.LocationDetails ?? "-");
                        });
                        column.Item().Padding(3).Text(string.Empty);
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(140).Text("Type:").Bold();
                            row.RelativeItem().Text(type ?? "-");
                        });
                        column.Item().Padding(3).Text(string.Empty);
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(140).Text("Purpose:").Bold();
                            row.RelativeItem().Text(purpose ?? "-");
                        });

                        column.Item().Padding(4).Text(string.Empty);

                        column.CreateTable(notes, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Note", nameof(RegistersNote.RegistersNotesText)),
                                    new PdfDisplayColumn("Note Date", nameof(RegistersNote.NoteDate)),
                                }, "Notes");

                        column.Item().Padding(4).Text(string.Empty);
                        column.CreateTable(propertyOwners, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Owner Type", nameof(PropertyOwnerDto.OwnerType)),
                                    new PdfDisplayColumn("Owner", nameof(PropertyOwnerDto.RegisterName) ),
                                    new PdfDisplayColumn("Relation", nameof(PropertyOwnerDto.Relation) , peopertyOwnersDynamicList ),
                                    new PdfDisplayColumn("Start Date", nameof(PropertyOwnerDto.OwnStartDate)  ),
                                    new PdfDisplayColumn("Finish Date", nameof(PropertyOwnerDto.OwnFinishDate)  ),
                                    new PdfDisplayColumn("Active", nameof(PropertyOwnerDto.OwnActive)  ),
                                }, "Owners");




                    });
            });
        });

        using var ms = new MemoryStream();
        document.GeneratePdf(ms);
        return ms.ToArray();
    }


}