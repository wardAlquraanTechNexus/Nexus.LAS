using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.UseCases.PersonIdDetail;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Services
{
    public class PersonIdDetailService : GenericService<PersonsIDDetail>, IPersonIdDetailService
    {
        private readonly IMapper _mapper;
        public PersonIdDetailService(NexusLASDbContext context, IUserIdentityService userIdentityService,
            IMapper mapper) : base(context, userIdentityService)
        {
            _mapper = mapper;
        }

        public async Task<int> CreatePersonIdDetail([FromForm] CreatePersonIdDetailCommand command)
        {
            using (var transaction = await _context.Database.BeginTransactionAsync())
            {
                try
                {
                    PersonIdDetailRepo repo = new PersonIdDetailRepo(_context);

                    var personIdDetail = _mapper.Map<PersonsIDDetail>(command);
                    var personIdDetailId = await repo.CreateAsync(personIdDetail);   



                    byte[] bytes;

                    using (var memoryStream = new MemoryStream())
                    {
                        await command.File.CopyToAsync(memoryStream);
                        bytes = memoryStream.ToArray();
                    }

                    RegisterFileRepo registerFileRepo = new RegisterFileRepo(_context);
                    RegisterFile registerFile = new RegisterFile
                    {
                        RegistersIdc = command.PersonsIDDetailIdc,
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
