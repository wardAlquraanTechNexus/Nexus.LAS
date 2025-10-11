using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._PersonRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.PersonIdDetailUseCases.Commands.CreatePersonIdDetail;
using Nexus.LAS.Application.UseCases.PersonIdDetailUseCases.Commands.EditPersonIdDetail;
using Nexus.LAS.Application.UseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Repositories.RegisterFileRepositories;
using Nexus.LAS.Persistence.Services.Base;
using System.ComponentModel;

namespace Nexus.LAS.Persistence.Services
{
    public class PersonIdDetailService : GenericService<PersonsIDDetail>, IPersonIdDetailService
    {
        private readonly IPersonIdDetailRepo _repo;
        private readonly IRegisterFileRepo _registerFileRepo;
        private readonly IMapper _mapper;
        public PersonIdDetailService(NexusLASDbContext context, IUserIdentityService userIdentityService,
            IMapper mapper,IPersonIdDetailRepo repo , IRegisterFileRepo registerFileRepo) : base(context, userIdentityService, repo)
        {
            _mapper = mapper;
            _repo = repo;
            _registerFileRepo = registerFileRepo;
        }


        public async Task<PagingResult<PersonIdDetailDto>> GetPaging(GetPersonIdDetailPagingQuery param)
        {
            return await _repo.GetPaging(param);
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

                    RegisterFile registerFile = new RegisterFile
                    {
                        RegistersIdc = command.PersonsIDDetailIdc,
                        RegistersIdn = personIdDetailId,
                        Data = bytes,
                        ContentType = command.File.ContentType,
                        Name = command.File.FileName,
                    };


                    await _registerFileRepo.CreateAsync(registerFile);

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
                    var personIdDetail = await _repo.GetAsync(command.Id);
                    if(personIdDetail is null)
                    {
                        throw new Exception("The Id Detail not exist");
                    }
                    _mapper.Map(command, personIdDetail);
                    
                    var personIdDetailId = await _repo.UpdateAsync(personIdDetail);


                    if (command.File is not null)
                    {
                        

                        await _registerFileRepo.DeleteAsync(EntityIDCs.PersonIdDetail, command.Id);

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

                        await _registerFileRepo.CreateAsync(registerFile);
                    }else if(command.RemoveFile && command.File is null)
                    {
                        await _registerFileRepo.DeleteAsync(EntityIDCs.PersonIdDetail, command.Id);

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
                detailDto.Data = firstFile?.Data;
                detailDto.FileId = firstFile?.Id;

            }

            return detailDto;
        }
    }
}
