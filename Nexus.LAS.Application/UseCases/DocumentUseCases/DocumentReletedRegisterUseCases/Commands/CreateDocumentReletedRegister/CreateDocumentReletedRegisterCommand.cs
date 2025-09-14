using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentReletedRegisterUseCases.Commands.CreateDocumentReletedRegister;

public class CreateDocumentReletedRegisterCommand : CreateBaseCommand
{
    public string RegisterIdc { get; set; }
    public int RegisterIdn { get; set; }
    public bool Owner { get; set; }
}