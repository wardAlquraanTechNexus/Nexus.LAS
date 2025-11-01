using AutoMapper;
using ClosedXML;
using ClosedXML.Excel;
using EFCore.BulkExtensions;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._PersonRepos;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.Models;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllActivePerson;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllPersonsByCompanyId;
using Nexus.LAS.Domain.CommonAttributes;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Repositories.RegisterFileRepositories;
using Nexus.LAS.Persistence.Services.Base;
using QuestPDF.Fluent;
using QuestPDF.Helpers;
using System.Reflection;
using System.Text;

namespace Nexus.LAS.Persistence.Services
{
    public class PersonService : GenericService<Person>, IPersonService
    {
        private readonly IMapper _mapper;
        private readonly IPersonRepo _repo;
        private readonly IDynamicListRepo _dynamicListRepo;
        private readonly IOptions<AppSettings> _appSettings;

        public PersonService(NexusLASDbContext context, IPersonRepo personRepo, IUserIdentityService userIdentityService, IMapper mapper, IOptions<AppSettings> appSettings, IDynamicListRepo dynamicListRepo) : base(context, userIdentityService, personRepo)
        {
            _mapper = mapper;
            _repo = personRepo;
            _appSettings = appSettings;
            this._dynamicListRepo = dynamicListRepo;
        }

        public async Task<PersonDto> GetPersonDto(int id)
        {

            RegisterFileRepo registerFileRepo = new RegisterFileRepo(_context);

            var persons = await _repo.GetPersons(new GetPersonsQuery()
            {
                Id = id
            });

            var personDto = persons.Collection.FirstOrDefault(x => x.Id == id);
            var fileData = await registerFileRepo.GetLastByIds(EntityIDCs.Person, id);


            personDto.PersonImage = fileData?.Data;
            personDto.FileName = fileData?.Name;
            personDto.ContentType = fileData?.ContentType;

            return personDto;


        }


        public async Task<PagingResult<PersonDto>> GetPersons(GetPersonsQuery personQuery)
        {
            return await _repo.GetPersons(personQuery);
        }
        public async Task<List<PersonDto>> GetAllPersons(GetPersonsQuery personQuery)
        {
            return await _repo.GetAllPersons(personQuery);
        }
        public async Task<PagingResult<Person>> GetActivePersons(GetAllActivePersonQuery personQuery)
        {
            return await _repo.GetActivePersons(personQuery);
        }

        public async override Task<int> CreateAsync(Person entity)
        {
            return await _repo.CreateAsync(entity);
        }
        public async Task<Person> UpdatePersonAsync(Person entity)
        {
            return await _repo.UpdatePersonAsync(entity);
        }

        public async Task<int> BulkChangeStatus(List<int> personIds, int status)
        {
            using var transaction = await _context.Database.BeginTransactionAsync();

            try
            {
                var persons = await BulkEditProperty<int>(personIds, nameof(Person.PersonStatus), status);
                await transaction.CommitAsync();
                return persons.Count;

            }
            catch
            {
                await transaction.RollbackAsync();
                throw;
            }
        }
        public async Task<int> BulkChangePrivate(List<int> personIds, bool isPrivate)
        {
            using var transaction = await _context.Database.BeginTransactionAsync();

            try
            {
                var persons = await BulkEditProperty<bool>(personIds, nameof(Person.Private), isPrivate);
                await transaction.CommitAsync();
                return persons.Count;

            }
            catch
            {
                await transaction.RollbackAsync();
                throw;
            }
        }

        public async Task<bool> IsPersonEnglishNameUniqueAsync(string personEnglishName, int? excludeId = null)
        {
            var query = _context.People.Where(p => p.PersonEnglishName == personEnglishName);

            if (excludeId.HasValue)
            {
                query = query.Where(p => p.Id != excludeId.Value);
            }

            return !await query.AnyAsync();
        }

        public async Task<bool> IsPersonArabicNameUniqueAsync(string personArabicName, int? excludeId = null)
        {
            var query = _context.People.Where(p => p.PersonArabicName == personArabicName);

            if (excludeId.HasValue)
            {
                query = query.Where(p => p.Id != excludeId.Value);
            }

            return !await query.AnyAsync();
        }

