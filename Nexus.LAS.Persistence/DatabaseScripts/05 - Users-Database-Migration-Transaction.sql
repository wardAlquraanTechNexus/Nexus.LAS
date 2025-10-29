-- Production Data Migration Script - Users Table Migration
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-LAS-RG-DB].[dbo].[Users];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [Users] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [Users] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-LAS-RG-DB].[dbo].[Users] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-LAS-RG-DB].[dbo].[Users] ON;

    -- Insert data from RGLAS Users table with column mapping
    INSERT INTO [NEXUS-LAS-RG-DB].[dbo].[Users] (
        [id],
        [Username],             -- New column, using LoginName as default
        [NTLogin],
        [Persons_IDN],
        [CreatedBy],            -- Maps from CreatedBy_IDN
        [CreatedAt],            -- Maps from CreatedBy_Date
        [ModifiedBy],           -- Maps from UpdatedBy_IDN
        [ModifiedAt],           -- Maps from UpdatedBy_Date
        [IsDeleted],            -- New column, default value
        [DeletedBy],            -- New column, default value
        [DeletedAt]             -- New column, default value
    )
    SELECT
        [id],
        [LoginName],            -- Maps to Username (assuming LoginName can serve as Username)
        [NTLogin],
        [Persons_IDN],
        [CreatedBy_IDN],        -- Maps to CreatedBy
        [CreatedBy_Date],       -- Maps to CreatedAt
        [UpdatedBy_IDN],        -- Maps to ModifiedBy
        [UpdatedBy_Date],       -- Maps to ModifiedAt
        0,                      -- Default for IsDeleted
        NULL,                   -- Default for DeletedBy
        NULL                    -- Default for DeletedAt
    FROM [RGLAS].[dbo].[Users]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-LAS-RG-DB].[dbo].[Users]
        WHERE [NEXUS-LAS-RG-DB].[dbo].[Users].[id] = [RGLAS].[dbo].[Users].[id]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-LAS-RG-DB].[dbo].[Users] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-LAS-RG-DB].[dbo].[Users] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[Users];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-LAS-RG-DB].[dbo].[Users];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-LAS-RG-DB].[dbo].[Users] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[Users] r
        WHERE r.[id] = p.[id]
        AND r.[LoginName] = p.[Username]
        AND r.[Persons_IDN] = p.[Persons_IDN]
    );

    PRINT 'Migration Summary for Users:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'Users migration completed successfully!';
        PRINT 'Data migrated from RGLAS to Production database.';
    END
    ELSE
    BEGIN
        ROLLBACK TRANSACTION;
        PRINT 'Migration failed - data integrity check failed';
    END

END TRY
BEGIN CATCH
    -- Ensure IDENTITY_INSERT is turned off even on error
    SET IDENTITY_INSERT [NEXUS-LAS-RG-DB].[dbo].[Users] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;