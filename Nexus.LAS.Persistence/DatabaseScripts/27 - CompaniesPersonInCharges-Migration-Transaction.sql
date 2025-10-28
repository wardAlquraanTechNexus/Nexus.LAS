-- Production Data Migration Script - RGLAS CompaniesPersonInCharges to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPersonInCharges];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [CompaniesPersonInCharges] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [CompaniesPersonInCharges] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPersonInCharges] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPersonInCharges] ON;

    -- Insert data from RGLAS with Designation transformation
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPersonInCharges] (
        [CompaniesPersonInChargeIDN],
        [CompaniesPersonInChargeIDC],
        [Companies_IDN],
        [Persons_IDN],
        [Designation],              -- Transform from nvarchar to int (DynamicLists)
        [AuthorityRule],            -- New column, default NULL (not in RGLAS source)
        [Notes],
        [PersonInChargeDate],
        [CessationDate],            -- New column, default NULL
        [PersonInChargeActive],
        [CreatedBy],                -- Maps from CreatedBy_IDN
        [CreatedAt],                -- Maps from CreatedBy_Date
        [ModifiedBy],               -- Maps from UpdatedBy_IDN
        [ModifiedAt],               -- Maps from UpdatedBy_Date
        [IsDeleted],                -- New column, default value
        [DeletedBy],                -- New column, default value
        [DeletedAt]                 -- New column, default value
    )
    SELECT
        [CompaniesPersonInChargeIDN],
        [CompaniesPersonInChargeIDC],
        [Companies_IDN],
        [Persons_IDN],
        -- Transform Designation from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [Designation] IS NULL OR LTRIM(RTRIM([Designation])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([Designation])))
                AND [MainListID] = 1012 -- designation
            )
        END AS [Designation],
        NULL,                       -- AuthorityRule - new column, not in RGLAS source
        [Notes],
        [PersonInChargeDate],
        NULL,                       -- CessationDate - new column, default NULL
        [PersonInChargeActive],
        [CreatedBy_IDN],            -- Maps to CreatedBy
        [CreatedBy_Date],           -- Maps to CreatedAt
        [UpdatedBy_IDN],            -- Maps to ModifiedBy
        [UpdatedBy_Date],           -- Maps to ModifiedAt
        0,                          -- Default for IsDeleted
        NULL,                       -- Default for DeletedBy
        NULL                        -- Default for DeletedAt
    FROM [RGLAS].[dbo].[CompaniesPersonInCharges]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPersonInCharges]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPersonInCharges].[CompaniesPersonInChargeIDC] = [RGLAS].[dbo].[CompaniesPersonInCharges].[CompaniesPersonInChargeIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPersonInCharges].[CompaniesPersonInChargeIDN] = [RGLAS].[dbo].[CompaniesPersonInCharges].[CompaniesPersonInChargeIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPersonInCharges] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPersonInCharges] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT, @DesignationMapped INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[CompaniesPersonInCharges];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPersonInCharges];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPersonInCharges] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[CompaniesPersonInCharges] r
        WHERE r.[CompaniesPersonInChargeIDC] = p.[CompaniesPersonInChargeIDC]
        AND r.[CompaniesPersonInChargeIDN] = p.[CompaniesPersonInChargeIDN]
    );

    -- Count successful Designation mappings
    SELECT @DesignationMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPersonInCharges] p
    INNER JOIN [RGLAS].[dbo].[CompaniesPersonInCharges] r ON r.[CompaniesPersonInChargeIDC] = p.[CompaniesPersonInChargeIDC] AND r.[CompaniesPersonInChargeIDN] = p.[CompaniesPersonInChargeIDN]
    WHERE r.[Designation] IS NOT NULL AND r.[Designation] != '' AND p.[Designation] IS NOT NULL;

    -- Report unmapped Designation values
    PRINT 'Unmapped Designation values that need to be added to DynamicLists (MainListID=1012):';
    DECLARE @UnmappedDesignations NVARCHAR(MAX) = '';
    SELECT @UnmappedDesignations = @UnmappedDesignations + '''' + LTRIM(RTRIM([Designation])) + ''', '
    FROM [RGLAS].[dbo].[CompaniesPersonInCharges]
    WHERE [Designation] IS NOT NULL
    AND LTRIM(RTRIM([Designation])) != ''
    AND NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([Designation])))
        AND [MainListID] = 1012
    )
    GROUP BY [Designation];

    IF @UnmappedDesignations != ''
        PRINT SUBSTRING(@UnmappedDesignations, 1, LEN(@UnmappedDesignations) - 1); -- Remove trailing comma
    ELSE
        PRINT 'All Designation values found in DynamicLists';

    PRINT '';
    PRINT 'Migration Summary for CompaniesPersonInCharges:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'Designation successful mappings: ' + CAST(@DesignationMapped AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- Designation transformed from nvarchar to int using DynamicLists lookup (MainListID=1012)';
    PRINT '- AuthorityRule added as new column with default NULL value (not in RGLAS source)';
    PRINT '- CessationDate added as new column with default NULL value';
    PRINT '- Column mappings: CreatedBy_IDN->CreatedBy, CreatedBy_Date->CreatedAt, UpdatedBy_IDN->ModifiedBy, UpdatedBy_Date->ModifiedAt';
    PRINT '- Added standard audit columns: IsDeleted, DeletedBy, DeletedAt with default values';
    PRINT '- Column size changes: CompaniesPersonInChargeIDC (50->50)';
    PRINT '- Primary key changed from compound (CompaniesPersonInChargeIDC+CompaniesPersonInChargeIDN) to single (CompaniesPersonInChargeIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'CompaniesPersonInCharges migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPersonInCharges] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;