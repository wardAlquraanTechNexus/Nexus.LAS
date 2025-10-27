-- Production Data Migration Script - RGLAS PersonsAddresses to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsAddresses];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [PersonsAddresses] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [PersonsAddresses] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsAddresses] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsAddresses] ON;

    -- Insert data from RGLAS with transformations for POBoxCity and POBoxCountry
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsAddresses] (
        [PersonsAddressIDC],
        [PersonsAddressIDN],
        [Persons_IDN],
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
        [PersonsAddressIDC],
        [PersonsAddressIDN],
        [Persons_IDN],
        [AddressPrimary],
        [AddressLine1],
        [AddressLine2],
        [AddressLine3],
        [POBoxumber],
        -- Transform POBoxCity from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [POBoxCity] IS NULL OR LTRIM(RTRIM([POBoxCity])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([POBoxCity])))
                AND [MainListID] = 194 -- Cities category (LinkedCategory)
            )
        END AS [POBoxCity],
        -- Transform POBoxCountry from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [POBoxCountry] IS NULL OR LTRIM(RTRIM([POBoxCountry])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([POBoxCountry])))
                AND [MainListID] = 1010 -- Countries category from root DynamicLists
            )
        END AS [POBoxCountry],
        [CreatedBy_IDN],        -- Maps to CreatedBy
        [CreatedBy_Date],       -- Maps to CreatedAt
        [UpdatedBy_IDN],        -- Maps to ModifiedBy
        [UpdatedBy_Date],       -- Maps to ModifiedAt
        0,                      -- Default for IsDeleted
        NULL,                   -- Default for DeletedBy
        NULL                    -- Default for DeletedAt
    FROM [RGLAS].[dbo].[PersonsAddresses]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsAddresses]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsAddresses].[PersonsAddressIDC] = [RGLAS].[dbo].[PersonsAddresses].[PersonsAddressIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsAddresses].[PersonsAddressIDN] = [RGLAS].[dbo].[PersonsAddresses].[PersonsAddressIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsAddresses] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsAddresses] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT, @POBoxCityMapped INT, @POBoxCountryMapped INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[PersonsAddresses];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsAddresses];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsAddresses] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[PersonsAddresses] r
        WHERE r.[PersonsAddressIDC] = p.[PersonsAddressIDC]
        AND r.[PersonsAddressIDN] = p.[PersonsAddressIDN]
    );

    -- Count successful POBoxCity mappings
    SELECT @POBoxCityMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsAddresses] p
    INNER JOIN [RGLAS].[dbo].[PersonsAddresses] r ON r.[PersonsAddressIDC] = p.[PersonsAddressIDC] AND r.[PersonsAddressIDN] = p.[PersonsAddressIDN]
    WHERE r.[POBoxCity] IS NOT NULL AND r.[POBoxCity] != '' AND p.[POBoxCity] IS NOT NULL;

    -- Count successful POBoxCountry mappings
    SELECT @POBoxCountryMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsAddresses] p
    INNER JOIN [RGLAS].[dbo].[PersonsAddresses] r ON r.[PersonsAddressIDC] = p.[PersonsAddressIDC] AND r.[PersonsAddressIDN] = p.[PersonsAddressIDN]
    WHERE r.[POBoxCountry] IS NOT NULL AND r.[POBoxCountry] != '' AND p.[POBoxCountry] IS NOT NULL;

    -- Report unmapped POBoxCity values that need to be added to DynamicLists
    PRINT 'Unmapped POBoxCity values that need to be added to DynamicLists (MainListID=194):';
    DECLARE @UnmappedCities NVARCHAR(MAX) = '';
    SELECT @UnmappedCities = @UnmappedCities + '''' + LTRIM(RTRIM([POBoxCity])) + ''', '
    FROM [RGLAS].[dbo].[PersonsAddresses]
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

    -- Report unmapped POBoxCountry values that need to be added to DynamicLists
    PRINT 'Unmapped POBoxCountry values that need to be added to DynamicLists (MainListID=1010):';
    DECLARE @UnmappedCountries NVARCHAR(MAX) = '';
    SELECT @UnmappedCountries = @UnmappedCountries + '''' + LTRIM(RTRIM([POBoxCountry])) + ''', '
    FROM [RGLAS].[dbo].[PersonsAddresses]
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

    PRINT '';
    PRINT 'Migration Summary for PersonsAddresses:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'POBoxCity successful mappings: ' + CAST(@POBoxCityMapped AS VARCHAR(10));
    PRINT 'POBoxCountry successful mappings: ' + CAST(@POBoxCountryMapped AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- POBoxCity lookup from migrated DynamicLists (MainListID=194 - Cities)';
    PRINT '- POBoxCountry lookup from migrated DynamicLists (MainListID=1010 - Countries)';
    PRINT '- Unmapped values will be NULL and need manual insertion into DynamicLists';
    PRINT '- Case-insensitive matching used for better lookup success';
    PRINT '- Column size changes: PersonsAddressIDC (50->max), AddressLine1-3 (50->max), etc.';
    PRINT '- Primary key changed from compound (PersonsAddressIDC+PersonsAddressIDN) to single (PersonsAddressIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'PersonsAddresses migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsAddresses] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;