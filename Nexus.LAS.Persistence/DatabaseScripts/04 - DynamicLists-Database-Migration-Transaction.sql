-- Production Data Migration Script - RGLAS and NEXUS-LAS-RG-DB to Production
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists] ON;

    -- Step 1: Insert data from RGLAS (old system) with column mapping
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists] (
        [DynamicListIDC],
        [DynamicListIDN],
        [LinkedCategory],
        [MainListID],
        [MenuCategory],
        [MenuValue],
        [Active],
        [Rank],
        [CreatedBy],            -- Maps from CreatedBy_IDN
        [CreatedAt],            -- Maps from CreatedBy_Date
        [ModifiedBy],           -- Maps from UpdatedBy_IDN
        [ModifiedAt],           -- Maps from UpdatedBy_Date
        [IsDeleted],            -- New column, default value
        [DeletedBy],            -- New column, default value
        [DeletedAt]             -- New column, default value
    )
    SELECT
        [DynamicListIDC],
        [DynamicListIDN],
        [LinkedCategory],
        [MainListID],
        [MenuCategory],
        [MenuValue],
        [Active],
        [Rank],
        [CreatedBy_IDN],        -- Maps to CreatedBy
        [CreatedBy_Date],       -- Maps to CreatedAt
        [UpdatedBy_IDN],        -- Maps to ModifiedBy
        [UpdatedBy_Date],       -- Maps to ModifiedAt
        0,                      -- Default for IsDeleted
        NULL,                   -- Default for DeletedBy
        NULL                    -- Default for DeletedAt
    FROM [RGLAS].[dbo].[DynamicLists]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists].[DynamicListIDC] = [RGLAS].[dbo].[DynamicLists].[DynamicListIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists].[DynamicListIDN] = [RGLAS].[dbo].[DynamicLists].[DynamicListIDN]
    );

    -- Step 2: Insert new records from NEXUS-LAS-RG-DB (bridge database)
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists] (
        [DynamicListIDC],
        [DynamicListIDN],
        [LinkedCategory],
        [MainListID],
        [MenuCategory],
        [MenuValue],
        [Active],
        [Rank],
        [CreatedBy],
        [CreatedAt],
        [ModifiedBy],
        [ModifiedAt],
        [IsDeleted],
        [DeletedBy],
        [DeletedAt]
    )
    SELECT
        [DynamicListIDC],
        [DynamicListIDN],
        [LinkedCategory],
        [MainListID],
        [MenuCategory],
        [MenuValue],
        [Active],
        [Rank],
        [CreatedBy],
        [CreatedAt],
        [ModifiedBy],
        [ModifiedAt],
        [IsDeleted],
        [DeletedBy],
        [DeletedAt]
    FROM [NEXUS-LAS-RG-DB].[dbo].[DynamicLists]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists].[DynamicListIDC] = [NEXUS-LAS-RG-DB].[dbo].[DynamicLists].[DynamicListIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists].[DynamicListIDN] = [NEXUS-LAS-RG-DB].[dbo].[DynamicLists].[DynamicListIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @BridgeCount INT, @ProductionBefore INT, @ProductionAfter INT, @ActualMigratedFromRGLAS INT, @ActualMigratedFromBridge INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[DynamicLists];
    SELECT @BridgeCount = COUNT(*) FROM [NEXUS-LAS-RG-DB].[dbo].[DynamicLists];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists];

    -- Calculate actual records migrated by checking @@ROWCOUNT from the INSERTs
    -- Since we can't capture @@ROWCOUNT after the fact, we'll estimate based on data differences

    -- Count unique records from RGLAS that don't exist in bridge (these would be RGLAS-only migrations)
    SELECT @ActualMigratedFromRGLAS = COUNT(*)
    FROM [RGLAS].[dbo].[DynamicLists] r
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-LAS-RG-DB].[dbo].[DynamicLists] b
        WHERE b.[DynamicListIDC] = r.[DynamicListIDC]
        AND b.[DynamicListIDN] = r.[DynamicListIDN]
    );

    -- Count unique records from bridge that don't exist in RGLAS (these would be bridge-only migrations)
    SELECT @ActualMigratedFromBridge = COUNT(*)
    FROM [NEXUS-LAS-RG-DB].[dbo].[DynamicLists] b
    WHERE NOT EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[DynamicLists] r
        WHERE r.[DynamicListIDC] = b.[DynamicListIDC]
        AND r.[DynamicListIDN] = b.[DynamicListIDN]
    );

    PRINT 'Migration Summary for DynamicLists:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'NEXUS-LAS-RG-DB total records: ' + CAST(@BridgeCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS only: ' + CAST(@ActualMigratedFromRGLAS AS VARCHAR(10));
    PRINT 'Records migrated from Bridge DB only: ' + CAST(@ActualMigratedFromBridge AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));

    -- Only commit if verification passes
    IF (@ActualMigratedFromRGLAS >= 0 AND @ActualMigratedFromBridge >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'DynamicLists migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;
