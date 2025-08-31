// CreateCompanyBoardMemberHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.CreateCompanyBoardMember;

public class CreateCompanyBoardMemberHandler : CreateBaseCommandHandler<CompaniesBoardMember, CreateCompanyBoardMemberCommand, ICompanyBoardMemberService>
{
    public CreateCompanyBoardMemberHandler(ICompanyBoardMemberService service, IMapper mapper) : base(service, mapper)
    {
    }
}