using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts._Repositories;
using Nexus.LAS.Application.Contracts._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.CompanyContractDTOs;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyContractService : GenericService<CompanyContract> , ICompanyContractService
{
    private readonly IRegisterFileRepo _registerFileRepo;
    private readonly IMapper _mapper;
    public CompanyContractService(NexusLASDbContext context, IUserIdentityService userIdentityService, ICompanyContractRepo repo, IRegisterFileRepo registerFileRepo , IMapper mapper) : base(context, userIdentityService , repo)
    {
        _registerFileRepo = registerFileRepo;
        _mapper = mapper;
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

}
