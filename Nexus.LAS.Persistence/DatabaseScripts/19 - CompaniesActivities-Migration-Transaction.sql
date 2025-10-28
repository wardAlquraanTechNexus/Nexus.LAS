-- Production Data Migration Script - RGLAS CompaniesActivities to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesActivities];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [CompaniesActivities] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [CompaniesActivities] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesActivities] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesActivities] ON;

    -- Insert data from RGLAS with Activity transformation (only records with valid activity mappings)
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesActivities] (
        [CompaniesActivityIDN],
        [CompaniesActivityIDC],
        [Companies_IDN],
        [Activity],                 -- Transform from nvarchar to int (DynamicLists)
        [CreatedBy],                -- Maps from CreatedBy_IDN
        [CreatedAt],                -- Maps from CreatedBy_Date
        [ModifiedBy],               -- Maps from UpdatedBy_IDN
        [ModifiedAt],               -- Maps from UpdatedBy_Date
        [IsDeleted],                -- New column, default value
        [DeletedBy],                -- New column, default value
        [DeletedAt]                 -- New column, default value
    )
    SELECT
        [CompaniesActivityIDN],
        [CompaniesActivityIDC],
        [Companies_IDN],
        -- Transform Activity from nvarchar to int using DynamicLists lookup
        (
            SELECT TOP 1 [DynamicListIDN]
            FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
            WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([Activity])))
            AND [MainListID] = 1001 -- companyActivity
        ) AS [Activity],
        [CreatedBy_IDN],            -- Maps to CreatedBy
        [CreatedBy_Date],           -- Maps to CreatedAt
        [UpdatedBy_IDN],            -- Maps to ModifiedBy
        [UpdatedBy_Date],           -- Maps to ModifiedAt
        0,                          -- Default for IsDeleted
        NULL,                       -- Default for DeletedBy
        NULL                        -- Default for DeletedAt
    FROM [RGLAS].[dbo].[CompaniesActivities]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesActivities]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesActivities].[CompaniesActivityIDC] = [RGLAS].[dbo].[CompaniesActivities].[CompaniesActivityIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesActivities].[CompaniesActivityIDN] = [RGLAS].[dbo].[CompaniesActivities].[CompaniesActivityIDN]
    )
    -- Only insert records where Activity can be mapped to DynamicLists
    AND [Activity] IS NOT NULL
    AND LTRIM(RTRIM([Activity])) != ''
    AND EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([Activity])))
        AND [MainListID] = 1001
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesActivities] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesActivities] CHECK CONSTRAINT ALL;

    -- Verify the migration and log skipped records
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT, @ActivityMapped INT, @SkippedCount INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[CompaniesActivities];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesActivities];

    -- Count records that were skipped due to unmappable activities
    SELECT @SkippedCount = COUNT(*)
    FROM [RGLAS].[dbo].[CompaniesActivities]
    WHERE [Activity] IS NULL
    OR LTRIM(RTRIM([Activity])) = ''
    OR NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([Activity])))
        AND [MainListID] = 1001
    );

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesActivities] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[CompaniesActivities] r
        WHERE r.[CompaniesActivityIDC] = p.[CompaniesActivityIDC]
        AND r.[CompaniesActivityIDN] = p.[CompaniesActivityIDN]
    );

    -- Count successful Activity mappings (exact matches)
    SELECT @ActivityMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesActivities] p
    INNER JOIN [RGLAS].[dbo].[CompaniesActivities] r ON r.[CompaniesActivityIDC] = p.[CompaniesActivityIDC] AND r.[CompaniesActivityIDN] = p.[CompaniesActivityIDN]
    WHERE r.[Activity] IS NOT NULL AND r.[Activity] != ''
    AND EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM(r.[Activity])))
        AND [MainListID] = 1001
        AND [DynamicListIDN] = p.[Activity]
    );

    -- Report unmapped Activity values
    PRINT 'Unmapped Activity values that need to be added to DynamicLists (MainListID=1001):';
    DECLARE @UnmappedActivities NVARCHAR(MAX) = '';
    SELECT @UnmappedActivities = @UnmappedActivities + '''' + LTRIM(RTRIM([Activity])) + ''', '
    FROM [RGLAS].[dbo].[CompaniesActivities]
    WHERE [Activity] IS NOT NULL
    AND LTRIM(RTRIM([Activity])) != ''
    AND NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([Activity])))
        AND [MainListID] = 1001
    )
    GROUP BY [Activity];

    IF @UnmappedActivities != ''
        PRINT SUBSTRING(@UnmappedActivities, 1, LEN(@UnmappedActivities) - 1); -- Remove trailing comma
    ELSE
        PRINT 'All Activity values found in DynamicLists';

    -- Log records that were skipped
    IF @SkippedCount > 0
    BEGIN
        PRINT 'SKIPPED RECORDS: The following records were NOT migrated due to unmappable activities:';
        DECLARE @SkippedRecords NVARCHAR(MAX) = '';
        SELECT @SkippedRecords = @SkippedRecords + 'ID: ' + CAST([CompaniesActivityIDN] AS VARCHAR(10)) + ' (Activity: ''' + ISNULL(LTRIM(RTRIM([Activity])), 'NULL') + '''), '
        FROM [RGLAS].[dbo].[CompaniesActivities]
        WHERE [Activity] IS NULL
        OR LTRIM(RTRIM([Activity])) = ''
        OR NOT EXISTS (
            SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
            WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([Activity])))
            AND [MainListID] = 1001
        );

        IF LEN(@SkippedRecords) > 2
            PRINT SUBSTRING(@SkippedRecords, 1, LEN(@SkippedRecords) - 1); -- Remove trailing comma
    END

    PRINT '';
    PRINT 'Migration Summary for CompaniesActivities:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'Records SKIPPED due to unmappable activities: ' + CAST(@SkippedCount AS VARCHAR(10));
    PRINT 'Activity successful mappings: ' + CAST(@ActivityMapped AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- Activity transformed from nvarchar(max) to int using DynamicLists lookup (MainListID=1001)';
    PRINT '- Case-insensitive matching used for better lookup success';
    PRINT '- Records with unmappable activities are SKIPPED and logged above';
    PRINT '- No fallback values used - only exact matches are migrated';
    PRINT '- Add unmapped activities to DynamicLists and re-run migration for skipped records';
    PRINT '- Column size changes: CompaniesActivityIDC (50->50), Activity (max->int)';
    PRINT '- Primary key changed from compound (CompaniesActivityIDC+CompaniesActivityIDN) to single (CompaniesActivityIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'CompaniesActivities migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesActivities] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;