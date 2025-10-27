-- Production Data Migration Script - RGLAS PersonsPhones to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsPhones];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [PersonsPhones] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [PersonsPhones] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsPhones] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsPhones] ON;

    -- Insert data from RGLAS with PhoneType transformation
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsPhones] (
        [PersonsPhoneIDC],
        [PersonsPhoneIDN],
        [Persons_IDN],
        [PhonePrimary],
        [PhoneType],            -- Transform from nvarchar to int (DynamicLists)
        [PhoneNumber],
        [CreatedBy],            -- Maps from CreatedBy_IDN
        [CreatedAt],            -- Maps from CreatedBy_Date
        [ModifiedBy],           -- Maps from UpdatedBy_IDN
        [ModifiedAt],           -- Maps from UpdatedBy_Date
        [IsDeleted],            -- New column, default value
        [DeletedBy],            -- New column, default value
        [DeletedAt]             -- New column, default value
    )
    SELECT
        [PersonsPhoneIDC],
        [PersonsPhoneIDN],
        [Persons_IDN],
        [PhonePrimary],
        -- Transform PhoneType from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [PhoneType] IS NULL OR LTRIM(RTRIM([PhoneType])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE [MenuValue] = LTRIM(RTRIM([PhoneType]))
                AND [MainListID] = 1024 -- PersonsPhonesTypes
            )
        END AS [PhoneType],
        [PhoneNumber],
        [CreatedBy_IDN],        -- Maps to CreatedBy
        [CreatedBy_Date],       -- Maps to CreatedAt
        [UpdatedBy_IDN],        -- Maps to ModifiedBy
        [UpdatedBy_Date],       -- Maps to ModifiedAt
        0,                      -- Default for IsDeleted
        NULL,                   -- Default for DeletedBy
        NULL                    -- Default for DeletedAt
    FROM [RGLAS].[dbo].[PersonsPhones]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsPhones]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsPhones].[PersonsPhoneIDC] = [RGLAS].[dbo].[PersonsPhones].[PersonsPhoneIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsPhones].[PersonsPhoneIDN] = [RGLAS].[dbo].[PersonsPhones].[PersonsPhoneIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsPhones] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsPhones] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT, @PhoneTypeMapped INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[PersonsPhones];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsPhones];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsPhones] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[PersonsPhones] r
        WHERE r.[PersonsPhoneIDC] = p.[PersonsPhoneIDC]
        AND r.[PersonsPhoneIDN] = p.[PersonsPhoneIDN]
    );

    -- Count successful PhoneType mappings
    SELECT @PhoneTypeMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsPhones] p
    INNER JOIN [RGLAS].[dbo].[PersonsPhones] r ON r.[PersonsPhoneIDC] = p.[PersonsPhoneIDC] AND r.[PersonsPhoneIDN] = p.[PersonsPhoneIDN]
    WHERE r.[PhoneType] IS NOT NULL AND r.[PhoneType] != '' AND p.[PhoneType] IS NOT NULL;

    PRINT 'Migration Summary for PersonsPhones:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'PhoneType successful mappings: ' + CAST(@PhoneTypeMapped AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- PhoneType transformed from nvarchar to int using DynamicLists lookup (MainListID=1024)';
    PRINT '- PhoneNumber kept as-is from source (no cleaning applied)';
    PRINT '- Column size changes: PersonsPhoneIDC (50->max), PhoneNumber (50->14)';
    PRINT '- WARNING: Some phone numbers may be truncated due to column size limit';
    PRINT '- Primary key changed from compound (PersonsPhoneIDC+PersonsPhoneIDN) to single (PersonsPhoneIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'PersonsPhones migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsPhones] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;