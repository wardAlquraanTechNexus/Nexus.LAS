using AutoMapper;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._PersonRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases.PersonIdDetail.Commands.CreatePersonIdDetail;
using Nexus.LAS.Application.UseCases.PersonIdDetail.Commands.EditPersonIdDetail;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class PersonIdDetailService : GenericService<PersonsIDDetail>, IPersonIdDetailService
    {
        private readonly IMapper _mapper;
        public PersonIdDetailService(NexusLASDbContext context, IUserIdentityService userIdentityService,
            IMapper mapper,IPersonIdDetailRepo repo) : base(context, userIdentityService, repo)
        {
            _mapper = mapper;
        }

        public async Task<int> CreatePersonIdDetail(CreatePersonIdDetailCommand command)
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
        public async Task<int> EditPersonIdDetail(EditPersonIdDetailCommand command)
        {
            using (var transaction = await _context.Database.BeginTransactionAsync())
            {
                try
                {
                    PersonIdDetailRepo repo = new PersonIdDetailRepo(_context);

                    var personIdDetail = _mapper.Map<PersonsIDDetail>(command);
                    var personIdDetailId = await repo.UpdateAsync(personIdDetail);

                    if (command.File is not null)
                    {
                        RegisterFileRepo registerFileRepo = new RegisterFileRepo(_context);
                        
                        // Delete existing files for this ID detail
                        var existingFiles = await registerFileRepo.GetByIds(personIdDetail.PersonsIDDetailIdc, command.Id);
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
                            RegistersIdc = personIdDetail.PersonsIDDetailIdc,
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

        public async Task<PersonIdDetailDto?> GetDTOAsync(int id)
        {
            PersonIdDetailRepo repo = new PersonIdDetailRepo(_context);
            RegisterFileRepo registerFileRepo = new RegisterFileRepo(_context);

            var detail = await repo.GetAsync(id);

            if (detail is null)
                throw new Exception("The id details not found");

            var detailDto = _mapper.Map<PersonIdDetailDto>(detail);

            var fileData = await registerFileRepo.GetByIds(detail.PersonsIDDetailIdc, detail.Id);
            var firstFile = fileData.FirstOrDefault();

            if (firstFile != null)
            {
                detailDto.FileName = firstFile?.Name;
                detailDto.ContentType = firstFile?.ContentType;
                detailDto.DataFile = firstFile?.Data;

            }

            return detailDto;
        }
    }
}
