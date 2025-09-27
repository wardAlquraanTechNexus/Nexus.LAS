using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._LawFirmRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.LawFirmServices
{
    public class LawFirmService : GenericService<LawFirm>, ILawFirmService
    {
        private readonly ILawFirmRepo _repo;
        public LawFirmService(
            NexusLASDbContext context,
            IUserIdentityService userIdentityService,
            ILawFirmRepo repo
        ) : base(context, userIdentityService, repo)
        {
            _repo = repo;
        }
        public async Task<PagingResult<LawFirmDto>> GetPagingLawFirms(GetPagingLawFirmQuery query)
        {
            return await _repo.GetPagingLawFirms(query);
        }
        public async Task<int> BulkChangeStatus(List<int> ids, CommonStatus status)
        {
            return await _repo.BulkChangeStatus(ids, status);
        }

        public async Task<int> BulkChangePrivate(List<int> ids, bool privateValue)
        {
            return await _repo.BulkChangePrivate(ids, privateValue);
        }

        public async Task<LawFirmDto?> GetDTOById(int id)
        {
            return await _repo.GetDTOById(id);
        }
    }
}