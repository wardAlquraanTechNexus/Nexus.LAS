using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.CreatePersonOtherDocument;
using Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.EditPersonOtherDocument;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class PersonOtherDocumentService : GenericService<PersonsOtherDocument>, IPersonOtherDocumentService
    {
        private readonly IMapper _mapper;
        public PersonOtherDocumentService(NexusLASDbContext context, IUserIdentityService userIdentityService, IMapper mapper,IPersonOtherDocumentRepo repo) : base(context, userIdentityService, repo)
        {
            _mapper = mapper;
        }

        public async Task<int> CreatePersonOtherDocument(CreatePersonOtherDocumentCommand command)
        {
            using (var transaction = await _context.Database.BeginTransactionAsync())
            {
                try
                {
                    PersonOtherDocumentRepo repo = new(_context);

                    var otherDocument = _mapper.Map<PersonsOtherDocument>(command);
                    var personIdDetailId = await repo.CreateAsync(otherDocument);


                    RegisterFileRepo registerFileRepo = new RegisterFileRepo(_context);
                    RegisterFile registerFile = new RegisterFile
                    {
                        RegistersIdc = command.PersonsOtherDocumentIdc,
                        RegistersIdn = personIdDetailId,
                        ContentType = command.File.ContentType,
                        Name = command.File.FileName,
                    };


                    await registerFileRepo.CreateAsync(registerFile , command.File);

                    await transaction.CommitAsync();
                    return personIdDetailId;

                }
                catch (Exception)
                {
                    await transaction.RollbackAsync();
                    throw;
                }

            }

        }

        public async Task<PersonOtherDocumentDTO?> GetDTOAsync(int id)
        {
            PersonOtherDocumentRepo repo = new(_context);
            RegisterFileRepo registerFileRepo = new RegisterFileRepo(_context);
            var detail = await repo.GetAsync(id);
            if (detail is null)
                throw new Exception("The other document details not found");

            var otherDocumentDto = _mapper.Map<PersonOtherDocumentDTO>(detail);

            var fileData = await registerFileRepo.GetByIds(detail.PersonsOtherDocumentIdc, detail.Id);
            var firstFile = fileData.FirstOrDefault();

            if (firstFile != null)
            {
                otherDocumentDto.FileName = firstFile?.Name;
                otherDocumentDto.ContentType = firstFile?.ContentType;
                otherDocumentDto.DataFile = firstFile?.Data;
            }

            return otherDocumentDto;
        }

        public async Task<int> EditPersonOtherDocument(EditPersonOtherDocumentCommand command)
        {
            using (var transaction = await _context.Database.BeginTransactionAsync())
            {
                try
                {
                    PersonOtherDocumentRepo repo = new(_context);

                    var personsOtherDocument = _mapper.Map<PersonsOtherDocument>(command);
                    await repo.UpdateAsync(personsOtherDocument);

                    if (command.File is not null)
                    {
                        RegisterFileRepo registerFileRepo = new RegisterFileRepo(_context);
                        
                        // Delete existing files for this document
                        var existingFiles = await registerFileRepo.GetByIds(personsOtherDocument.PersonsOtherDocumentIdc, command.Id);
                        foreach (var existingFile in existingFiles)
                        {
                            await registerFileRepo.DeleteAsync(existingFile.Id);
                        }

                        // Add new file
                        byte[] bytes;
                        using (var memoryStream = new MemoryStream())
                        {
                            await command.File.CopyToAsync(memoryStream);
                            bytes = memoryStream.ToArray();
                        }

                        RegisterFile registerFile = new RegisterFile
                        {
                            RegistersIdc = personsOtherDocument.PersonsOtherDocumentIdc,
                            RegistersIdn = command.Id,
                            Data = bytes,
                            ContentType = command.File.ContentType,
                            Name = command.File.FileName,
                        };

                        await registerFileRepo.CreateAsync(registerFile);
                    }


                    await transaction.CommitAsync();
                    return command.Id;

                }
                catch (Exception)
                {
                    await transaction.RollbackAsync();
                    throw;
                }

            }

        }



    }
}
