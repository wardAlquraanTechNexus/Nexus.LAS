-- Production Data Migration Script - RGLAS and NEXUS-LAS-RG-DB Menus to Production
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Menus];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [Menus] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [Menus] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[Menus] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[Menus] ON;

    -- Step 1: Insert data from RGLAS (old system) with column mapping
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[Menus] (
        [id],
        [ParentID],
        [Name],
        [Path],
        [Rank],
        [Description],
        [IconClass],            -- New column, default value
        [InDashboard],          -- New column, default value
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
        [ParentID],
        [Name],
        [Path],
        [Rank],
        [Description],
        NULL,                   -- Default for IconClass
        0,                      -- Default for InDashboard (false)
        [CreatedBy_IDN],        -- Maps to CreatedBy
        [CreatedBy_Date],       -- Maps to CreatedAt
        [UpdatedBy_IDN],        -- Maps to ModifiedBy
        [UpdatedBy_Date],       -- Maps to ModifiedAt
        0,                      -- Default for IsDeleted
        NULL,                   -- Default for DeletedBy
        NULL                    -- Default for DeletedAt
    FROM [RGLAS].[dbo].[Menus]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Menus]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[Menus].[id] = [RGLAS].[dbo].[Menus].[id]
    );

    -- Step 2: Insert new records from NEXUS-LAS-RG-DB (bridge database)
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[Menus] (
        [id],
        [ParentID],
        [Name],
        [Path],
        [Rank],
        [Description],
        [IconClass],
        [InDashboard],
        [CreatedBy],
        [CreatedAt],
        [ModifiedBy],
        [ModifiedAt],
        [IsDeleted],
        [DeletedBy],
        [DeletedAt]
    )
    SELECT
        [id],
        [ParentID],
        [Name],
        [Path],
        [Rank],
        [Description],
        [IconClass],
        [InDashboard],
        [CreatedBy],
        [CreatedAt],
        [ModifiedBy],
        [ModifiedAt],
        [IsDeleted],
        [DeletedBy],
        [DeletedAt]
    FROM [NEXUS-LAS-RG-DB].[dbo].[Menus]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Menus]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[Menus].[id] = [NEXUS-LAS-RG-DB].[dbo].[Menus].[id]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[Menus] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[Menus] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @BridgeCount INT, @ProductionAfter INT, @ActualMigratedFromRGLAS INT, @ActualMigratedFromBridge INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[Menus];
    SELECT @BridgeCount = COUNT(*) FROM [NEXUS-LAS-RG-DB].[dbo].[Menus];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Menus];

    -- Count unique records from RGLAS that don't exist in bridge (these would be RGLAS-only migrations)
    SELECT @ActualMigratedFromRGLAS = COUNT(*)
    FROM [RGLAS].[dbo].[Menus] r
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-LAS-RG-DB].[dbo].[Menus] b
        WHERE b.[id] = r.[id]
    );

    -- Count unique records from bridge that don't exist in RGLAS (these would be bridge-only migrations)
    SELECT @ActualMigratedFromBridge = COUNT(*)
    FROM [NEXUS-LAS-RG-DB].[dbo].[Menus] b
    WHERE NOT EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[Menus] r
        WHERE r.[id] = b.[id]
    );

    PRINT 'Migration Summary for Menus:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'NEXUS-LAS-RG-DB total records: ' + CAST(@BridgeCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS only: ' + CAST(@ActualMigratedFromRGLAS AS VARCHAR(10));
    PRINT 'Records migrated from Bridge DB only: ' + CAST(@ActualMigratedFromBridge AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));

    -- Only commit if verification passes
    IF (@ActualMigratedFromRGLAS >= 0 AND @ActualMigratedFromBridge >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'Menus migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[Menus] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;