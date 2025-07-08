using Microsoft.AspNetCore.Http;
using Nexus.LAS.Domain.Constants.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Base
{
    public class GetBaseQuery
    {
        public IQueryCollection query {  get; set; }
    }
}
