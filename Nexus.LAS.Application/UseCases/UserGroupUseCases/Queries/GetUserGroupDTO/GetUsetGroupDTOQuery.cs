using MediatR;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.UserGroupUseCases.Queries
{
    public class GetUsetGroupDTOQuery : BaseParams, IRequest<PagingResult<UserGroupDTO>>
    {
        public string? Username { get; set; }
        public string? GroupName { get; set; }
        public int? UserId { get; set; }
        public int? GroupId { get; set; }
        public string? OrderBy { get; set; }
        public string? OrderDir { get; set; }
    }
}
