using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetPaging
{
    public class GetPagingPropertyQuery : GetBasePagingQuery<PropertyDto>
    {
        public string? SearchBy { get; set; } = string.Empty;
        public int? PropertyId { get; set; }
        public int? TypeOfTitle { get; set; }
        public int? LocationCountryId { get; set; }

        public int? LocationCityId { get; set; }

        public int? LocationAreaId { get; set; }
        public int? Type { get; set; }

        public int? Purpose { get; set; }
        public string OrderBy { get; set; } = "Id";
        public string OrderDir { get; set; } = "desc";
        public string? Private
        {
            get => _private;
            set
            {
                _private = value;
                if (!string.IsNullOrEmpty(_private))
                {
                    Privates = _private.Split(',').Select(x => Convert.ToBoolean(x)).ToList();
                }
                else
                {
                    Privates = new();
                }
            }
        }
        private string? _private;
        public List<bool> Privates { get; set; } = new();
        public string? Status
        {
            get => _status;
            set
            {
                _status = value;
                if (!string.IsNullOrEmpty(_status))
                {
                    Statuses = _status.Split(',').Select(x => Convert.ToInt32(x)).ToList();
                }
                else
                {
                    Statuses = new();
                }
            }

        }
        private string? _status;

        public List<int> Statuses { get; set; } = new();
    }
}