        public async Task<bool> IsPersonShortNameUniqueAsync(string personShortName, int? excludeId = null)
        {
            var query = _context.People.Where(p => p.PersonShortName == personShortName);

            if (excludeId.HasValue)
            {
                query = query.Where(p => p.Id != excludeId.Value);
            }

            return !await query.AnyAsync();
        }

        private async Task<List<Person>> BulkEditProperty<V>(List<int> personIds, string propertyName, V value)
        {
            var people = await _context.People.Where(x => personIds.Contains(x.Id)).ToListAsync();
            var property = typeof(Person).GetProperty(propertyName);
            foreach (var person in people)
            {
                property.SetValue(person, value);
            }
            await _context.BulkInsertOrUpdateAsync(people);
            return people;
        }


        public async Task<byte[]> ExportToPdf(int id)
        {
            PersonIdDetailRepo personIdDetailRepo = new(_context);
            PersonOtherDocumentRepo personOtherDocumentRepo = new(_context);
            PersonEmailRepo personEmailRepo = new(_context);
            PersonPhoneRepo personPhoneRepo = new(_context);
            PersonAddressRepo personAddressRepo = new(_context);

            var person = await _repo.GetAsync(id);
            var personIdDetails = await personIdDetailRepo.GetListByPersonId(id);
            var personsOtherDocuments = await personOtherDocumentRepo.GetListByPersonId(id);
            var personEmails = await personEmailRepo.GetListByPersonId(id);
            var personPhones = await personPhoneRepo.GetListByPersonId(id);
            var personAddress = await personAddressRepo.GetListByPersonId(id);

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

                            titleColumn.Item().PaddingTop(5).AlignCenter().Text("Person Report")
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

                            column.Item().Background("#f8fafc").BorderBottom(2).BorderColor("#e2e8f0").Padding(12).AlignCenter().Text("Person Details")
                                            .FontSize(18)
                                            .FontColor("#334155")
                                            .Bold();
                            column.Item().Padding(4).Text(string.Empty);

                            column.Item().Row(row =>
                            {
                                row.ConstantItem(120).Text("Name En:").Bold();
                                row.RelativeItem().Text(person.PersonEnglishName ?? "-");
                            });
                            column.Item().Padding(3).Text(string.Empty);
                            column.Item().Row(row =>
                            {
                                row.ConstantItem(120).Text("Name Ar:").Bold();
                                row.RelativeItem().Text(person.PersonArabicName ?? "-");
                            });
                            column.Item().Padding(3).Text(string.Empty);
                            column.Item().Row(row =>
                            {
                                row.ConstantItem(120).Text("Short Name:").Bold();
                                row.RelativeItem().Text(person.PersonShortName ?? "-");
                            });

                            column.Item().Padding(4).Text(string.Empty);

                            column.CreateTable(personIdDetails, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Type", nameof(PersonsIDDetail.Type)),
                                    new PdfDisplayColumn("Nationality", nameof(PersonsIDDetail.Nationality)),
                                    new PdfDisplayColumn("Place Of Issue", nameof(PersonsIDDetail.PlaceOfIssue)),
                                    new PdfDisplayColumn("Number", nameof(PersonsIDDetail.IDNumber)),
                                    new PdfDisplayColumn("Issue Date", nameof(PersonsIDDetail.IDIssueDate)),
                                    new PdfDisplayColumn("Expiry Date", nameof(PersonsIDDetail.ExpiryDate)),
                                    new PdfDisplayColumn("Primary", nameof(PersonsIDDetail.IsPrimary)),
                                }, "Document Details");

                            column.Item().Padding(4).Text(string.Empty);

                            column.CreateTable(personsOtherDocuments, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Type", nameof(PersonsOtherDocument.DocumentType)),
                                    new PdfDisplayColumn("Document Description", nameof(PersonsOtherDocument.DocumentType)),
                                }, "Other Document Details");

                            column.Item().Padding(4).Text(string.Empty);

