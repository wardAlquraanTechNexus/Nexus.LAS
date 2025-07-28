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
        public string PersonEnglishName {  get; set; }
        public string PersonArabicName {  get; set; }
        public string PersonShortName {  get; set; }
    }
}
