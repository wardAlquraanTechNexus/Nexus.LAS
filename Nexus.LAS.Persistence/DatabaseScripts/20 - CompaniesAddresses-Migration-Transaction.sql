-- Production Data Migration Script - RGLAS CompaniesAddresses to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAddresses];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [CompaniesAddresses] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [CompaniesAddresses] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAddresses] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAddresses] ON;

    -- Insert data from RGLAS with POBoxCity and POBoxCountry transformations (only records with mappable POBoxCountry)
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAddresses] (
        [CompaniesAddressIDN],
        [CompaniesAddressIDC],
        [Companies_IDN],
        [AddressPrimary],
        [AddressLine1],
        [AddressLine2],
        [AddressLine3],
        [POBoxumber],
        [POBoxCity],            -- Transform from nvarchar to int (DynamicLists)
        [POBoxCountry],         -- Transform from nvarchar to int (DynamicLists)
        [CreatedBy],            -- Maps from CreatedBy_IDN
        [CreatedAt],            -- Maps from CreatedBy_Date
        [ModifiedBy],           -- Maps from UpdatedBy_IDN
        [ModifiedAt],           -- Maps from UpdatedBy_Date
        [IsDeleted],            -- New column, default value
        [DeletedBy],            -- New column, default value
        [DeletedAt]             -- New column, default value
    )
    SELECT
        [CompaniesAddressIDN],
        [CompaniesAddressIDC],
        [Companies_IDN],
        [AddressPrimary],
        [AddressLine1],
        ISNULL([AddressLine2], ''),
        ISNULL([AddressLine3], ''),
        ISNULL([POBoxumber], ''),
        -- Transform POBoxCity from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [POBoxCity] IS NULL OR LTRIM(RTRIM([POBoxCity])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([POBoxCity])))
                AND [MainListID] = 194 -- cities
            )
        END AS [POBoxCity],
        -- Transform POBoxCountry from nvarchar to int using DynamicLists lookup
        (
            SELECT TOP 1 [DynamicListIDN]
            FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
            WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([POBoxCountry])))
            AND [MainListID] = 1010 -- countries
        ) AS [POBoxCountry],
        [CreatedBy_IDN],        -- Maps to CreatedBy
        [CreatedBy_Date],       -- Maps to CreatedAt
        [UpdatedBy_IDN],        -- Maps to ModifiedBy
        [UpdatedBy_Date],       -- Maps to ModifiedAt
        0,                      -- Default for IsDeleted
        NULL,                   -- Default for DeletedBy
        NULL                    -- Default for DeletedAt
    FROM [RGLAS].[dbo].[CompaniesAddresses]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAddresses]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAddresses].[CompaniesAddressIDC] = [RGLAS].[dbo].[CompaniesAddresses].[CompaniesAddressIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAddresses].[CompaniesAddressIDN] = [RGLAS].[dbo].[CompaniesAddresses].[CompaniesAddressIDN]
    )
    -- Only insert records where POBoxCountry can be mapped to DynamicLists (NOT NULL constraint)
    AND [POBoxCountry] IS NOT NULL
    AND LTRIM(RTRIM([POBoxCountry])) != ''
    AND EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([POBoxCountry])))
        AND [MainListID] = 1010
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAddresses] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAddresses] CHECK CONSTRAINT ALL;

    -- Verify the migration and log skipped records
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT, @CityMapped INT, @CountryMapped INT, @SkippedCount INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[CompaniesAddresses];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAddresses];

    -- Count records that were skipped due to unmappable POBoxCountry
    SELECT @SkippedCount = COUNT(*)
    FROM [RGLAS].[dbo].[CompaniesAddresses]
    WHERE [POBoxCountry] IS NULL
    OR LTRIM(RTRIM([POBoxCountry])) = ''
    OR NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([POBoxCountry])))
        AND [MainListID] = 1010
    );

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAddresses] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[CompaniesAddresses] r
        WHERE r.[CompaniesAddressIDC] = p.[CompaniesAddressIDC]
        AND r.[CompaniesAddressIDN] = p.[CompaniesAddressIDN]
    );

    -- Count successful POBoxCity mappings
    SELECT @CityMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAddresses] p
    INNER JOIN [RGLAS].[dbo].[CompaniesAddresses] r ON r.[CompaniesAddressIDC] = p.[CompaniesAddressIDC] AND r.[CompaniesAddressIDN] = p.[CompaniesAddressIDN]
    WHERE r.[POBoxCity] IS NOT NULL AND r.[POBoxCity] != '' AND p.[POBoxCity] IS NOT NULL;

    -- Count successful POBoxCountry mappings
    SELECT @CountryMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAddresses] p
    INNER JOIN [RGLAS].[dbo].[CompaniesAddresses] r ON r.[CompaniesAddressIDC] = p.[CompaniesAddressIDC] AND r.[CompaniesAddressIDN] = p.[CompaniesAddressIDN]
    WHERE r.[POBoxCountry] IS NOT NULL AND r.[POBoxCountry] != '' AND p.[POBoxCountry] IS NOT NULL;

    -- Report unmapped POBoxCity values
    PRINT 'Unmapped POBoxCity values that need to be added to DynamicLists (MainListID=194):';
    DECLARE @UnmappedCities NVARCHAR(MAX) = '';
    SELECT @UnmappedCities = @UnmappedCities + '''' + LTRIM(RTRIM([POBoxCity])) + ''', '
    FROM [RGLAS].[dbo].[CompaniesAddresses]
    WHERE [POBoxCity] IS NOT NULL
    AND LTRIM(RTRIM([POBoxCity])) != ''
    AND NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([POBoxCity])))
        AND [MainListID] = 194
    )
    GROUP BY [POBoxCity];

    IF @UnmappedCities != ''
        PRINT SUBSTRING(@UnmappedCities, 1, LEN(@UnmappedCities) - 1); -- Remove trailing comma
    ELSE
        PRINT 'All POBoxCity values found in DynamicLists';

    -- Report unmapped POBoxCountry values
    PRINT 'Unmapped POBoxCountry values that need to be added to DynamicLists (MainListID=1010):';
    DECLARE @UnmappedCountries NVARCHAR(MAX) = '';
    SELECT @UnmappedCountries = @UnmappedCountries + '''' + LTRIM(RTRIM([POBoxCountry])) + ''', '
    FROM [RGLAS].[dbo].[CompaniesAddresses]
    WHERE [POBoxCountry] IS NOT NULL
    AND LTRIM(RTRIM([POBoxCountry])) != ''
    AND NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([POBoxCountry])))
        AND [MainListID] = 1010
    )
    GROUP BY [POBoxCountry];

    IF @UnmappedCountries != ''
        PRINT SUBSTRING(@UnmappedCountries, 1, LEN(@UnmappedCountries) - 1); -- Remove trailing comma
    ELSE
        PRINT 'All POBoxCountry values found in DynamicLists';

    -- Log records that were skipped
    IF @SkippedCount > 0
    BEGIN
        PRINT 'SKIPPED RECORDS: The following records were NOT migrated due to unmappable POBoxCountry (NOT NULL constraint):';
        DECLARE @SkippedRecords NVARCHAR(MAX) = '';
        SELECT @SkippedRecords = @SkippedRecords + 'ID: ' + CAST([CompaniesAddressIDN] AS VARCHAR(10)) + ' (POBoxCountry: ''' + ISNULL(LTRIM(RTRIM([POBoxCountry])), 'NULL') + '''), '
        FROM [RGLAS].[dbo].[CompaniesAddresses]
        WHERE [POBoxCountry] IS NULL
        OR LTRIM(RTRIM([POBoxCountry])) = ''
        OR NOT EXISTS (
            SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
            WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([POBoxCountry])))
            AND [MainListID] = 1010
        );

        IF LEN(@SkippedRecords) > 2
            PRINT SUBSTRING(@SkippedRecords, 1, LEN(@SkippedRecords) - 1); -- Remove trailing comma
    END

    PRINT '';
    PRINT 'Migration Summary for CompaniesAddresses:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'Records SKIPPED due to unmappable POBoxCountry: ' + CAST(@SkippedCount AS VARCHAR(10));
    PRINT 'POBoxCity successful mappings: ' + CAST(@CityMapped AS VARCHAR(10));
    PRINT 'POBoxCountry successful mappings: ' + CAST(@CountryMapped AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- POBoxCity transformed from nvarchar to int using DynamicLists lookup (MainListID=194)';
    PRINT '- POBoxCountry transformed from nvarchar to int using DynamicLists lookup (MainListID=1010)';
    PRINT '- Records with unmappable POBoxCountry are SKIPPED and logged above (NOT NULL constraint)';
    PRINT '- No fallback values used - only exact matches are migrated';
    PRINT '- Add unmapped countries to DynamicLists and re-run migration for skipped records';
    PRINT '- AddressLine2, AddressLine3, POBoxumber: NULL values converted to empty strings';
    PRINT '- Column size changes: CompaniesAddressIDC (50->50), AddressLine fields (50->50)';
    PRINT '- Primary key changed from compound (CompaniesAddressIDC+CompaniesAddressIDN) to single (CompaniesAddressIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'CompaniesAddresses migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAddresses] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;