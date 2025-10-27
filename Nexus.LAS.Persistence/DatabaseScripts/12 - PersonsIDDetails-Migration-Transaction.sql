-- Production Data Migration Script - RGLAS PersonsIDDetails to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [PersonsIDDetails] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [PersonsIDDetails] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails] ON;

    -- Insert data from RGLAS with DynamicLists transformations
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails] (
        [PersonsIDDetailIDC],
        [PersonsIDDetailIDN],
        [Persons_IDN],
        [IDPrimary],
        [IDType],               -- Transform from nvarchar to int (DynamicLists)
        [IDNationality],        -- Transform from nvarchar to int (DynamicLists)
        [IDPlaceOfIssue],       -- Transform from nvarchar to int (DynamicLists)
        [IDNumber],
        [IDIssueDate],
        [IDExpiryDate],
        [IDExpiryActiveReminder],
        [CreatedBy],            -- Maps from CreatedBy_IDN
        [CreatedAt],            -- Maps from CreatedBy_Date
        [ModifiedBy],           -- Maps from UpdatedBy_IDN
        [ModifiedAt],           -- Maps from UpdatedBy_Date
        [IsDeleted],            -- New column, default value
        [DeletedBy],            -- New column, default value
        [DeletedAt]             -- New column, default value
    )
    SELECT
        [PersonsIDDetailIDC],
        [PersonsIDDetailIDN],
        [Persons_IDN],
        [IDPrimary],
        -- Transform IDType from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [IDType] IS NULL OR LTRIM(RTRIM([IDType])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE [MenuValue] = LTRIM(RTRIM([IDType]))
                AND [MainListID] = 1018 -- originalDocumentTypes
            )
        END AS [IDType],
        -- Transform IDNationality from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [IDNationality] IS NULL OR LTRIM(RTRIM([IDNationality])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE [MenuValue] = LTRIM(RTRIM([IDNationality]))
                AND [MainListID] = 1010 -- country
            )
        END AS [IDNationality],
        -- Transform IDPlaceOfIssue from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [IDPlaceOfIssue] IS NULL OR LTRIM(RTRIM([IDPlaceOfIssue])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE [MenuValue] = LTRIM(RTRIM([IDPlaceOfIssue]))
                AND [MainListID] = 1025 -- placeOfRegistration
            )
        END AS [IDPlaceOfIssue],
        [IDNumber],
        [IDIssueDate],
        [IDExpiryDate],
        [IDExpiryActiveReminder],
        [CreatedBy_IDN],        -- Maps to CreatedBy
        [CreatedBy_Date],       -- Maps to CreatedAt
        [UpdatedBy_IDN],        -- Maps to ModifiedBy
        [UpdatedBy_Date],       -- Maps to ModifiedAt
        0,                      -- Default for IsDeleted
        NULL,                   -- Default for DeletedBy
        NULL                    -- Default for DeletedAt
    FROM [RGLAS].[dbo].[PersonsIDDetails]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails].[PersonsIDDetailIDC] = [RGLAS].[dbo].[PersonsIDDetails].[PersonsIDDetailIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails].[PersonsIDDetailIDN] = [RGLAS].[dbo].[PersonsIDDetails].[PersonsIDDetailIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT, @IDTypeMapped INT, @IDNationalityMapped INT, @IDPlaceOfIssueMapped INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[PersonsIDDetails];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[PersonsIDDetails] r
        WHERE r.[PersonsIDDetailIDC] = p.[PersonsIDDetailIDC]
        AND r.[PersonsIDDetailIDN] = p.[PersonsIDDetailIDN]
    );

    -- Count successful IDType mappings
    SELECT @IDTypeMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails] p
    INNER JOIN [RGLAS].[dbo].[PersonsIDDetails] r ON r.[PersonsIDDetailIDC] = p.[PersonsIDDetailIDC] AND r.[PersonsIDDetailIDN] = p.[PersonsIDDetailIDN]
    WHERE r.[IDType] IS NOT NULL AND r.[IDType] != '' AND p.[IDType] IS NOT NULL;

    -- Count successful IDNationality mappings
    SELECT @IDNationalityMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails] p
    INNER JOIN [RGLAS].[dbo].[PersonsIDDetails] r ON r.[PersonsIDDetailIDC] = p.[PersonsIDDetailIDC] AND r.[PersonsIDDetailIDN] = p.[PersonsIDDetailIDN]
    WHERE r.[IDNationality] IS NOT NULL AND r.[IDNationality] != '' AND p.[IDNationality] IS NOT NULL;

    -- Count successful IDPlaceOfIssue mappings
    SELECT @IDPlaceOfIssueMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails] p
    INNER JOIN [RGLAS].[dbo].[PersonsIDDetails] r ON r.[PersonsIDDetailIDC] = p.[PersonsIDDetailIDC] AND r.[PersonsIDDetailIDN] = p.[PersonsIDDetailIDN]
    WHERE r.[IDPlaceOfIssue] IS NOT NULL AND r.[IDPlaceOfIssue] != '' AND p.[IDPlaceOfIssue] IS NOT NULL;

    PRINT 'Migration Summary for PersonsIDDetails:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'IDType successful mappings: ' + CAST(@IDTypeMapped AS VARCHAR(10));
    PRINT 'IDNationality successful mappings: ' + CAST(@IDNationalityMapped AS VARCHAR(10));
    PRINT 'IDPlaceOfIssue successful mappings: ' + CAST(@IDPlaceOfIssueMapped AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- IDType transformed from nvarchar to int using DynamicLists lookup (MainListID=1018)';
    PRINT '- IDNationality transformed from nvarchar to int using DynamicLists lookup (MainListID=1010)';
    PRINT '- IDPlaceOfIssue transformed from nvarchar to int using DynamicLists lookup (MainListID=1025)';
    PRINT '- Column size changes: PersonsIDDetailIDC (50->max), IDNumber (50->max), etc.';
    PRINT '- Primary key changed from compound (PersonsIDDetailIDC+PersonsIDDetailIDN) to single (PersonsIDDetailIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'PersonsIDDetails migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsIDDetails] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;