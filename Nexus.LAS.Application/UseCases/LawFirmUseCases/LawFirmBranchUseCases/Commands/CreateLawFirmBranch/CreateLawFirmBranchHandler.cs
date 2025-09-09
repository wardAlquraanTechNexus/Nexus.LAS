using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmBranchUseCases.Commands.CreateLawFirmBranch
{
    public class CreateLawFirmBranchHandler : CreateBaseCommandHandler<LawFirmBranch, CreateLawFirmBranchCommand, ILawFirmBranchService>
    {
        public CreateLawFirmBranchHandler(ILawFirmBranchService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}