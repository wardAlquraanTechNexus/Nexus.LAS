using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyCapitalService : GenericService<CompanyCapital>, ICompanyCapitalService
{
    private readonly ICompanyCapitalRepo _repo;
    private readonly ICompanyShareHolderRepo _companyShareHolderRepo;
    public CompanyCapitalService(NexusLASDbContext context, IUserIdentityService userIdentityService, ICompanyCapitalRepo repo, ICompanyShareHolderRepo companyShareHolderRepo) : base(context, userIdentityService, repo)
    {
        _repo = repo;
        _companyShareHolderRepo = companyShareHolderRepo;
    }

    public async Task ValidateSingleActiveCapital(CompanyCapital capital)
    {
        if (capital.Id != 0 && capital.CapitalActive)
        {
            var oldCapital = await _repo.GetAsync(capital.Id);
            if(oldCapital is null)
            {
                throw new Exception("The capital not found");
            }

            if (!oldCapital.CapitalActive)
            {
                await _repo.ValidateSingleActiveCapital(capital);
            }
        }
        else if (capital.Id == 0 && capital.CapitalActive)
        {
            await _repo.ValidateSingleActiveCapital(capital);
        }
    }

    public async Task<bool> HasActiveCapitalAsync(int companyId)
    {
        return await _repo.HasActiveCapitalAsync(companyId);
    }

    public async Task<CompanyCapital?> GetActiveCapitalByCompanyIdAsync(int companyId)
    {
        return await _repo.GetActiveCapitalByCompanyIdAsync(companyId);
    }


    public override async Task UpdateAsync(CompanyCapital capital)
    {
        using var transaction = await _context.Database.BeginTransactionAsync();

        try
        {
            if (!capital.CapitalActive)
            {
                var oldCapital = await _repo.GetAsync(capital.Id);
                if (oldCapital.CapitalActive)
                {
                    var shareHolders = await _companyShareHolderRepo.GetListByCompanyId(capital.CompanyId);
                    foreach (var shareHolder in shareHolders)
                    {
                        shareHolder.ShareHolderActive = false;
                        await _companyShareHolderRepo.UpdateAsync(shareHolder);
                    }
                }
            }

            await base.UpdateAsync(capital);

            await transaction.CommitAsync();
        }
        catch
        {
            await transaction.RollbackAsync();
            throw; 
        }
    }

}
