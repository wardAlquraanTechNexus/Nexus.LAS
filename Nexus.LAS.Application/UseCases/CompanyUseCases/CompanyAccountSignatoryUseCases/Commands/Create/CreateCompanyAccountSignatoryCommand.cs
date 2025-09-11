using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Commands.Create
{
    public class CreateCompanyAccountSignatoryCommand : CreateBaseCommand
    {
        public int CompanyBankAccountId { get; set; }
        public int PersonId { get; set; }
        public int Rule { get; set; }
        public long FromAmount { get; set; }
        public long ToAmount { get; set; }
        public string? Description { get; set; }
        public DateTime? AccountSignatoryDate { get; set; }
        public DateTime? CessationDate
        {
            get => _cessationDate;
            set
            {
                _cessationDate = value;
                if (_cessationDate == null)
                {
                    AccountSignatoryActive = true;
                }
                else
                {
                    AccountSignatoryActive = false;
                }
            }
        }
        public DateTime? _cessationDate;

        public bool? AccountSignatoryActive;
    }
}
