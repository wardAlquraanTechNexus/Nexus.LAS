using MediatR;
using Nexus.LAS.Application.DTOs.Base;

namespace Nexus.LAS.Application.DTOs
{
    public class GroupDTO
    {
        public int Id { get; set; }
        public string GroupName { get; set; }
        public string Description { get; set; }
    }
}
