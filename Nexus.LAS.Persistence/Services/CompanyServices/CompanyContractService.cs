using AutoMapper;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyContractDTOs;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Commands.CreateCompanyContract;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Commands.UpdateCompanyContract;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyContractService : GenericService<CompanyContract> , ICompanyContractService
{
    private readonly IRegisterFileRepo _registerFileRepo;
    private readonly IMapper _mapper;
    private readonly ICompanyContractRepo _repo;
    public CompanyContractService(NexusLASDbContext context, IUserIdentityService userIdentityService, ICompanyContractRepo repo, IRegisterFileRepo registerFileRepo , IMapper mapper) : base(context, userIdentityService , repo)
    {
        _repo = repo;
        _registerFileRepo = registerFileRepo;
        _mapper = mapper;
    }

    public async Task<PagingResult<CompanyContractDto>> SearhDtoAsync(GetPagingCompanyContractQuery query)
    {
        return await _repo.SearhDtoAsync(query);
    }

    public async Task<int> CreateCompanyContract(CreateCompanyContractCommand command)
    {
        using (var transaction = await _context.Database.BeginTransactionAsync())
        {
            try
            {

                var companyContract = _mapper.Map<CompanyContract>(command);
                var companyContractId = await _repo.CreateAsync(companyContract);


                if(command.File is not null)
                {

                    RegisterFile registerFile = new RegisterFile
                    {
                        RegistersIdc = EntityIDCs.CompaniesContracts,
                        RegistersIdn = companyContractId,
                        ContentType = command.File.ContentType,
                        Name = command.File.FileName,
                    };


                    await _registerFileRepo.CreateAsync(registerFile, command.File);

                }
                    
                await transaction.CommitAsync();
                return companyContractId;

            }
            catch (Exception)
            {
                await transaction.RollbackAsync();
                throw;
            }

        }

    }


    public async Task<CompanyContractDto?> GetDTOAsync(int id)
    {
        
        var detail = await _repo.GetAsync(id);

        if (detail is null)
            throw new Exception("The id details not found");

        var fileData = await _registerFileRepo.GetByIds(EntityIDCs.CompaniesContracts, detail.Id);
        var firstFile = fileData.FirstOrDefault();
        
        var detailDto = _mapper.Map<CompanyContractDto>(detail);

        if (firstFile != null)
        {
            detailDto.FileName = firstFile?.Name;
            detailDto.ContentType = firstFile?.ContentType;
            detailDto.DataFile = firstFile?.Data;

        }

        return detailDto;
    }


    public async Task<int> EditCompanyContract(UpdateCompanyContractCommand command)
    {
        using (var transaction = await _context.Database.BeginTransactionAsync())
        {
            try
            {

                var companyContract = _mapper.Map<CompanyContract>(command);
                await _repo.UpdateAsync(companyContract);

                if (command.File is not null)
                {

                    await _registerFileRepo.DeleteAsync(EntityIDCs.CompaniesContracts, command.Id);
                    

                    // Add new file
                    byte[] bytes;
                    using (var memoryStream = new MemoryStream())
                    {
                        await command.File.CopyToAsync(memoryStream);
                        bytes = memoryStream.ToArray();
                    }

                    RegisterFile registerFile = new RegisterFile
                    {
                        RegistersIdc = EntityIDCs.CompaniesContracts,
                        RegistersIdn = command.Id,
                        Data = bytes,
                        ContentType = command.File.ContentType,
                        Name = command.File.FileName,
                    };

                    await _registerFileRepo.CreateAsync(registerFile);
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
