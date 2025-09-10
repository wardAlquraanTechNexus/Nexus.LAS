using AutoMapper;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.CreateCompanyLicense;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.UpdateCompanyLicense;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Queries.GetPaging;
using Nexus.LAS.Application.DTOs.CompanyLicenseDTOs;

namespace Nexus.LAS.Persistence.Services;

public class CompanyLicenseService : GenericService<CompanyLicense>, ICompanyLicenseService
{
    private readonly IMapper _mapper;
    private readonly ICompanyLicenseRepo _repo;
    private readonly IRegisterFileRepo _registerFileRepo;
    private readonly NexusLASDbContext _context;

    public CompanyLicenseService(
        NexusLASDbContext context,
        IMapper mapper,
        ICompanyLicenseRepo repo,
        IRegisterFileRepo registerFileRepo,
        IUserIdentityService userIdentityService)
        : base(context, userIdentityService, repo)
    {
        _mapper = mapper;
        _repo = repo;
        _registerFileRepo = registerFileRepo;
        _context = context;
    }

    public async Task<int> CreateCompanyLicense(CreateCompanyLicenseCommand command)
    {
        using (var transaction = await _context.Database.BeginTransactionAsync())
        {
            try
            {
                var license = _mapper.Map<CompanyLicense>(command);
                var licenseId = await _repo.CreateAsync(license);

                if (command.File != null)
                {
                    RegisterFile registerFile = new RegisterFile
                    {
                        RegistersIdc = EntityIDCs.CompaniesLicenseIDC,
                        RegistersIdn = licenseId,
                        ContentType = command.File.ContentType,
                        Name = command.File.FileName,
                    };

                    await _registerFileRepo.CreateAsync(registerFile, command.File);
                }

                await transaction.CommitAsync();
                return licenseId;
            }
            catch
            {
                await transaction.RollbackAsync();
                throw;
            }
        }
    }

    public async Task<bool> UpdateCompanyLicense(UpdateCompanyLicenseCommand command)
    {
        using (var transaction = await _context.Database.BeginTransactionAsync())
        {
            try
            {
                var license = await _repo.GetAsync(command.Id);
                if (license == null)
                    throw new Exception("Company License not found.");

                _mapper.Map(command, license);
                await _repo.UpdateAsync(license);

                // Delete old files before adding the new one
                await _registerFileRepo.DeleteAsync(EntityIDCs.CompaniesLicenseIDC, license.Id);

                if (command.File != null)
                {
                    RegisterFile registerFile = new RegisterFile
                    {
                        RegistersIdc = EntityIDCs.CompaniesLicenseIDC,
                        RegistersIdn = license.Id,
                        ContentType = command.File.ContentType,
                        Name = command.File.FileName,
                    };

                    await _registerFileRepo.CreateAsync(registerFile, command.File);
                }

                await transaction.CommitAsync();
                return license.Id != 0;
            }
            catch
            {
                await transaction.RollbackAsync();
                throw;
            }
        }
    }

    public async Task<PagingResult<CompanyLicenseDto>> GetPaging(GetCompanyLicensePagingQuery param)
    {
        return await _repo.GetPaging(param);
    }
}