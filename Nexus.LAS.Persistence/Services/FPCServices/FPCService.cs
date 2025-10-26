using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.FPCUseCases;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;
using QuestPDF.Fluent;
using QuestPDF.Helpers;

namespace Nexus.LAS.Persistence.Services.FPCServices;

public class FPCService : GenericService<FPC>, IFPCService
{
    private readonly IFPCRepo _repo;
    private readonly IDynamicListRepo _dynamicListRepo;
    private readonly IFPCsODRepo _fPCsODRepo;
    public FPCService(NexusLASDbContext context, IUserIdentityService userIdentityService, IFPCRepo repo, IDynamicListRepo dynamicListRepo, IFPCsODRepo fPCsODRepo)
        : base(context, userIdentityService, repo)
    {
        _repo = repo;
        _dynamicListRepo = dynamicListRepo;
        _fPCsODRepo = fPCsODRepo;
    }

    public async Task<List<FPCDto>> GetAllFPCs(GetAllFPCQuery query)
    {
        return await _repo.GetAllFPCs(query);
    }
    public async Task<PagingResult<FPCDto>> SearchFPCs(GetPagingFPCQuery query)
    {
        return await _repo.SearchFPCs(query);
    }

    public async Task<int> BulkChangeStatus(List<int> ids, CommonStatus status)
    {
        return await _repo.BulkChangeStatus(ids, status);
    }

    public async Task<int> BulkChangePrivate(List<int> ids, bool privateValue)
    {
        return await _repo.BulkChangePrivate(ids, privateValue);
    }
    public async Task<FPCDto?> GetDtoByIdAsync(int id)
    {
        return await _repo.GetDtoByIdAsync(id);
    }

    public async Task<byte[]> ExportToPdf(int id)
    {



        var fpc = await _repo.GetAsync(id);
        if (fpc == null)
            throw new Exception("FPC not found");

        string registerType = string.Empty;
        string registerName = string.Empty;

        if (fpc.RegisterIdc.Equals(EntityIDCs.Person))
        {
            registerType = "Person";
            registerName = (await _context.People.AsNoTracking().FirstOrDefaultAsync(p => p.Id == fpc.RegisterIdn))?.PersonEnglishName ?? string.Empty;
        }
        else if (fpc.RegisterIdc.Equals(EntityIDCs.Company))
        {
            registerType = "Company";
            registerName = (await _context.Companies.AsNoTracking().FirstOrDefaultAsync(c => c.Id == fpc.RegisterIdn))?.CompanyEnglishName ?? string.Empty;
        }

        var fpcOds = await _fPCsODRepo.SearchDto(new Application.UseCases.FPCUseCases.FPCsODUseCases.Queries.GetPaging.GetPagingFPCsODQuery()
        {
            FpcIdn = fpc.Id,
            Page = 1,
            PageSize = int.MaxValue
        });

        Dictionary<int, string> docTypes = new();
        if (fpcOds.TotalRecords > 0)
        {
            docTypes = await _dynamicListRepo.GetDictionaryByIds(fpcOds.Collection.Select(x => x.DocType).ToList());
        }
        
        Dictionary<int, string> actionTypes = new();
        if (fpcOds.TotalRecords > 0)
        {
            var actionTypeIds = fpcOds.Collection.Where(x => x.LastActionType.HasValue).Select(x => x.LastActionType!.Value).Distinct().ToList();

            if (actionTypeIds.Any())
            {
                actionTypes = await _dynamicListRepo.GetDictionaryByIds(actionTypeIds.ToList());
            }
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
                        titleColumn.Item().AlignCenter().Text("Legal Assistance System")
                            .FontSize(16)
                            .FontColor("#1e3a8a")
                            .Bold()
                            .FontFamily("Arial");

                        titleColumn.Item().PaddingTop(5).AlignCenter().Text("FPC Report")
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

                        column.Item().Background("#f8fafc").BorderBottom(2).BorderColor("#e2e8f0").Padding(12).AlignCenter().Text("FPC Details")
                                        .FontSize(18)
                                        .FontColor("#334155")
                                        .Bold();

                        column.Item().Padding(10).Text(string.Empty);


                        column.Item().Row(row =>
                        {
                            row.ConstantItem(120).Text("Type:").Bold();
                            row.RelativeItem().Text(registerType ?? "-");
                        });
                        column.Item().Padding(3).Text(string.Empty);
                        column.Item().Row(row =>
                        {
                            row.ConstantItem(120).Text("Registers:").Bold();
                            row.RelativeItem().Text(registerName ?? "-");
                        });


                        column.Item().Padding(4).Text(string.Empty);

                        column.CreateTable(fpcOds.Collection, new List<PdfDisplayColumn>()
                            {
                                    new PdfDisplayColumn("Doc Type", nameof(FPCODDto.DocType),docTypes),
                                    new PdfDisplayColumn("Description", nameof(FPCODDto.Description) ),
                                    new PdfDisplayColumn("Document Status", nameof(FPCODDto.LastActionType),actionTypes),
                                    new PdfDisplayColumn("Last Action Description", nameof(FPCODDto.LastActionDescription) ),

                            }, "Original Documents");

                        column.Item().Padding(10).Text(string.Empty);



                    });
            });
        });

        using var ms = new MemoryStream();
        document.GeneratePdf(ms);
        return ms.ToArray();
    }


}