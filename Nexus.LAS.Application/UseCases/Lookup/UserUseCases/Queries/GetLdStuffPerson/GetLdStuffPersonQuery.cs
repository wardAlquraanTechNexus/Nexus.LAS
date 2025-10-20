using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Lookup.UserUseCases.Queries.GetLdStuffPerson
{
    public class GetLdStuffPersonQuery:  GetBasePagingQuery<UserDto>
    {
        public string? EnglishName { get; set; }
    }
}
