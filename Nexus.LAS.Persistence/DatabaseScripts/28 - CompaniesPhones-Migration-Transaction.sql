-- Production Data Migration Script - RGLAS CompaniesPhones to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPhones];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [CompaniesPhones] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [CompaniesPhones] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPhones] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPhones] ON;

    -- Insert data from RGLAS with PhoneType transformation
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPhones] (
        [CompaniesPhoneIDN],
        [CompaniesPhoneIDC],
        [Companies_IDN],
        [PhonePrimary],
        [PhoneType],                -- Transform from nvarchar to int (DynamicLists)
        [PhoneNumber],
        [CreatedBy],                -- Maps from CreatedBy_IDN
        [CreatedAt],                -- Maps from CreatedBy_Date
        [ModifiedBy],               -- Maps from UpdatedBy_IDN
        [ModifiedAt],               -- Maps from UpdatedBy_Date
        [IsDeleted],                -- New column, default value
        [DeletedBy],                -- New column, default value
        [DeletedAt]                 -- New column, default value
    )
    SELECT
        [CompaniesPhoneIDN],
        [CompaniesPhoneIDC],
        [Companies_IDN],
        [PhonePrimary],
        -- Transform PhoneType from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [PhoneType] IS NULL OR LTRIM(RTRIM([PhoneType])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([PhoneType])))
                AND [MainListID] = 1024 -- personsPhones types (assuming same as persons)
            )
        END AS [PhoneType],
        [PhoneNumber],
        [CreatedBy_IDN],            -- Maps to CreatedBy
        [CreatedBy_Date],           -- Maps to CreatedAt
        [UpdatedBy_IDN],            -- Maps to ModifiedBy
        [UpdatedBy_Date],           -- Maps to ModifiedAt
        0,                          -- Default for IsDeleted
        NULL,                       -- Default for DeletedBy
        NULL                        -- Default for DeletedAt
    FROM [RGLAS].[dbo].[CompaniesPhones]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPhones]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPhones].[CompaniesPhoneIDC] = [RGLAS].[dbo].[CompaniesPhones].[CompaniesPhoneIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPhones].[CompaniesPhoneIDN] = [RGLAS].[dbo].[CompaniesPhones].[CompaniesPhoneIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPhones] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPhones] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT, @PhoneTypeMapped INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[CompaniesPhones];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPhones];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPhones] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[CompaniesPhones] r
        WHERE r.[CompaniesPhoneIDC] = p.[CompaniesPhoneIDC]
        AND r.[CompaniesPhoneIDN] = p.[CompaniesPhoneIDN]
    );

    -- Count successful PhoneType mappings
    SELECT @PhoneTypeMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPhones] p
    INNER JOIN [RGLAS].[dbo].[CompaniesPhones] r ON r.[CompaniesPhoneIDC] = p.[CompaniesPhoneIDC] AND r.[CompaniesPhoneIDN] = p.[CompaniesPhoneIDN]
    WHERE r.[PhoneType] IS NOT NULL AND r.[PhoneType] != '' AND p.[PhoneType] IS NOT NULL;

    -- Report unmapped PhoneType values
    PRINT 'Unmapped PhoneType values that need to be added to DynamicLists (MainListID=1024):';
    DECLARE @UnmappedPhoneTypes NVARCHAR(MAX) = '';
    SELECT @UnmappedPhoneTypes = @UnmappedPhoneTypes + '''' + LTRIM(RTRIM([PhoneType])) + ''', '
    FROM [RGLAS].[dbo].[CompaniesPhones]
    WHERE [PhoneType] IS NOT NULL
    AND LTRIM(RTRIM([PhoneType])) != ''
    AND NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([PhoneType])))
        AND [MainListID] = 1024
    )
    GROUP BY [PhoneType];

    IF @UnmappedPhoneTypes != ''
        PRINT SUBSTRING(@UnmappedPhoneTypes, 1, LEN(@UnmappedPhoneTypes) - 1); -- Remove trailing comma
    ELSE
        PRINT 'All PhoneType values found in DynamicLists';

    PRINT '';
    PRINT 'Migration Summary for CompaniesPhones:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'PhoneType successful mappings: ' + CAST(@PhoneTypeMapped AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- PhoneType transformed from nvarchar to int using DynamicLists lookup (MainListID=1024)';
    PRINT '- PhoneNumber kept as-is from source (no cleaning applied)';
    PRINT '- Column mappings: CreatedBy_IDN->CreatedBy, CreatedBy_Date->CreatedAt, UpdatedBy_IDN->ModifiedBy, UpdatedBy_Date->ModifiedAt';
    PRINT '- Added standard audit columns: IsDeleted, DeletedBy, DeletedAt with default values';
    PRINT '- Column size changes: CompaniesPhoneIDC (50->50)';
    PRINT '- Primary key changed from compound (CompaniesPhoneIDC+CompaniesPhoneIDN) to single (CompaniesPhoneIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'CompaniesPhones migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesPhones] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;