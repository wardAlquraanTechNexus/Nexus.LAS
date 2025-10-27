-- Production Data Migration Script - GroupMenu with Updated Constraints
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [GroupsMenus] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [GroupsMenus] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus] ON;

    -- Insert data from RGLAS GroupsMenus table with updated constraints
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus] (
        [GroupsMenusIDN],
        [Groups_IDN],
        [Menus_IDN],
        [CanInsert],            -- Make not null --> false
        [CanUpdate],            -- Make not null --> false
        [CanDelete],            -- Make not null --> false
        [Admin],                -- Make not null --> false
        [Access],               -- Make not null --> false
        [CreatedBy],            -- Maps from CreatedBy_IDN
        [CreatedAt],            -- Maps from CreatedBy_Date
        [ModifiedBy],           -- Maps from UpdatedBy_IDN
        [ModifiedAt],           -- Maps from UpdatedBy_Date
        [IsDeleted],            -- New column, default value
        [DeletedBy],            -- New column, default value
        [DeletedAt]             -- New column, default value
    )
    SELECT
        [GroupsMenusIDN],
        [Groups_IDN],
        [Menus_IDN],
        ISNULL([CanInsert], 0),     -- Default false for not null constraint
        ISNULL([CanUpdate], 0),     -- Default false for not null constraint
        ISNULL([CanDelete], 0),     -- Default false for not null constraint
        ISNULL([Admin], 0),         -- Default false for not null constraint
        ISNULL([Access], 0),        -- Default false for not null constraint
        [CreatedBy_IDN],            -- Maps to CreatedBy
        [CreatedBy_Date],           -- Maps to CreatedAt
        [UpdatedBy_IDN],            -- Maps to ModifiedBy
        [UpdatedBy_Date],           -- Maps to ModifiedAt
        0,                          -- Default for IsDeleted
        NULL,                       -- Default for DeletedBy
        NULL                        -- Default for DeletedAt
    FROM [RGLAS].[dbo].[GroupsMenus]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus].[GroupsMenusIDN] = [RGLAS].[dbo].[GroupsMenus].[GroupsMenusIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[GroupsMenus];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[GroupsMenus] r
        WHERE r.[GroupsMenusIDN] = p.[GroupsMenusIDN]
        AND r.[Groups_IDN] = p.[Groups_IDN]
        AND r.[Menus_IDN] = p.[Menus_IDN]
    );

    PRINT 'Migration Summary for GroupsMenus:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- CanInsert, CanUpdate, CanDelete, Admin, Access now NOT NULL with default FALSE';
    PRINT '- NULL values converted to FALSE (0) during migration';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'GroupsMenus migration completed successfully!';
    END
    ELSE
    BEGIN
        ROLLBACK TRANSACTION;
        PRINT 'Migration failed - data integrity check failed';
    END

END TRY
BEGIN CATCH
    -- Ensure IDENTITY_INSERT is turned off even on error
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;