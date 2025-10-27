-- Production Data Migration Script - RGLAS Persons to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Persons];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [Persons] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [Persons] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[Persons] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[Persons] ON;

    -- Insert data from RGLAS (old system) with data type transformations
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[Persons] (
        [PersonIDC],
        [PersonIDN],
        [PersonCode],
        [PersonEnglishName],
        [PersonArabicName],
        [PersonShortName],
        [Website],
        [PersonStatus],         -- Transform from nvarchar to int (CommonStatus)
        [Private],
        [CreatedBy],            -- Maps from CreatedBy_IDN
        [CreatedAt],            -- Maps from CreatedBy_Date
        [ModifiedBy],           -- Maps from UpdatedBy_IDN
        [ModifiedAt],           -- Maps from UpdatedBy_Date
        [IsDeleted],            -- New column, default value
        [DeletedBy],            -- New column, default value
        [DeletedAt]             -- New column, default value
    )
    SELECT
        [PersonIDC],
        [PersonIDN],
        [PersonCode],
        [PersonEnglishName],
        [PersonArabicName],
        [PersonShortName],
        [Website],
        -- Transform PersonStatus from nvarchar to int (CommonStatus enum)
        CASE
            WHEN LOWER(LTRIM(RTRIM([PersonStatus]))) = 'new' THEN 0      -- CommonStatus.New
            WHEN LOWER(LTRIM(RTRIM([PersonStatus]))) = 'active' THEN 1    -- CommonStatus.Active
            WHEN LOWER(LTRIM(RTRIM([PersonStatus]))) = 'inactive' THEN 2  -- CommonStatus.Inactive
            ELSE 0  -- Default to New if unknown status
        END AS [PersonStatus],
        [Private],
        [CreatedBy_IDN],        -- Maps to CreatedBy
        [CreatedBy_Date],       -- Maps to CreatedAt
        [UpdatedBy_IDN],        -- Maps to ModifiedBy
        [UpdatedBy_Date],       -- Maps to ModifiedAt
        0,                      -- Default for IsDeleted
        NULL,                   -- Default for DeletedBy
        NULL                    -- Default for DeletedAt
    FROM [RGLAS].[dbo].[Persons]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Persons]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[Persons].[PersonIDC] = [RGLAS].[dbo].[Persons].[PersonIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[Persons].[PersonIDN] = [RGLAS].[dbo].[Persons].[PersonIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[Persons] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[Persons] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[Persons];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Persons];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Persons] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[Persons] r
        WHERE r.[PersonIDC] = p.[PersonIDC]
        AND r.[PersonIDN] = p.[PersonIDN]
    );

    PRINT 'Migration Summary for Persons:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- PersonStatus transformed from nvarchar to int: New=0, Active=1, Inactive=2';
    PRINT '- POBoxCity and POBoxCountry will be handled in separate PersonsAddresses migration';
    PRINT '- Column size changes: PersonIDC (50->max), PersonEnglishName (100->200), etc.';
    PRINT '- Primary key changed from compound (PersonIDC+PersonIDN) to single (PersonIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'Persons migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[Persons] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;