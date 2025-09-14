using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Application.DTOs.DocumentDTOs;

public class DocumentTrackingDto
{
    public int Id { get; set; }
    public string DocumentTrackingCode { get; set; }
    public string ReferenceNumber { get; set; }

    public int PersonId { get; set; }
    public string RegisterIdc { get; set; }
    public int RegisterIdn { get; set; }
    public string Description { get; set; }
}