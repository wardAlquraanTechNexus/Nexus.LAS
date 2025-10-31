using MediatR;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Domain.Constants.Enums;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.UpdatePerson;

public class UpdatePersonCommand: IRequest<GetPersonsDto>
{
    public int Id { get; set; }
    public string PersonEnglishName { get; set; }
    public string PersonArabicName { get; set; }
    public string PersonShortName { get; set; }
    public CommonStatus? PersonStatus { get; set; }
    public bool? Private { get; set; }
    public DateTime? DateOfBirth { get; set; }
    public string? Nationality { get; set; }
    public List<int>? NationalityIds
    {
        get => _nationalityIds;
        set
        {
            _nationalityIds = value;
            if (value is not null && value.Any())
            {
                Nationality = string.Join(",", value);
            }
            else
            {
                Nationality = null;
            }
        }
    }
    public List<int>? _nationalityIds;

}
