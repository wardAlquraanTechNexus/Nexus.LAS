using Nexus.LAS.Application.DTOs.GroupMenuDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Lookup.Queries.GetAllMenusByGroup
{
    public class GetAllMenusByGroupQuery: GetBasePagingQuery<GroupMenuDTO>
    {
        public int GroupId { get; set; }
        public string OrderBy { get; set; } = "menuName";
        public string OrderDir { get; set; } = "asc";
    }
}
