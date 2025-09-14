using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Application.DTOs.DocumentDTOs;

public class DocumentReletedRegisterDto
{
    public int Id { get; set; }
    public string RegisterIdc { get; set; }
    public int RegisterIdn { get; set; }
    public bool Owner { get; set; }
}