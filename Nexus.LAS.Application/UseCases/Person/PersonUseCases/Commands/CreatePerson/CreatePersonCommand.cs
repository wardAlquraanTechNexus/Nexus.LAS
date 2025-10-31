using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.CreatePerson;

public class CreatePersonCommand : CreateBaseCommand
{
    public string PersonEnglishName { get; set; } = null!;
    public string PersonArabicName { get; set; } = null!;
    public string PersonShortName { get; set; } = null!;
    public DateTime? DateOfBirth { get; set; }
    public int? Nationality { get; set; }
}
