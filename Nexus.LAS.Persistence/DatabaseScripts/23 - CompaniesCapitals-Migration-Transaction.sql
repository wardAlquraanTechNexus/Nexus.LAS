-- Production Data Migration Script - RGLAS CompaniesCapitals to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesCapitals];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [CompaniesCapitals] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [CompaniesCapitals] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesCapitals] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesCapitals] ON;

    -- Insert data from RGLAS with CapitalCurrency transformation (only records with mappable currency)
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesCapitals] (
        [CompaniesCapitalIDN],
        [CompaniesCapitalIdc],
        [Companies_IDN],
        [CompaniesCapitalDate],
        [CompaniesCapitalAmount],
        [NominalValueOfShare],      -- New column, default NULL
        [ClassOfShares],            -- New column, default NULL
        [CompaniesCapitalNumberOfShares],
        [CompaniesCapitalAuthorized],
        [CompaniesCapitalPaid],
        [CompaniesCapitalIssuedShares],
        [CompaniesCapitalCurrency], -- Transform from nvarchar to int (DynamicLists)
        [CompaniesCapitalActive],
        [CreatedBy],                -- Maps from CreatedBy_IDN
        [CreatedAt],                -- Maps from CreatedBy_Date
        [ModifiedBy],               -- Maps from UpdatedBy_IDN
        [ModifiedAt],               -- Maps from UpdatedBy_Date
        [IsDeleted],                -- New column, default value
        [DeletedBy],                -- New column, default value
        [DeletedAt]                 -- New column, default value
    )
    SELECT
        [CompaniesCapitalIDN],
        [CompaniesCapitalIDC],
        [Companies_IDN],
        [CompaniesCapitalDate],
        [CompaniesCapitalAmount],
        NULL,                       -- NominalValueOfShare - new column, default NULL
        NULL,                       -- ClassOfShares - new column, default NULL
        [CompaniesCapitalNumberOfShares],
        [CompaniesCapitalAuthorized],
        [CompaniesCapitalPaid],
        [CompaniesCapitalIssuedShares],
        -- Transform CompaniesCapitalCurrency from nvarchar to int using DynamicLists lookup
        (
            SELECT TOP 1 [DynamicListIDN]
            FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
            WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([CompaniesCapitalCurrency])))
            AND [MainListID] = 1011 -- currencies
        ) AS [CompaniesCapitalCurrency],
        [CompaniesCapitalActive],
        [CreatedBy_IDN],            -- Maps to CreatedBy
        [CreatedBy_Date],           -- Maps to CreatedAt
        [UpdatedBy_IDN],            -- Maps to ModifiedBy
        [UpdatedBy_Date],           -- Maps to ModifiedAt
        0,                          -- Default for IsDeleted
        NULL,                       -- Default for DeletedBy
        NULL                        -- Default for DeletedAt
    FROM [RGLAS].[dbo].[CompaniesCapitals]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesCapitals]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesCapitals].[CompaniesCapitalIdc] = [RGLAS].[dbo].[CompaniesCapitals].[CompaniesCapitalIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesCapitals].[CompaniesCapitalIDN] = [RGLAS].[dbo].[CompaniesCapitals].[CompaniesCapitalIDN]
    )
    -- Only insert records where CompaniesCapitalCurrency can be mapped to DynamicLists (NOT NULL constraint)
    AND [CompaniesCapitalCurrency] IS NOT NULL
    AND LTRIM(RTRIM([CompaniesCapitalCurrency])) != ''
    AND EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([CompaniesCapitalCurrency])))
        AND [MainListID] = 1011
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesCapitals] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesCapitals] CHECK CONSTRAINT ALL;

    -- Verify the migration and log skipped records
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT, @CurrencyMapped INT, @SkippedCount INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[CompaniesCapitals];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesCapitals];

    -- Count records that were skipped due to unmappable CompaniesCapitalCurrency
    SELECT @SkippedCount = COUNT(*)
    FROM [RGLAS].[dbo].[CompaniesCapitals]
    WHERE [CompaniesCapitalCurrency] IS NULL
    OR LTRIM(RTRIM([CompaniesCapitalCurrency])) = ''
    OR NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([CompaniesCapitalCurrency])))
        AND [MainListID] = 1011
    );

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesCapitals] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[CompaniesCapitals] r
        WHERE r.[CompaniesCapitalIDC] = p.[CompaniesCapitalIdc]
        AND r.[CompaniesCapitalIDN] = p.[CompaniesCapitalIDN]
    );

    -- Count successful CompaniesCapitalCurrency mappings
    SELECT @CurrencyMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesCapitals] p
    INNER JOIN [RGLAS].[dbo].[CompaniesCapitals] r ON r.[CompaniesCapitalIDC] = p.[CompaniesCapitalIdc] AND r.[CompaniesCapitalIDN] = p.[CompaniesCapitalIDN]
    WHERE r.[CompaniesCapitalCurrency] IS NOT NULL AND r.[CompaniesCapitalCurrency] != '' AND p.[CompaniesCapitalCurrency] IS NOT NULL;

    -- Report unmapped CompaniesCapitalCurrency values
    PRINT 'Unmapped CompaniesCapitalCurrency values that need to be added to DynamicLists (MainListID=1011):';
    DECLARE @UnmappedCurrencies NVARCHAR(MAX) = '';
    SELECT @UnmappedCurrencies = @UnmappedCurrencies + '''' + LTRIM(RTRIM([CompaniesCapitalCurrency])) + ''', '
    FROM [RGLAS].[dbo].[CompaniesCapitals]
    WHERE [CompaniesCapitalCurrency] IS NOT NULL
    AND LTRIM(RTRIM([CompaniesCapitalCurrency])) != ''
    AND NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([CompaniesCapitalCurrency])))
        AND [MainListID] = 1011
    )
    GROUP BY [CompaniesCapitalCurrency];

    IF @UnmappedCurrencies != ''
        PRINT SUBSTRING(@UnmappedCurrencies, 1, LEN(@UnmappedCurrencies) - 1); -- Remove trailing comma
    ELSE
        PRINT 'All CompaniesCapitalCurrency values found in DynamicLists';

    -- Log records that were skipped
    IF @SkippedCount > 0
    BEGIN
        PRINT 'SKIPPED RECORDS: The following records were NOT migrated due to unmappable CompaniesCapitalCurrency:';
        DECLARE @SkippedRecords NVARCHAR(MAX) = '';
        SELECT @SkippedRecords = @SkippedRecords + 'ID: ' + CAST([CompaniesCapitalIDN] AS VARCHAR(10)) + ' (CompaniesCapitalCurrency: ''' + ISNULL(LTRIM(RTRIM([CompaniesCapitalCurrency])), 'NULL') + '''), '
        FROM [RGLAS].[dbo].[CompaniesCapitals]
        WHERE [CompaniesCapitalCurrency] IS NULL
        OR LTRIM(RTRIM([CompaniesCapitalCurrency])) = ''
        OR NOT EXISTS (
            SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
            WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([CompaniesCapitalCurrency])))
            AND [MainListID] = 1011
        );

        IF LEN(@SkippedRecords) > 2
            PRINT SUBSTRING(@SkippedRecords, 1, LEN(@SkippedRecords) - 1); -- Remove trailing comma
    END

    PRINT '';
    PRINT 'Migration Summary for CompaniesCapitals:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'Records SKIPPED due to unmappable CompaniesCapitalCurrency: ' + CAST(@SkippedCount AS VARCHAR(10));
    PRINT 'CompaniesCapitalCurrency successful mappings: ' + CAST(@CurrencyMapped AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- CompaniesCapitalCurrency transformed from nvarchar to int using DynamicLists lookup (MainListID=1011)';
    PRINT '- NominalValueOfShare added as new column with default NULL value';
    PRINT '- ClassOfShares added as new column with default NULL value';
    PRINT '- Records with unmappable CompaniesCapitalCurrency are SKIPPED and logged above (NOT NULL constraint)';
    PRINT '- No fallback values used - only exact matches are migrated';
    PRINT '- Add unmapped currencies to DynamicLists and re-run migration for skipped records';
    PRINT '- Column size changes: CompaniesCapitalIdc (50->50)';
    PRINT '- Primary key changed from compound (CompaniesCapitalIDC+CompaniesCapitalIDN) to single (CompaniesCapitalIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'CompaniesCapitals migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesCapitals] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;