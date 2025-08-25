using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyLicenseService : GenericService<CompanyLicense>, ICompanyLicenseService
{
    private readonly ICompanyLicenseRepo _repo;
    public CompanyLicenseService(NexusLASDbContext context, IUserIdentityService userIdentityService , ICompanyLicenseRepo repo) : base(context, userIdentityService)
    {
        _repo = repo;
    }

    public async Task<PagingResult<CompanyLicense>> GetPaging(GetCompanyLicensePagingQuery param)
    {
        return await _repo.GetPaging(param);
    }
}