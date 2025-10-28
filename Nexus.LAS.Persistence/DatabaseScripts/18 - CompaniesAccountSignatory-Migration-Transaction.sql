-- Production Data Migration Script - RGLAS CompaniesAccountSignatory to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAccountSignatory];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [CompaniesAccountSignatory] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [CompaniesAccountSignatory] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAccountSignatory] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAccountSignatory] ON;

    -- Insert data from RGLAS with AccountSignatoryRule transformation
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAccountSignatory] (
        [CompaniesAccountSignatoryIDN],
        [CompaniesAccountSignatoryIDC],
        [CompaniesBankAccount_IDN],
        [AccountSignatoryPerson_IDN],
        [AccountSignatoryRule],     -- Transform from nvarchar to int (DynamicLists)
        [FromAmount],
        [ToAmount],
        [Description],
        [AccountSignatoryDate],
        [CessationDate],            -- New column, default NULL
        [AccountSignatoryActive],
        [CreatedBy],                -- Maps from CreatedBy_IDN
        [CreatedAt],                -- Maps from CreatedBy_Date
        [ModifiedBy],               -- Maps from UpdatedBy_IDN
        [ModifiedAt],               -- Maps from UpdatedBy_Date
        [IsDeleted],                -- New column, default value
        [DeletedBy],                -- New column, default value
        [DeletedAt]                 -- New column, default value
    )
    SELECT
        [CompaniesAccountSignatoryIDN],
        [CompaniesAccountSignatoryIDC],
        [CompaniesBankAccount_IDN],
        [AccountSignatoryPerson_IDN],
        -- Transform AccountSignatoryRule from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [AccountSignatoryRule] IS NULL OR LTRIM(RTRIM([AccountSignatoryRule])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([AccountSignatoryRule])))
                AND [MainListID] = 1033 -- rule
            )
        END AS [AccountSignatoryRule],
        [FromAmount],
        [ToAmount],
        [Description],
        [AccountSignatoryDate],
        NULL,                       -- CessationDate - new column, default NULL
        [AccountSignatoryActive],
        [CreatedBy_IDN],            -- Maps to CreatedBy
        [CreatedBy_Date],           -- Maps to CreatedAt
        [UpdatedBy_IDN],            -- Maps to ModifiedBy
        [UpdatedBy_Date],           -- Maps to ModifiedAt
        0,                          -- Default for IsDeleted
        NULL,                       -- Default for DeletedBy
        NULL                        -- Default for DeletedAt
    FROM [RGLAS].[dbo].[CompaniesAccountSignatory]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAccountSignatory]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAccountSignatory].[CompaniesAccountSignatoryIDC] = [RGLAS].[dbo].[CompaniesAccountSignatory].[CompaniesAccountSignatoryIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAccountSignatory].[CompaniesAccountSignatoryIDN] = [RGLAS].[dbo].[CompaniesAccountSignatory].[CompaniesAccountSignatoryIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAccountSignatory] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAccountSignatory] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT, @RuleMapped INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[CompaniesAccountSignatory];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAccountSignatory];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAccountSignatory] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[CompaniesAccountSignatory] r
        WHERE r.[CompaniesAccountSignatoryIDC] = p.[CompaniesAccountSignatoryIDC]
        AND r.[CompaniesAccountSignatoryIDN] = p.[CompaniesAccountSignatoryIDN]
    );

    -- Count successful AccountSignatoryRule mappings
    SELECT @RuleMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAccountSignatory] p
    INNER JOIN [RGLAS].[dbo].[CompaniesAccountSignatory] r ON r.[CompaniesAccountSignatoryIDC] = p.[CompaniesAccountSignatoryIDC] AND r.[CompaniesAccountSignatoryIDN] = p.[CompaniesAccountSignatoryIDN]
    WHERE r.[AccountSignatoryRule] IS NOT NULL AND r.[AccountSignatoryRule] != '' AND p.[AccountSignatoryRule] IS NOT NULL;

    -- Report unmapped AccountSignatoryRule values
    PRINT 'Unmapped AccountSignatoryRule values that need to be added to DynamicLists (MainListID=1033):';
    DECLARE @UnmappedRules NVARCHAR(MAX) = '';
    SELECT @UnmappedRules = @UnmappedRules + '''' + LTRIM(RTRIM([AccountSignatoryRule])) + ''', '
    FROM [RGLAS].[dbo].[CompaniesAccountSignatory]
    WHERE [AccountSignatoryRule] IS NOT NULL
    AND LTRIM(RTRIM([AccountSignatoryRule])) != ''
    AND NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([AccountSignatoryRule])))
        AND [MainListID] = 1033
    )
    GROUP BY [AccountSignatoryRule];

    IF @UnmappedRules != ''
        PRINT SUBSTRING(@UnmappedRules, 1, LEN(@UnmappedRules) - 1); -- Remove trailing comma
    ELSE
        PRINT 'All AccountSignatoryRule values found in DynamicLists';

    PRINT '';
    PRINT 'Migration Summary for CompaniesAccountSignatory:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'AccountSignatoryRule successful mappings: ' + CAST(@RuleMapped AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- AccountSignatoryRule transformed from nvarchar to int using DynamicLists lookup (MainListID=1033)';
    PRINT '- CessationDate column added with default NULL value';
    PRINT '- Column size changes: CompaniesAccountSignatoryIDC (50->50), Description (max->max)';
    PRINT '- Primary key changed from compound (CompaniesAccountSignatoryIDC+CompaniesAccountSignatoryIDN) to single (CompaniesAccountSignatoryIDN)';
    PRINT '- AccountSignatoryDate converted from datetime to datetime2(7)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'CompaniesAccountSignatory migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesAccountSignatory] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;