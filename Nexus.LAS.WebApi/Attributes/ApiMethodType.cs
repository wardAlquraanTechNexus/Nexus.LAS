using Nexus.LAS.Domain.Constants.Enums;

namespace Nexus.LAS.WebApi.Attributes
{
    [AttributeUsage(AttributeTargets.Method, Inherited = false, AllowMultiple = false)]
    public class ApiMethodTypeAttribute : Attribute
    {
        public MethodType Method { get; }

        public ApiMethodTypeAttribute(MethodType method)
        {
            Method = method;
        }
    }
}