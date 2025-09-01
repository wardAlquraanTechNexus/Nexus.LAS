using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyBoardUseCases.Commands.Create
{
    public class CreateCompanyBoardCommand: CreateBaseCommand
    {
        public int CompanyId { get; set; }
        public DateTime BoardDate { get; set; }
        public bool BoardActive { get; set; }

    }
}
