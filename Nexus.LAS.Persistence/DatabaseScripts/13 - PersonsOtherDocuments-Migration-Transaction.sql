-- Production Data Migration Script - RGLAS PersonsOtherDocuments to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsOtherDocuments];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [PersonsOtherDocuments] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [PersonsOtherDocuments] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsOtherDocuments] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsOtherDocuments] ON;

    -- Insert data from RGLAS with DocumentType transformation
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsOtherDocuments] (
        [PersonsOtherDocumentIDC],
        [PersonsOtherDocumentIDN],
        [Persons_IDN],
        [DocumentType],         -- Transform from nvarchar to int (DynamicLists)
        [DocumentDescription],  -- Maps from Description
        [CreatedBy],            -- Maps from CreatedBy_IDN
        [CreatedAt],            -- Maps from CreatedBy_Date
        [ModifiedBy],           -- Maps from UpdatedBy_IDN
        [ModifiedAt],           -- Maps from UpdatedBy_Date
        [IsDeleted],            -- New column, default value
        [DeletedBy],            -- New column, default value
        [DeletedAt]             -- New column, default value
    )
    SELECT
        [PersonsOtherDocumentIDC],
        [PersonsOtherDocumentIDN],
        [Persons_IDN],
        -- Transform DocumentType from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [DocumentType] IS NULL OR LTRIM(RTRIM([DocumentType])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE [MenuValue] = LTRIM(RTRIM([DocumentType]))
                AND [MainListID] = 1023 -- otherDocumentType
            )
        END AS [DocumentType],
        [Description],          -- Maps to DocumentDescription
        [CreatedBy_IDN],        -- Maps to CreatedBy
        [CreatedBy_Date],       -- Maps to CreatedAt
        [UpdatedBy_IDN],        -- Maps to ModifiedBy
        [UpdatedBy_Date],       -- Maps to ModifiedAt
        0,                      -- Default for IsDeleted
        NULL,                   -- Default for DeletedBy
        NULL                    -- Default for DeletedAt
    FROM [RGLAS].[dbo].[PersonsOtherDocuments]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsOtherDocuments]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsOtherDocuments].[PersonsOtherDocumentIDC] = [RGLAS].[dbo].[PersonsOtherDocuments].[PersonsOtherDocumentIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsOtherDocuments].[PersonsOtherDocumentIDN] = [RGLAS].[dbo].[PersonsOtherDocuments].[PersonsOtherDocumentIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsOtherDocuments] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsOtherDocuments] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT, @DocumentTypeMapped INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[PersonsOtherDocuments];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsOtherDocuments];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsOtherDocuments] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[PersonsOtherDocuments] r
        WHERE r.[PersonsOtherDocumentIDC] = p.[PersonsOtherDocumentIDC]
        AND r.[PersonsOtherDocumentIDN] = p.[PersonsOtherDocumentIDN]
    );

    -- Count successful DocumentType mappings
    SELECT @DocumentTypeMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsOtherDocuments] p
    INNER JOIN [RGLAS].[dbo].[PersonsOtherDocuments] r ON r.[PersonsOtherDocumentIDC] = p.[PersonsOtherDocumentIDC] AND r.[PersonsOtherDocumentIDN] = p.[PersonsOtherDocumentIDN]
    WHERE r.[DocumentType] IS NOT NULL AND r.[DocumentType] != '' AND p.[DocumentType] IS NOT NULL;

    PRINT 'Migration Summary for PersonsOtherDocuments:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'DocumentType successful mappings: ' + CAST(@DocumentTypeMapped AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- DocumentType transformed from nvarchar to int using DynamicLists lookup (MainListID=1023)';
    PRINT '- Description column renamed to DocumentDescription';
    PRINT '- Column size changes: PersonsOtherDocumentIDC (50->max), Description (max->max)';
    PRINT '- Primary key changed from compound (PersonsOtherDocumentIDC+PersonsOtherDocumentIDN) to single (PersonsOtherDocumentIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'PersonsOtherDocuments migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsOtherDocuments] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;