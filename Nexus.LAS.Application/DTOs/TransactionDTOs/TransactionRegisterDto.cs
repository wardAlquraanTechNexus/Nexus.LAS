using System;

namespace Nexus.LAS.Application.DTOs.TransactionDTOs
{
    public class TransactionRegisterDto
    {
        public int Id { get; set; }
        public int TransactionId { get; set; }
        public string RegisterIdc { get; set; }
        public int RegisterId { get; set; }
        public bool? PrimaryRegister { get; set; }

    }
}