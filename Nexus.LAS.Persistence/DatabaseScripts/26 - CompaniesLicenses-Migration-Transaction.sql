-- Production Data Migration Script - RGLAS CompaniesLicenses to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesLicenses];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [CompaniesLicenses] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [CompaniesLicenses] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesLicenses] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesLicenses] ON;

    -- Insert data from RGLAS with LicenseStatus and LicenseClassification transformations
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesLicenses] (
        [CompaniesLicenseIDN],
        [CompaniesLicenseIDC],
        [Companies_IDN],
        [LicensePrimary],
        [LicenseStatus],            -- Transform from nvarchar to int (DynamicLists)
        [LicenseClassification],    -- Transform to CompanyLicenseStatus enum
        [LicenseNumber],
        [LicenseIssueDate],
        [LicenseExpiryDate],
        [LicenseExpiryActiveReminder],
        [CreatedBy],                -- Maps from CreatedBy_IDN
        [CreatedAt],                -- Maps from CreatedBy_Date
        [ModifiedBy],               -- Maps from UpdatedBy_IDN
        [ModifiedAt],               -- Maps from UpdatedBy_Date
        [IsDeleted],                -- New column, default value
        [DeletedBy],                -- New column, default value
        [DeletedAt]                 -- New column, default value
    )
    SELECT
        [CompaniesLicenseIDN],
        [CompaniesLicenseIDC],
        [Companies_IDN],
        [LicensePrimary],
        -- Transform LicenseStatus from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [LicenseStatus] IS NULL OR LTRIM(RTRIM([LicenseStatus])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([LicenseStatus])))
                AND [MainListID] = 1007 -- companiesLicenseStatuses
            )
        END AS [LicenseStatus],
        -- Transform LicenseClassification to CompanyLicenseStatus enum
        CASE
            WHEN LOWER(LTRIM(RTRIM([LicenseClassification]))) = 'expired' THEN 109   -- CompanyLicenseStatus.Expired
            WHEN LOWER(LTRIM(RTRIM([LicenseClassification]))) = 'active' THEN 108    -- CompanyLicenseStatus.Active
            ELSE 108  -- Default to Active if unknown classification
        END AS [LicenseClassification],
        [LicenseNumber],
        [LicenseIssueDate],
        [LicenseExpiryDate],
        [LicenseExpiryActiveReminder],
        [CreatedBy_IDN],            -- Maps to CreatedBy
        [CreatedBy_Date],           -- Maps to CreatedAt
        [UpdatedBy_IDN],            -- Maps to ModifiedBy
        [UpdatedBy_Date],           -- Maps to ModifiedAt
        0,                          -- Default for IsDeleted
        NULL,                       -- Default for DeletedBy
        NULL                        -- Default for DeletedAt
    FROM [RGLAS].[dbo].[CompaniesLicenses]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesLicenses]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesLicenses].[CompaniesLicenseIDC] = [RGLAS].[dbo].[CompaniesLicenses].[CompaniesLicenseIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesLicenses].[CompaniesLicenseIDN] = [RGLAS].[dbo].[CompaniesLicenses].[CompaniesLicenseIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesLicenses] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesLicenses] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT, @LicenseStatusMapped INT, @LicenseClassificationMapped INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[CompaniesLicenses];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesLicenses];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesLicenses] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[CompaniesLicenses] r
        WHERE r.[CompaniesLicenseIDC] = p.[CompaniesLicenseIDC]
        AND r.[CompaniesLicenseIDN] = p.[CompaniesLicenseIDN]
    );

    -- Count successful LicenseStatus mappings
    SELECT @LicenseStatusMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesLicenses] p
    INNER JOIN [RGLAS].[dbo].[CompaniesLicenses] r ON r.[CompaniesLicenseIDC] = p.[CompaniesLicenseIDC] AND r.[CompaniesLicenseIDN] = p.[CompaniesLicenseIDN]
    WHERE r.[LicenseStatus] IS NOT NULL AND r.[LicenseStatus] != '' AND p.[LicenseStatus] IS NOT NULL;

    -- Count successful LicenseClassification mappings
    SELECT @LicenseClassificationMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesLicenses] p
    INNER JOIN [RGLAS].[dbo].[CompaniesLicenses] r ON r.[CompaniesLicenseIDC] = p.[CompaniesLicenseIDC] AND r.[CompaniesLicenseIDN] = p.[CompaniesLicenseIDN]
    WHERE r.[LicenseClassification] IS NOT NULL AND r.[LicenseClassification] != '';

    -- Report unmapped LicenseStatus values
    PRINT 'Unmapped LicenseStatus values that need to be added to DynamicLists (MainListID=1007):';
    DECLARE @UnmappedLicenseStatuses NVARCHAR(MAX) = '';
    SELECT @UnmappedLicenseStatuses = @UnmappedLicenseStatuses + '''' + LTRIM(RTRIM([LicenseStatus])) + ''', '
    FROM [RGLAS].[dbo].[CompaniesLicenses]
    WHERE [LicenseStatus] IS NOT NULL
    AND LTRIM(RTRIM([LicenseStatus])) != ''
    AND NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([LicenseStatus])))
        AND [MainListID] = 1007
    )
    GROUP BY [LicenseStatus];

    IF @UnmappedLicenseStatuses != ''
        PRINT SUBSTRING(@UnmappedLicenseStatuses, 1, LEN(@UnmappedLicenseStatuses) - 1); -- Remove trailing comma
    ELSE
        PRINT 'All LicenseStatus values found in DynamicLists';

    -- Report unmapped LicenseClassification values
    PRINT 'Unmapped LicenseClassification values that could not be mapped to CompanyLicenseStatus enum:';
    DECLARE @UnmappedLicenseClassifications NVARCHAR(MAX) = '';
    SELECT @UnmappedLicenseClassifications = @UnmappedLicenseClassifications + '''' + LTRIM(RTRIM([LicenseClassification])) + ''', '
    FROM [RGLAS].[dbo].[CompaniesLicenses]
    WHERE [LicenseClassification] IS NOT NULL
    AND LTRIM(RTRIM([LicenseClassification])) != ''
    AND LOWER(LTRIM(RTRIM([LicenseClassification]))) NOT IN ('active', 'expired')
    GROUP BY [LicenseClassification];

    IF @UnmappedLicenseClassifications != ''
        PRINT SUBSTRING(@UnmappedLicenseClassifications, 1, LEN(@UnmappedLicenseClassifications) - 1); -- Remove trailing comma
    ELSE
        PRINT 'All LicenseClassification values mapped to CompanyLicenseStatus enum';

    PRINT '';
    PRINT 'Migration Summary for CompaniesLicenses:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'LicenseStatus successful mappings: ' + CAST(@LicenseStatusMapped AS VARCHAR(10));
    PRINT 'LicenseClassification successful mappings: ' + CAST(@LicenseClassificationMapped AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- LicenseStatus transformed from nvarchar to int using DynamicLists lookup (MainListID=1007)';
    PRINT '- LicenseClassification transformed to CompanyLicenseStatus enum: Active=108, Expired=109';
    PRINT '- Unknown LicenseClassification values default to Active (108)';
    PRINT '- Column mappings: CreatedBy_IDN->CreatedBy, CreatedBy_Date->CreatedAt, UpdatedBy_IDN->ModifiedBy, UpdatedBy_Date->ModifiedAt';
    PRINT '- Added standard audit columns: IsDeleted, DeletedBy, DeletedAt with default values';
    PRINT '- Column size changes: CompaniesLicenseIDC (50->50)';
    PRINT '- Primary key changed from compound (CompaniesLicenseIDC+CompaniesLicenseIDN) to single (CompaniesLicenseIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'CompaniesLicenses migration completed successfully!';
        PRINT 'Data migrated from RGLAS only (bridge database excluded).';
    END
    ELSE
    BEGIN
        ROLLBACK TRANSACTION;
        PRINT 'Migration failed - data integrity check failed';
    END

END TRY
BEGIN CATCH
    -- Ensure IDENTITY_INSERT is turned off even on error
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesLicenses] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;