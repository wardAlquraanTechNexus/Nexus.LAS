using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Persistence.Configurations
{
    public class PersonConfiguration : IEntityTypeConfiguration<Person>
    {
        public void Configure(EntityTypeBuilder<Person> builder)
        {
            // Create unique indexes for name fields
            builder.HasIndex(p => p.PersonEnglishName)
                .IsUnique()
                .HasDatabaseName("IX_Persons_PersonEnglishName_Unique");

            builder.HasIndex(p => p.PersonArabicName)
                .IsUnique()
                .HasDatabaseName("IX_Persons_PersonArabicName_Unique");

            builder.HasIndex(p => p.PersonShortName)
                .IsUnique()
                .HasDatabaseName("IX_Persons_PersonShortName_Unique");

            // Configure string lengths to match validation rules
            builder.Property(p => p.PersonEnglishName)
                .HasMaxLength(200);

            builder.Property(p => p.PersonArabicName)
                .HasMaxLength(200);

            builder.Property(p => p.PersonShortName)
                .HasMaxLength(100);
        }
    }
}