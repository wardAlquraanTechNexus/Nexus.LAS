using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Constants.Enums;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.UpdateLawFirm
{
    public class UpdateLawFirmCommand : UpdateBaseCommand
    {
        public int Id { get; set; }
        public string LawFirmCode { get; set; }
        public string EnglishName { get; set; } = null!;
        public string ArabicName { get; set; } = null!;
        public string ShortName { get; set; } = null!;
        public CommonStatus Status { get; set; }
        public DateTime? LasDate { get; set; }
        public int? EstYear { get; set; }
        public string? Website { get; set; }
        public bool Private { get; set; }
    }
}