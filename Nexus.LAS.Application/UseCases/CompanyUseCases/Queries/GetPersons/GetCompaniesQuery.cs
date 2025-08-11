using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases.Base;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Queries;

public class GetCompaniesQuery: BaseParams , IRequest<PagingResult<GetCompaniesDto>>
{
    public string? SearchBy { get; set; }
    public string? Private 
    {
        get => _private;
        set
        {
            _private = value;
            if (!string.IsNullOrEmpty(_private))
            {
                Privates = _private.Split(',').Select(x=>Convert.ToBoolean(x)).ToList();
            }
            else
            {
                Privates = new();
            }
        }
    }
    private string? _private;
    public List<bool> Privates { get; set; } = new();
    public string? Status {
        get => _status; 
        set
        {
            _status = value;
            if (!string.IsNullOrEmpty(_status))
            {
                Statuses = _status.Split(',').Select(x=>Convert.ToInt32(x)).ToList();
            }
            else
            {
                Statuses = new();
            }
        }
        
    }
    private string? _status;

    public List<int> Statuses { get; set; } = new();
    public string? OrderBy { get; set; }
    public string? OrderDir { get; set; }
}
