using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Persistence.Configurations;

public class CompanyConfiguration : IEntityTypeConfiguration<Company>
{
    public void Configure(EntityTypeBuilder<Company> builder)
    {
        // Create unique indexes for name fields
        builder.HasIndex(c => c.CompanyEnglishName)
            .IsUnique()
            .HasDatabaseName("IX_Companies_CompanyEnglishName_Unique");

        builder.HasIndex(c => c.CompanyArabicName)
            .IsUnique()
            .HasDatabaseName("IX_Companies_CompanyArabicName_Unique");

        builder.HasIndex(c => c.CompanyShortName)
            .IsUnique()
            .HasDatabaseName("IX_Companies_CompanyShortName_Unique");

        // Configure string lengths to match validation rules
        builder.Property(c => c.CompanyEnglishName)
            .HasMaxLength(100);

        builder.Property(c => c.CompanyArabicName)
            .HasMaxLength(100);

        builder.Property(c => c.CompanyShortName)
            .HasMaxLength(50);
    }
}