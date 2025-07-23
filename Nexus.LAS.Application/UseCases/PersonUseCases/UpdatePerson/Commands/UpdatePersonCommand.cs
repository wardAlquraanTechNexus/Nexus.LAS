using MediatR;
using Nexus.LAS.Application.DTOs.PersonDTOs;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.UpdatePerson.Commands
{
    public class UpdatePersonCommand: IRequest<GetAllPersonDto>
    {
        public int Id { get; set; }
        public string FirstNameEn { get; set; }
        public string? MiddleNameEn { get; set; } = string.Empty;
        public string LastNameEn { get; set; }
        public string FirstNameAr { get; set; }
        public string? MiddleNameAr { get; set; }
        public string LastNameAr { get; set; }
        public int? PersonStatus { get; set; }
        public bool? Private { get; set; }
        public string ShortName { get; set; }
    }
}
