using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Persistence.Configurations
{
    public class PersonEmailConfiguration : IEntityTypeConfiguration<PersonsEmail>
    {
        public void Configure(EntityTypeBuilder<PersonsEmail> builder)
        {
            builder.HasIndex(p => p.Email)
                           .IsUnique()
                           .HasDatabaseName("IX_PersonsEmails_Email_Unique");

        }
    }
}
