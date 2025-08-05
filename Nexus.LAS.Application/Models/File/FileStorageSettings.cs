using System.ComponentModel.DataAnnotations;

namespace Nexus.LAS.Application.Models.File
{
    public class FileStorageSettings
    {
        [Required]
        public string ConnectionString { get; set; } = string.Empty;
        
        [Required]
        public string MaxFileSize { get; set; } = string.Empty;

        [Required]
        public string ProfilePicturesContainer { get; set; } = string.Empty;
        [Required]
        public string ProfilePicturesFolder { get; set; } = string.Empty;

       
    }
}
