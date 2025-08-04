using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Exceptions
{
    public class NotAuthorizedException : Exception
    {
        public NotAuthorizedException() : base("Authentication is required to access this resource.")
        {
        }
        
        public NotAuthorizedException(string message) : base(message) 
        {
            
        }

        public NotAuthorizedException(string message, Exception innerException) : base(message, innerException)
        {
        }

        public NotAuthorizedException(string resource, string requiredPermission) 
            : base($"Access to {resource} requires {requiredPermission} permission.")
        {
        }
    }
}
