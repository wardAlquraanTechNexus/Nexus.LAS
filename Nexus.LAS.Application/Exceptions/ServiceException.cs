using System;

namespace Nexus.LAS.Application.Exceptions
{
    public class ServiceException : Exception
    {
        public string? ServiceName { get; }
        public string? OperationName { get; }

        public ServiceException() : base("A service error occurred.")
        {
        }

        public ServiceException(string message) : base(message)
        {
        }

        public ServiceException(string message, Exception innerException) : base(message, innerException)
        {
        }

        public ServiceException(string serviceName, string operationName, string message) 
            : base($"Service '{serviceName}' failed during '{operationName}': {message}")
        {
            ServiceName = serviceName;
            OperationName = operationName;
        }

        public ServiceException(string serviceName, string operationName, string message, Exception innerException) 
            : base($"Service '{serviceName}' failed during '{operationName}': {message}", innerException)
        {
            ServiceName = serviceName;
            OperationName = operationName;
        }
    }
}