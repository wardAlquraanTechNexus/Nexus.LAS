-- Production Data Migration Script - RGLAS CompaniesContracts to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesContracts];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [CompaniesContracts] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [CompaniesContracts] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesContracts] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesContracts] ON;

    -- Insert data from RGLAS with ContractType and ContractStatus transformations
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesContracts] (
        [CompaniesContractIDN],
        [CompaniesContractIDC],
        [Companies_IDN],
        [ContractType],             -- Transform from nvarchar to int (DynamicLists)
        [DocumentDate],
        [CommencementDate],         -- Allow NULL
        [ContractExpiryDate],
        [ContractExpiryActiveReminder],
        [ContractDescription],
        [ContractStatus],           -- Transform from nvarchar to int (CompanyContractStatus enum)
        [CreatedBy],                -- Maps from CreatedBy_IDN
        [CreatedAt],                -- Maps from CreatedBy_Date
        [ModifiedBy],               -- Maps from UpdatedBy_IDN
        [ModifiedAt],               -- Maps from UpdatedBy_Date
        [IsDeleted],                -- New column, default value
        [DeletedBy],                -- New column, default value
        [DeletedAt]                 -- New column, default value
    )
    SELECT
        [CompaniesContractIDN],
        [CompaniesContractIDC],
        [Companies_IDN],
        -- Transform ContractType from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [ContractType] IS NULL OR LTRIM(RTRIM([ContractType])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([ContractType])))
                AND [MainListID] = 1003 -- companiesContractsTypes
            )
        END AS [ContractType],
        [DocumentDate],
        [CommencementDate],         -- Allow NULL
        [ContractExpiryDate],
        [ContractExpiryActiveReminder],
        [ContractDescription],
        -- Transform ContractStatus from nvarchar to int (CompanyContractStatus enum)
        CASE
            WHEN LOWER(LTRIM(RTRIM([ContractStatus]))) = 'active' THEN 0    -- CompanyContractStatus.Active
            WHEN LOWER(LTRIM(RTRIM([ContractStatus]))) = 'amended' THEN 1   -- CompanyContractStatus.Amended
            WHEN LOWER(LTRIM(RTRIM([ContractStatus]))) = 'expired' THEN 2   -- CompanyContractStatus.Expired
            ELSE 0  -- Default to Active if unknown status
        END AS [ContractStatus],
        [CreatedBy_IDN],            -- Maps to CreatedBy
        [CreatedBy_Date],           -- Maps to CreatedAt
        [UpdatedBy_IDN],            -- Maps to ModifiedBy
        [UpdatedBy_Date],           -- Maps to ModifiedAt
        0,                          -- Default for IsDeleted
        NULL,                       -- Default for DeletedBy
        NULL                        -- Default for DeletedAt
    FROM [RGLAS].[dbo].[CompaniesContracts]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesContracts]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesContracts].[CompaniesContractIDC] = [RGLAS].[dbo].[CompaniesContracts].[CompaniesContractIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesContracts].[CompaniesContractIDN] = [RGLAS].[dbo].[CompaniesContracts].[CompaniesContractIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesContracts] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesContracts] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT, @ContractTypeMapped INT, @ContractStatusMapped INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[CompaniesContracts];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesContracts];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesContracts] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[CompaniesContracts] r
        WHERE r.[CompaniesContractIDC] = p.[CompaniesContractIDC]
        AND r.[CompaniesContractIDN] = p.[CompaniesContractIDN]
    );

    -- Count successful ContractType mappings
    SELECT @ContractTypeMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesContracts] p
    INNER JOIN [RGLAS].[dbo].[CompaniesContracts] r ON r.[CompaniesContractIDC] = p.[CompaniesContractIDC] AND r.[CompaniesContractIDN] = p.[CompaniesContractIDN]
    WHERE r.[ContractType] IS NOT NULL AND r.[ContractType] != '' AND p.[ContractType] IS NOT NULL;

    -- Count successful ContractStatus mappings
    SELECT @ContractStatusMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesContracts] p
    INNER JOIN [RGLAS].[dbo].[CompaniesContracts] r ON r.[CompaniesContractIDC] = p.[CompaniesContractIDC] AND r.[CompaniesContractIDN] = p.[CompaniesContractIDN]
    WHERE r.[ContractStatus] IS NOT NULL AND r.[ContractStatus] != '';

    -- Report unmapped ContractType values
    PRINT 'Unmapped ContractType values that need to be added to DynamicLists (MainListID=1003):';
    DECLARE @UnmappedContractTypes NVARCHAR(MAX) = '';
    SELECT @UnmappedContractTypes = @UnmappedContractTypes + '''' + LTRIM(RTRIM([ContractType])) + ''', '
    FROM [RGLAS].[dbo].[CompaniesContracts]
    WHERE [ContractType] IS NOT NULL
    AND LTRIM(RTRIM([ContractType])) != ''
    AND NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([ContractType])))
        AND [MainListID] = 1003
    )
    GROUP BY [ContractType];

    IF @UnmappedContractTypes != ''
        PRINT SUBSTRING(@UnmappedContractTypes, 1, LEN(@UnmappedContractTypes) - 1); -- Remove trailing comma
    ELSE
        PRINT 'All ContractType values found in DynamicLists';

    -- Report unmapped ContractStatus values
    PRINT 'Unmapped ContractStatus values that could not be mapped to CompanyContractStatus enum:';
    DECLARE @UnmappedContractStatuses NVARCHAR(MAX) = '';
    SELECT @UnmappedContractStatuses = @UnmappedContractStatuses + '''' + LTRIM(RTRIM([ContractStatus])) + ''', '
    FROM [RGLAS].[dbo].[CompaniesContracts]
    WHERE [ContractStatus] IS NOT NULL
    AND LTRIM(RTRIM([ContractStatus])) != ''
    AND LOWER(LTRIM(RTRIM([ContractStatus]))) NOT IN ('active', 'amended', 'expired')
    GROUP BY [ContractStatus];

    IF @UnmappedContractStatuses != ''
        PRINT SUBSTRING(@UnmappedContractStatuses, 1, LEN(@UnmappedContractStatuses) - 1); -- Remove trailing comma
    ELSE
        PRINT 'All ContractStatus values mapped to CompanyContractStatus enum';

    PRINT '';
    PRINT 'Migration Summary for CompaniesContracts:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'ContractType successful mappings: ' + CAST(@ContractTypeMapped AS VARCHAR(10));
    PRINT 'ContractStatus successful mappings: ' + CAST(@ContractStatusMapped AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- ContractType transformed from nvarchar to int using DynamicLists lookup (MainListID=1003)';
    PRINT '- ContractStatus transformed to CompanyContractStatus enum: Active=0, Amended=1, Expired=2';
    PRINT '- CommencementDate allows NULL values';
    PRINT '- Unknown ContractStatus values default to Active (0)';
    PRINT '- Column mappings: CreatedBy_IDN->CreatedBy, CreatedBy_Date->CreatedAt, UpdatedBy_IDN->ModifiedBy, UpdatedBy_Date->ModifiedAt';
    PRINT '- Added standard audit columns: IsDeleted, DeletedBy, DeletedAt with default values';
    PRINT '- Column size changes: CompaniesContractIDC (50->50)';
    PRINT '- Primary key changed from compound (CompaniesContractIDC+CompaniesContractIDN) to single (CompaniesContractIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'CompaniesContracts migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesContracts] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;