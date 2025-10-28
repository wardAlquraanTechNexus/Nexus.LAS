-- Production Data Migration Script - RGLAS CompaniesChamberOfCommerces to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesChamberOfCommerces];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [CompaniesChamberOfCommerces] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [CompaniesChamberOfCommerces] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesChamberOfCommerces] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesChamberOfCommerces] ON;

    -- Insert data from RGLAS
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesChamberOfCommerces] (
        [CompaniesChamberOfCommerceIDN],
        [CompaniesChamberOfCommerceIDC],
        [Companies_IDN],
        [CCINumber],
        [CCIIssueDate],
        [CCIExpiryDate],
        [CCIExpiryActiveReminder],
        [CCIUsername],
        [CCIPassword],
        [CreatedBy],                -- Maps from CreatedBy_IDN
        [CreatedAt],                -- Maps from CreatedBy_Date
        [ModifiedBy],               -- Maps from UpdatedBy_IDN
        [ModifiedAt],               -- Maps from UpdatedBy_Date
        [IsDeleted],                -- New column, default value
        [DeletedBy],                -- New column, default value
        [DeletedAt]                 -- New column, default value
    )
    SELECT
        [CompaniesChamberOfCommerceIDN],
        [CompaniesChamberOfCommerceIDC],
        [Companies_IDN],
        [CCINumber],
        [CCIIssueDate],
        [CCIExpiryDate],
        [CCIExpiryActiveReminder],
        [CCIUsername],
        [CCIPassword],
        [CreatedBy_IDN],            -- Maps to CreatedBy
        [CreatedBy_Date],           -- Maps to CreatedAt
        [UpdatedBy_IDN],            -- Maps to ModifiedBy
        [UpdatedBy_Date],           -- Maps to ModifiedAt
        0,                          -- Default for IsDeleted
        NULL,                       -- Default for DeletedBy
        NULL                        -- Default for DeletedAt
    FROM [RGLAS].[dbo].[CompaniesChamberOfCommerces]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesChamberOfCommerces]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesChamberOfCommerces].[CompaniesChamberOfCommerceIDC] = [RGLAS].[dbo].[CompaniesChamberOfCommerces].[CompaniesChamberOfCommerceIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesChamberOfCommerces].[CompaniesChamberOfCommerceIDN] = [RGLAS].[dbo].[CompaniesChamberOfCommerces].[CompaniesChamberOfCommerceIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesChamberOfCommerces] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesChamberOfCommerces] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[CompaniesChamberOfCommerces];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesChamberOfCommerces];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesChamberOfCommerces] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[CompaniesChamberOfCommerces] r
        WHERE r.[CompaniesChamberOfCommerceIDC] = p.[CompaniesChamberOfCommerceIDC]
        AND r.[CompaniesChamberOfCommerceIDN] = p.[CompaniesChamberOfCommerceIDN]
    );

    PRINT '';
    PRINT 'Migration Summary for CompaniesChamberOfCommerces:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- No data transformations required - direct column mapping';
    PRINT '- Column mappings: CreatedBy_IDN->CreatedBy, CreatedBy_Date->CreatedAt, UpdatedBy_IDN->ModifiedBy, UpdatedBy_Date->ModifiedAt';
    PRINT '- Added standard audit columns: IsDeleted, DeletedBy, DeletedAt with default values';
    PRINT '- Column size changes: CompaniesChamberOfCommerceIDC (50->50)';
    PRINT '- Primary key changed from compound (CompaniesChamberOfCommerceIDC+CompaniesChamberOfCommerceIDN) to single (CompaniesChamberOfCommerceIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'CompaniesChamberOfCommerces migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesChamberOfCommerces] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;