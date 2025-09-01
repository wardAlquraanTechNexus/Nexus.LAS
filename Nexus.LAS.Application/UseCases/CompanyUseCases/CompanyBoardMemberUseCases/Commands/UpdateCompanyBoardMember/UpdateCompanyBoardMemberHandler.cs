// UpdateCompanyBoardMemberHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.UpdateCompanyBoardMember;

public class UpdateCompanyBoardMemberHandler : UpdateBaseCommandHandler<CompanyBoardMember, UpdateCompanyBoardMemberCommand, ICompanyBoardMemberService>
{
    public UpdateCompanyBoardMemberHandler(ICompanyBoardMemberService service, IMapper mapper) : base(service, mapper)
    {
    }
}