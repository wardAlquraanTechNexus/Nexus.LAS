using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.UseCases.PersonIdDetail.Commands.CreatePersonIdDetail;
using Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.CreatePersonOtherDocument;
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
        public PersonOtherDocumentService(NexusLASDbContext context, IUserIdentityService userIdentityService, IMapper mapper) : base(context, userIdentityService)
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



                    byte[] bytes;

                    using (var memoryStream = new MemoryStream())
                    {
                        await command.File.CopyToAsync(memoryStream);
                        bytes = memoryStream.ToArray();
                    }

                    RegisterFileRepo registerFileRepo = new RegisterFileRepo(_context);
                    RegisterFile registerFile = new RegisterFile
                    {
                        RegistersIdc = command.PersonsOtherDocumentIdc,
                        RegistersIdn = personIdDetailId,
                        Data = bytes,
                        ContentType = command.File.ContentType,
                        Name = command.File.FileName,
                    };


                    await registerFileRepo.CreateAsync(registerFile);

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

    }
}
