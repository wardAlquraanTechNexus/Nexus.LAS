-- Production Data Migration Script - RGLAS and NEXUS-LAS-RG-DB GroupsMenus to Production
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

    -- Step 1: Insert data from RGLAS (old system) with column mapping
    -- Both RGLAS and Production use compound primary key (GroupID + MenuID)
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus] (
        [GroupID],              -- Direct mapping
        [MenuID],               -- Direct mapping
        [Access],               -- Make not null --> false
        [CanInsert],            -- Make not null --> false
        [CanUpdate],            -- Make not null --> false
        [CanDelete],            -- Make not null --> false
        [Admin],                -- Make not null --> false
        [CreatedBy],            -- New column, default value
        [CreatedAt],            -- New column, default value
        [ModifiedBy],           -- New column, default value
        [ModifiedAt],           -- New column, default value
        [IsDeleted],            -- New column, default value
        [DeletedBy],            -- New column, default value
        [DeletedAt]             -- New column, default value
    )
    SELECT
        [GroupID],                  -- Direct mapping
        [MenuID],                   -- Direct mapping
        ISNULL([Access], 0),        -- Default false for not null constraint
        ISNULL([CanInsert], 0),     -- Default false for not null constraint
        ISNULL([CanUpdate], 0),     -- Default false for not null constraint
        ISNULL([CanDelete], 0),     -- Default false for not null constraint
        ISNULL([Admin], 0),         -- Default false for not null constraint
        1,                          -- Default CreatedBy (system user)
        GETDATE(),                  -- Default CreatedAt (current date)
        1,                          -- Default ModifiedBy (system user)
        GETDATE(),                  -- Default ModifiedAt (current date)
        0,                          -- Default for IsDeleted
        NULL,                       -- Default for DeletedBy
        NULL                        -- Default for DeletedAt
    FROM [RGLAS].[dbo].[GroupsMenus]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus].[GroupID] = [RGLAS].[dbo].[GroupsMenus].[GroupID]
        AND [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus].[MenuID] = [RGLAS].[dbo].[GroupsMenus].[MenuID]
    );

    -- Step 2: Insert new records from NEXUS-LAS-RG-DB (bridge database)
    -- Bridge database also uses compound primary key (GroupID + MenuID), no id column
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus] (
        [GroupID],
        [MenuID],
        [Access],
        [CanInsert],
        [CanUpdate],
        [CanDelete],
        [Admin],
        [CreatedBy],
        [CreatedAt],
        [ModifiedBy],
        [ModifiedAt],
        [IsDeleted],
        [DeletedBy],
        [DeletedAt]
    )
    SELECT
        [GroupID],
        [MenuID],
        [Access],
        [CanInsert],
        [CanUpdate],
        [CanDelete],
        [Admin],
        [CreatedBy],
        [CreatedAt],
        [ModifiedBy],
        [ModifiedAt],
        [IsDeleted],
        [DeletedBy],
        [DeletedAt]
    FROM [NEXUS-LAS-RG-DB].[dbo].[GroupsMenus]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus].[GroupID] = [NEXUS-LAS-RG-DB].[dbo].[GroupsMenus].[GroupID]
        AND [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus].[MenuID] = [NEXUS-LAS-RG-DB].[dbo].[GroupsMenus].[MenuID]
    );

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @BridgeCount INT, @ProductionAfter INT, @ActualMigratedFromRGLAS INT, @ActualMigratedFromBridge INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[GroupsMenus];
    SELECT @BridgeCount = COUNT(*) FROM [NEXUS-LAS-RG-DB].[dbo].[GroupsMenus];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[GroupsMenus];

    -- Count unique records from RGLAS that don't exist in bridge (these would be RGLAS-only migrations)
    SELECT @ActualMigratedFromRGLAS = COUNT(*)
    FROM [RGLAS].[dbo].[GroupsMenus] r
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-LAS-RG-DB].[dbo].[GroupsMenus] b
        WHERE b.[GroupID] = r.[GroupID]
        AND b.[MenuID] = r.[MenuID]
    );

    -- Count unique records from bridge that don't exist in RGLAS (these would be bridge-only migrations)
    SELECT @ActualMigratedFromBridge = COUNT(*)
    FROM [NEXUS-LAS-RG-DB].[dbo].[GroupsMenus] b
    WHERE NOT EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[GroupsMenus] r
        WHERE r.[GroupID] = b.[GroupID]
        AND r.[MenuID] = b.[MenuID]
    );

    PRINT 'Migration Summary for GroupsMenus:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'NEXUS-LAS-RG-DB total records: ' + CAST(@BridgeCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS only: ' + CAST(@ActualMigratedFromRGLAS AS VARCHAR(10));
    PRINT 'Records migrated from Bridge DB only: ' + CAST(@ActualMigratedFromBridge AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- All tables use compound primary key (GroupID + MenuID), no id column';
    PRINT '- Direct column mapping: GroupID, MenuID, Access, CanInsert, CanUpdate, CanDelete, Admin';
    PRINT '- CanInsert, CanUpdate, CanDelete, Admin, Access now NOT NULL with default FALSE';
    PRINT '- NULL values converted to FALSE (0) during migration';
    PRINT '- RGLAS records get default CreatedBy=1, CreatedAt=GETDATE()';

    -- Only commit if verification passes
    IF (@ActualMigratedFromRGLAS >= 0 AND @ActualMigratedFromBridge >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'GroupsMenus migration completed successfully!';
        PRINT 'Data migrated from both RGLAS and NEXUS-LAS-RG-DB bridge database.';
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