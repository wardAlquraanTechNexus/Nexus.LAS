using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Constants.Enums;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.CreateLawFirm
{
    public class CreateLawFirmCommand : CreateBaseCommand
    {
        public string LawFirmCode { get; set; }
        public string EnglishName { get; set; } = null!;
        public string ArabicName { get; set; } = null!;
        public string ShortName { get; set; } = null!;
        public DateTime? LasDate { get; set; }
        public int? EstYear { get; set; }
        public string? Website { get; set; }
    }
}