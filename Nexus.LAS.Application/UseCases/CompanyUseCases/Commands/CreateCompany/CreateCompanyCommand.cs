using MediatR;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Commands;

public class CreateCompanyCommand : IRequest<int>
{
    public DateTime? IncorporationDate { get; set; }
    public string CompanyEnglishName { get; set; }
    public string CompanyArabicName { get; set; }
    public string CompanyShortName { get; set; }
    public string CompanyType { get; set; }
    public string CompanyClassIdn { get; set; }
    public string LegalType { get; set; }
    public string PlaceOfRegistrationMainIdn { get; set; }
    public string PlaceOfRegistrationSubIdn { get; set; }
}
