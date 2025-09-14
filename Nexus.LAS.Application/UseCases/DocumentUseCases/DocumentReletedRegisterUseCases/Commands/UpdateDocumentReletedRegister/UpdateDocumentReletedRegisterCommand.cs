using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentReletedRegisterUseCases.Commands.UpdateDocumentReletedRegister;

public class UpdateDocumentReletedRegisterCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public string RegisterIdc { get; set; }
    public int RegisterIdn { get; set; }
    public bool Owner { get; set; }
}