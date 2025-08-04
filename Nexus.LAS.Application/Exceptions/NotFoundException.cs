namespace Nexus.LAS.Application.Exceptions
{
    public class NotFoundException : Exception
    {
        public NotFoundException(string name, object key) : base($"{name} ({key}) was not found")
        {
        }

        public NotFoundException(string message) : base(message)
        {
        }

        public NotFoundException(string message, Exception innerException) : base(message, innerException)
        {
        }

        public static NotFoundException ForEntity<T>(object id) where T : class
        {
            return new NotFoundException($"{typeof(T).Name} with id '{id}' was not found");
        }

        public static NotFoundException ForEntity<T>(string propertyName, object value) where T : class
        {
            return new NotFoundException($"{typeof(T).Name} with {propertyName} '{value}' was not found");
        }
    }
}
