using MediatR;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.CreatePerson;

public class CreatePersonCommand: IRequest<int>
{
    public string PersonEnglishName { get; set; } = null!;
    public string PersonArabicName { get; set; } = null!;
    public string PersonShortName { get; set; } = null!;
}
