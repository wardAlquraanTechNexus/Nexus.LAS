using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Exceptions
{
    public class ForbidException : Exception
    {
        public ForbidException() : base("Access to the requested resource is forbidden.")
        {
        }

        public ForbidException(string message) : base(message)
        {
        }

        public ForbidException(string message, Exception innerException) : base(message, innerException)
        {
        }

        public ForbidException(string resource, string action) : base($"Access to {resource} for {action} is forbidden.")
        {
        }
    }
}
