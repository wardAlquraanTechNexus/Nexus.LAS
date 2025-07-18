using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.CreatePerson.Commands
{
    public class CreatePersonCommand: IRequest<int>
    {
        public string FirstNameEn {  get; set; }
        public string? MiddleNameEn {  get; set; } = string.Empty;
        public string LastNameEn {  get; set; }
        public string FirstNameAr {  get; set; }
        public string? MiddleNameAr {  get; set; }
        public string LastNameAr {  get; set; }
        public string ShortName {  get; set; }
    }
}
