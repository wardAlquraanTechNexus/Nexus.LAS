using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Constants.Enums;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetPaging
{
    public class GetPagingLawFirmQuery : GetBasePagingQuery<LawFirmDto>
    {
        public string? SearchBy { get; set; } = string.Empty;
        public string? Fid { get; set; }
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
                    Statuses = _status.Split(',').Select(x => Enum.Parse<CommonStatus>(x)).ToList();
                }
                else
                {
                    Statuses = new();
                }
            }

        }
        private string? _status;

        public List<CommonStatus> Statuses { get; set; } = new();
        public string? EnglishName { get; set; } = null!;
        public string? ArabicName { get; set; } = null!;
        public string? ShortName { get; set; } = null!;
        public int? ExpertiseId { get; set; }
        public int CountryId { get; set; }
        public string OrderBy { get; set; } = "Id";
        public string OrderDir { get; set; } = "desc";


    }
}