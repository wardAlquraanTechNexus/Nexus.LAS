using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Constants.Enums;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.GetPaging;

public class GetPagingFPCQuery : GetBasePagingQuery<FPCDto>
{
    public string SearchBy { get; set; } = string.Empty;

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

    public string OrderBy { get; set; } = "Id";
    public string OrderDir { get; set; } = "desc";
}