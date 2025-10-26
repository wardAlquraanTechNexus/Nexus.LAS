using DocumentFormat.OpenXml.Bibliography;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._LawFirmRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetAll;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;
using QuestPDF.Fluent;
using QuestPDF.Helpers;

namespace Nexus.LAS.Persistence.Services.LawFirmServices
{
    public class LawFirmService : GenericService<LawFirm>, ILawFirmService
    {
        private readonly ILawFirmRepo _repo;
        private readonly IRegisterNoteRepo _noteRepo;
        private readonly IDynamicListRepo _dynamicListRepo;
        public LawFirmService(
            NexusLASDbContext context,
            IUserIdentityService userIdentityService,
            ILawFirmRepo repo,
            IRegisterNoteRepo noteRepo,
            IDynamicListRepo dynamicListRepo
        ) : base(context, userIdentityService, repo)
        {
            _repo = repo;
            _noteRepo = noteRepo;
            _dynamicListRepo = dynamicListRepo;
        }
        public async Task<PagingResult<LawFirmDto>> GetPagingLawFirms(GetPagingLawFirmQuery query)
        {
            return await _repo.GetPagingLawFirms(query);
        }
        public async Task<List<LawFirmDto>> GetAllLawFirms(GetAllLawFirmQuery query)
        {
            return await _repo.GetAllLawFirms(query);
        }
        public async Task<int> BulkChangeStatus(List<int> ids, CommonStatus status)
        {
            return await _repo.BulkChangeStatus(ids, status);
        }

        public async Task<int> BulkChangePrivate(List<int> ids, bool privateValue)
        {
            return await _repo.BulkChangePrivate(ids, privateValue);
        }

        public async Task<LawFirmDto?> GetDTOById(int id)
        {
            return await _repo.GetDTOById(id);
        }


        public async Task<byte[]> ExportToPdf(int id)
        {



            var lawFirm = await _repo.GetAsync(id);
            if (lawFirm == null)
                throw new Exception("Transaction not found");


            var notes  = await _noteRepo.GetNotesByRegisterIdcAndId(EntityIDCs.LawFirmIDC, lawFirm.Id);

            var branchesQuery = _context.LawFirmsBranchs
                .Where(lfb => lfb.LawFirmId == lawFirm.Id)
                .AsNoTracking()
                .AsQueryable()
                .Select(x=> new { x.BranchName });

            var branches = await branchesQuery.ToListAsync();
            var counselsQuery = _context.LawFirmCounsels
                .Where(lfc => lfc.LawFirmId ==  lawFirm.Id)
                .AsNoTracking()
                .AsQueryable()
                .Select(x=> new { x.CounselLevel , x.Rate });


            var counsels = await counselsQuery.ToListAsync();

            Dictionary<int, string> counselLevelsDynamicList = new Dictionary<int, string>();

            if (counsels != null && counsels.Count > 0)
            {
                counselLevelsDynamicList = await _dynamicListRepo.GetDictionaryByIds(counsels.Select(x => x.CounselLevel).ToList());

            }

            var expertisesQuery = _context.LawFirmsExpertises
                .Where(lfe => lfe.LawFirmId == lawFirm.Id)
                .AsNoTracking()
                .AsQueryable()
                .Select(x=> new { x.ExpertiseName });

            var expertises = await expertisesQuery.ToListAsync();




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

                            titleColumn.Item().PaddingTop(5).AlignCenter().Text("Law Firm Report")
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
                            column.Item().Background(Colors.Black).Padding(10).AlignCenter().Text("Law Firm Details")
                                            .FontSize(20)
                                            .FontColor(Colors.White)
                                            .Bold();

                            column.Item().Padding(10).Text(string.Empty);


                            column.Item().Row(row =>
                            {
                                row.ConstantItem(120).Text("Name En:").Bold();
                                row.RelativeItem().Text(lawFirm.EnglishName ?? "-");
                            });
                            column.Item().Row(row =>
                            {
                                row.ConstantItem(120).Text("Name Ar:").Bold();
                                row.RelativeItem().Text(lawFirm.ArabicName ?? "-");
                            });
                            column.Item().Row(row =>
                            {
                                row.ConstantItem(120).Text("Short Name:").Bold();
                                row.RelativeItem().Text(lawFirm.ShortName ?? "-");
                            });


                            column.Item().Padding(10).Text(string.Empty);

                            column.CreateTable(notes, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Note", nameof(RegistersNote.RegistersNotesText)),
                                    new PdfDisplayColumn("Note Date", nameof(RegistersNote.NoteDate)),
                                }, "Notes");

                            column.Item().Padding(10).Text(string.Empty);

                            column.CreateTable(branches, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Branch Name", nameof(LawFirmBranch.BranchName)),
                                }, "Branches");

                            column.Item().Padding(10).Text(string.Empty);
                            
                            column.CreateTable(counsels, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Counsel Level", nameof(LawFirmCounsel.CounselLevel) , counselLevelsDynamicList),
                                }, "Counsels");

                            column.Item().Padding(10).Text(string.Empty);
                          
                            column.CreateTable(counsels, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Expertise Name", nameof(LawFirmExpertise.ExpertiseName) ),
                                }, "Expertises");

                            column.Item().Padding(10).Text(string.Empty);



                        });
                });
            });

            using var ms = new MemoryStream();
            document.GeneratePdf(ms);
            return ms.ToArray();
        }
    }
}