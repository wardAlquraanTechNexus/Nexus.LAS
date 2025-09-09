using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmBranchUseCases.Commands.UpdateLawFirmBranch
{
    public class UpdateLawFirmBranchHandler : UpdateBaseCommandHandler<LawFirmBranch, UpdateLawFirmBranchCommand, ILawFirmBranchService>
    {
        public UpdateLawFirmBranchHandler(ILawFirmBranchService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}