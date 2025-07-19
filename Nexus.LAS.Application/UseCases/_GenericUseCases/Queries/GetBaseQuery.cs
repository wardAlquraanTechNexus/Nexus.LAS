using MediatR;
using Microsoft.AspNetCore.Http;
using Nexus.LAS.Domain.Entities.Base;

namespace Nexus.LAS.Application.UseCases._GenericUseCases.Queries
{
    public class GetBaseQuery<Response>: IRequest<Response> 
    {
        public IQueryCollection Query {  get; set; }
    }
}
