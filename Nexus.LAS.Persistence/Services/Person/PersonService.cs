using AutoMapper;
using EFCore.BulkExtensions;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts._Repositories._PersonRepos;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllActivePerson;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;
using QuestPDF.Fluent;
using QuestPDF.Helpers;

namespace Nexus.LAS.Persistence.Services
{
    public class PersonService : GenericService<Person>, IPersonService
    {
        private readonly IMapper _mapper;
        private readonly IPersonRepo _personRepo;
        public PersonService(NexusLASDbContext context, IPersonRepo personRepo, IUserIdentityService userIdentityService, IMapper mapper) : base(context, userIdentityService,personRepo)
        {
            _mapper = mapper;
            _personRepo = personRepo;
        }

        public async Task<PersonDto> GetPersonDto(int id)
        {
            
            RegisterFileRepo registerFileRepo = new RegisterFileRepo(_context);

            var person = await _personRepo.GetAsync(id);

            var fileData = await registerFileRepo.GetLastByIds(EntityIDCs.Person, id);

            var personDto = _mapper.Map<PersonDto>(person);

            personDto.PersonImage = fileData?.Data;
            personDto.FileName = fileData?.Name;
            personDto.ContentType = fileData?.ContentType;

            return personDto;


        }


        public async Task<PagingResult<Person>> GetPersons(GetPersonsQuery personQuery)
        {
            return await _personRepo.GetPersons(personQuery);
        }
        public async Task<List<Person>> GetAllPersons(GetAllPersonsQuery personQuery)
        {
            return await _personRepo.GetAllPersons(personQuery);
        }
        public async Task<PagingResult<Person>> GetActivePersons(GetAllActivePersonQuery personQuery)
        {
            return await _personRepo.GetActivePersons(personQuery);
        }

        public async override Task<int> CreateAsync(Person entity)
        {
            return await _personRepo.CreateAsync(entity);
        }
        public async Task<Person> UpdatePersonAsync(Person entity)
        {
            return await _personRepo.UpdatePersonAsync(entity);
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

            var person = await _personRepo.GetAsync(id);
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
                    page.Content()
                        .Column(column =>
                        {
                            column.Item().Background(Colors.Black).Padding(10).AlignCenter().Text("Person Details")
                                            .FontSize(20)
                                            .FontColor(Colors.White)
                                            .Bold();

                            column.Item().Text($"Name En: {person.PersonEnglishName}");
                            column.Item().Text($"Name Ar: {person.PersonArabicName}");
                            column.Item().Text($"Short Name: {person.PersonShortName}");

                            column.Item().Padding(10).Text(string.Empty);

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
                            
                            column.Item().Padding(10).Text(string.Empty);
                            
                            column.CreateTable(personsOtherDocuments, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Type", nameof(PersonsOtherDocument.DocumentType)),
                                    new PdfDisplayColumn("Document Description", nameof(PersonsOtherDocument.DocumentType)),
                                }, "Other Document Details");
                            
                            column.Item().Padding(10).Text(string.Empty);

                            column.CreateTable(personPhones, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Type", nameof(PersonsPhone.PhoneType)),
                                    new PdfDisplayColumn("Phone Number", nameof(PersonsPhone.PhoneNumber)),
                                    new PdfDisplayColumn("Phone Primary", nameof(PersonsPhone.PhonePrimary)),
                                }, "Phones");

                            column.Item().Padding(10).Text(string.Empty);

                            column.CreateTable(personEmails, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Email Primary", nameof(PersonsEmail.EmailPrimary)),
                                    new PdfDisplayColumn("Email", nameof(PersonsEmail.Email)),
                                }, "Emails");
                            
                            column.Item().Padding(10).Text(string.Empty);

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


        public async Task<UploadImageDto> UploadUserImage(UploadPersonImageCommand command)
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



    }
}
