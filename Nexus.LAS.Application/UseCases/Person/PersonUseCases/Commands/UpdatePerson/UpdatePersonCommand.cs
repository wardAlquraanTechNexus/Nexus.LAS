using MediatR;
using Nexus.LAS.Application.DTOs.PersonDTOs;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.UpdatePerson;

public class UpdatePersonCommand: IRequest<GetPersonsDto>
{
    public int Id { get; set; }
    public string PersonEnglishName { get; set; }
    public string PersonArabicName { get; set; }
    public string PersonShortName { get; set; }
    public int? PersonStatus { get; set; }
    public bool? Private { get; set; }
}
