using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Base
{
    public abstract class BaseParams
    {
        public int Page { get; set; } = 0;
        public int PageSize { get; set; } = 25;
        
    }
}
