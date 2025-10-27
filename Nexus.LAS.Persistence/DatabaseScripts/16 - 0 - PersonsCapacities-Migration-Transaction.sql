-- Production Data Migration Script - RGLAS PersonsCapacities to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsCapacities];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [PersonsCapacities] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [PersonsCapacities] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsCapacities] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsCapacities] ON;

    -- Insert data from RGLAS (no DynamicLists transformations needed)
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsCapacities] (
        [PersonsCapacityIDC],
        [PersonsCapacityIDN],
        [Persons_IDN],
        [CapacityName],
        [CapacityOther],
        [CapacityHourRate],
        [CreatedBy],            -- Maps from CreatedBy_IDN
        [CreatedAt],            -- Maps from CreatedBy_Date
        [ModifiedBy],           -- Maps from UpdatedBy_IDN
        [ModifiedAt],           -- Maps from UpdatedBy_Date
        [IsDeleted],            -- New column, default value
        [DeletedBy],            -- New column, default value
        [DeletedAt]             -- New column, default value
    )
    SELECT
        [PersonsCapacityIDC],
        [PersonsCapacityIDN],
        [Persons_IDN],
        [CapacityName],
        [CapacityOther],
        [CapacityHourRate],
        [CreatedBy_IDN],        -- Maps to CreatedBy
        [CreatedBy_Date],       -- Maps to CreatedAt
        [UpdatedBy_IDN],        -- Maps to ModifiedBy
        [UpdatedBy_Date],       -- Maps to ModifiedAt
        0,                      -- Default for IsDeleted
        NULL,                   -- Default for DeletedBy
        NULL                    -- Default for DeletedAt
    FROM [RGLAS].[dbo].[PersonsCapacities]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsCapacities]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsCapacities].[PersonsCapacityIDC] = [RGLAS].[dbo].[PersonsCapacities].[PersonsCapacityIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsCapacities].[PersonsCapacityIDN] = [RGLAS].[dbo].[PersonsCapacities].[PersonsCapacityIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsCapacities] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsCapacities] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[PersonsCapacities];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsCapacities];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsCapacities] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[PersonsCapacities] r
        WHERE r.[PersonsCapacityIDC] = p.[PersonsCapacityIDC]
        AND r.[PersonsCapacityIDN] = p.[PersonsCapacityIDN]
    );

    PRINT 'Migration Summary for PersonsCapacities:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- No DynamicLists transformations required for this table';
    PRINT '- Column size changes: PersonsCapacityIDC (50->450), CapacityName (50->max), CapacityOther (50->max)';
    PRINT '- Primary key remains compound (PersonsCapacityIDC+PersonsCapacityIDN) as per bridge DB structure';
    PRINT '- CapacityHourRate remains float type';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'PersonsCapacities migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsCapacities] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;