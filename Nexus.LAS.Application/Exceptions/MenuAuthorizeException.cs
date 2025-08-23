using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Exceptions
{
    public class MenuAuthorizeException: Exception
    {
        public string Message { get;set; }
        public MenuAuthorizeException(string message) : base(message)
        {
            Message = message;
        }
    }
}