                            column.CreateTable(personPhones, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Type", nameof(PersonsPhone.PhoneType)),
                                    new PdfDisplayColumn("Phone Number", nameof(PersonsPhone.PhoneNumber)),
                                    new PdfDisplayColumn("Phone Primary", nameof(PersonsPhone.PhonePrimary)),
                                }, "Phones");

                            column.Item().Padding(4).Text(string.Empty);

                            column.CreateTable(personEmails, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Email Primary", nameof(PersonsEmail.EmailPrimary)),
                                    new PdfDisplayColumn("Email", nameof(PersonsEmail.Email)),
                                }, "Emails");

                            column.Item().Padding(4).Text(string.Empty);

                            column.CreateTable(personAddress, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Address Primary", nameof(PersonsAddress.AddressPrimary)),
                                    new PdfDisplayColumn("Address 1", nameof(PersonsAddress.AddressLine1)),
                                    new PdfDisplayColumn("Address 2", nameof(PersonsAddress.AddressLine2)),
                                    new PdfDisplayColumn("Address 3", nameof(PersonsAddress.AddressLine3)),
                                    new PdfDisplayColumn("Po Box Numeber", nameof(PersonsAddress.POBoxNumber)),
                                    new PdfDisplayColumn("Po Box City", nameof(PersonsAddress.POBoxCity)),
                                    new PdfDisplayColumn("Po Box Country", nameof(PersonsAddress.POBoxCountry)),
                                }, "Addresses");
                        });
                });
            });

            using var ms = new MemoryStream();
            document.GeneratePdf(ms);
            return ms.ToArray();
        }


        public async Task<FileDto> UploadUserImage([FromForm] UploadPersonImageCommand command)
        {
            RegisterFileRepo registerFileRepo = new RegisterFileRepo(_context);


            RegisterFile registerFile = new RegisterFile
            {
                RegistersIdc = EntityIDCs.Person,
                RegistersIdn = command.PersonId,
                ContentType = command.File.ContentType,
                Name = command.File.FileName,
            };


            await registerFileRepo.CreateAsync(registerFile, command.File);
            return new UploadUserImageDto()
            {
                ContentType = command.File.ContentType,
                FileName = command.File.FileName,
                Data = registerFile.Data
            };
        }

        public async Task<List<PersonDto>> GetAllPersonsCompanyAsync(GetAllPersonsCompanyQuery query)
        {
            return await _repo.GetAllPersonsCompany(query);
        }

        public async Task<byte[]> ExportToExcel(ExportPersonToExcelQuery query)
        {
            var data = await _repo.GetAllPersons(new GetPersonsQuery()
            {
                Id = query.Id,
                SearchBy = query.SearchBy
            });


            var nationalities = await _dynamicListRepo.GetDictionaryByParentId(_appSettings.Value.DynamicListRoots.country);


            using (var workbook = new XLWorkbook())
            {
                var worksheet = workbook.Worksheets.Add(nameof(Person));
                var properties = typeof(PersonDto).GetProperties().Where(p => !p.HasAttribute<IgnoreOnExportAttribute>()).ToArray();
                SetHeader(worksheet, properties);

                // Add autofilter to header row
                var propertyNames = properties.Select(x => x.Name).ToArray();

                int row = 2;
                foreach (var item in data)
                {
                    for (int col = 0; col < properties.Length; col++)
                    {
                        var prop = properties[col];
                        object? value = properties[col].GetValue(item);
                        if (properties[col].Name == nameof(PersonDto.Nationality) && value is not null)
                        {

                            var valueBuilder = new List<string>();
                            foreach (var nationality in value.ToString().Split(','))
                            {
                                var nationalityKey = Convert.ToInt32(nationality);
                                if (nationalities.ContainsKey(nationalityKey))
                                {
                                    valueBuilder.Add(nationalities[nationalityKey]);
                                }
                            }
                            value = string.Join( ',', valueBuilder);
                        }

                        worksheet.Cell(row, col + 1).Value = value is null ? string.Empty : value.ToString();
                    }
                    row++;
                }
                worksheet.Columns().AdjustToContents();

                using (var stream = new MemoryStream())
                {
                    workbook.SaveAs(stream);
                    stream.Seek(0, SeekOrigin.Begin);
                    return stream.ToArray();
                }
            }
        }

    }
}
