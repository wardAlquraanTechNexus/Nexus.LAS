using AutoMapper;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyChamberOfCommerceDTOs;
using Nexus.LAS.Application.UseCases.CompanyUseCases.CompanyChamberOfCommerceUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;
using Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.CreateCompanyChamberOfCommerce;
using Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.UpdateCompanyChamberOfCommerce;

namespace Nexus.LAS.Persistence.Services;

public class CompanyChamberOfCommerceService : GenericService<CompanyChamberOfCommerce>, ICompanyChamberOfCommerceService
{
    private readonly IMapper _mapper;
    private readonly ICompanyChamberOfCommerceRepo _repo;
    private readonly IRegisterFileRepo _registerFileRepo;
    private readonly NexusLASDbContext _context;

    public CompanyChamberOfCommerceService(
        NexusLASDbContext context,
        IMapper mapper,
        ICompanyChamberOfCommerceRepo repo,
        IRegisterFileRepo registerFileRepo,
        IUserIdentityService userIdentityService)
        : base(context, userIdentityService, repo)
    {
        _mapper = mapper;
        _repo = repo;
        _registerFileRepo = registerFileRepo;
        _context = context;
    }

    public async Task<PagingResult<CompanyChamberOfCommerceDto>> SearhDtoAsync(GetPagingCompanyChamberOfCommerceQuery query)
    {
        return await _repo.SearhDtoAsync(query);
    }

    public async Task<int> CreateCompanyChamberOfCommerce(CreateCompanyChamberOfCommerceCommand command)
    {
        using (var transaction = await _context.Database.BeginTransactionAsync())
        {
            try
            {
                var chamber = _mapper.Map<CompanyChamberOfCommerce>(command);
                var chamberId = await _repo.CreateAsync(chamber);

                if (command.File != null)
                {
                    RegisterFile registerFile = new RegisterFile
                    {
                        RegistersIdc = EntityIDCs.CompaniesChamberOfCommerces,
                        RegistersIdn = chamberId,
                        ContentType = command.File.ContentType,
                        Name = command.File.FileName,
                    };

                    await _registerFileRepo.CreateAsync(registerFile, command.File);
                }

                await transaction.CommitAsync();
                return chamberId;
            }
            catch
            {
                await transaction.RollbackAsync();
                throw;
            }
        }
    }

    public async Task<bool> UpdateCompanyChamberOfCommerce(UpdateCompanyChamberOfCommerceCommand command)
    {
        using (var transaction = await _context.Database.BeginTransactionAsync())
        {
            try
            {
                var chamber = await _repo.GetAsync(command.Id);
                if (chamber == null)
                    throw new Exception("Company Chamber of Commerce not found.");

                _mapper.Map(command, chamber);
                await _repo.UpdateAsync(chamber);

                // Delete old files before adding the new one
                await _registerFileRepo.DeleteAsync(EntityIDCs.CompaniesChamberOfCommerces, chamber.Id);

                if (command.File != null)
                {
                    RegisterFile registerFile = new RegisterFile
                    {
                        RegistersIdc = EntityIDCs.CompaniesChamberOfCommerces,
                        RegistersIdn = chamber.Id,
                        ContentType = command.File.ContentType,
                        Name = command.File.FileName,
                    };

                    await _registerFileRepo.CreateAsync(registerFile, command.File);
                }

                await transaction.CommitAsync();
                return chamber.Id != 0;
            }
            catch
            {
                await transaction.RollbackAsync();
                throw;
            }
        }
    }
}
