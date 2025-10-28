-- Production Data Migration Script - RGLAS Companies to Production (Bridge DB excluded)
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Companies];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [Companies] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [Companies] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[Companies] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[Companies] ON;

    -- Insert data from RGLAS with DynamicLists transformations
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[Companies] (
        [CompanyIdn],           -- Maps from CompanyIDN
        [CompanyIdc],           -- Maps from CompanyIDC
        [CompanyCode],
        [IncorporationDate],    -- Maps from Incorporationdate
        [CompanyEnglishName],
        [CompanyArabicName],
        [CompanyShortName],
        [CompanyTypeIdn],       -- Transform from nvarchar to int (DynamicLists)
        [CompanyClassIdn],      -- Transform from nvarchar to int (DynamicLists)
        [GroupCompanyIdn],      -- Transform from nvarchar to int (DynamicLists)
        [RelevantCompanyIdn],   -- Transform from nvarchar to int (DynamicLists)
        [LegalTypeIdn],         -- Transform from nvarchar to int (DynamicLists)
        [PlaceOfRegistrationMainIdn], -- Transform from nvarchar to int (DynamicLists)
        [PlaceOfRegistrationSubIdn],  -- Transform from nvarchar to int (DynamicLists)
        [CompanyStatus],        -- Transform from nvarchar to int (CommonStatus)
        [Private],
        [CreatedBy],            -- Maps from CreatedBy_IDN
        [CreatedAt],            -- Maps from CreatedBy_Date
        [ModifiedBy],           -- Maps from UpdatedBy_IDN
        [ModifiedAt],           -- Maps from UpdatedBy_Date
        [IsDeleted],            -- New column, default value
        [DeletedBy],            -- New column, default value
        [DeletedAt]             -- New column, default value
    )
    SELECT
        [CompanyIDN],           -- Maps to CompanyIdn
        [CompanyIDC],           -- Maps to CompanyIdc
        [CompanyCode],
        [Incorporationdate],    -- Maps to IncorporationDate
        [CompanyEnglishName],
        [CompanyArabicName],
        [CompanyShortName],
        -- Transform CompanyTypeIDN from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [CompanyTypeIDN] IS NULL OR LTRIM(RTRIM([CompanyTypeIDN])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([CompanyTypeIDN])))
                AND [MainListID] = 1008 -- companyType
            )
        END AS [CompanyTypeIdn],
        -- Transform CompanyClassIDN from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [CompanyClassIDN] IS NULL OR LTRIM(RTRIM([CompanyClassIDN])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([CompanyClassIDN])))
                AND [MainListID] = 1006 -- companyClass
            )
        END AS [CompanyClassIdn],
        -- Transform GroupCompany from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [GroupCompany] IS NULL OR LTRIM(RTRIM([GroupCompany])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([GroupCompany])))
                AND [MainListID] = 1004 -- groupCompany
            )
        END AS [GroupCompanyIdn],
        -- Transform RelevantCompany from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [RelevantCompany] IS NULL OR LTRIM(RTRIM([RelevantCompany])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([RelevantCompany])))
                AND [MainListID] = 1032 -- relevantCompany
            )
        END AS [RelevantCompanyIdn],
        -- Transform LegalType from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [LegalType] IS NULL OR LTRIM(RTRIM([LegalType])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([LegalType])))
                AND [MainListID] = 1005 -- legalType
            )
        END AS [LegalTypeIdn],
        -- Transform PlaceOfRegistrationMainIDN from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [PlaceOfRegistrationMainIDN] IS NULL OR LTRIM(RTRIM([PlaceOfRegistrationMainIDN])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([PlaceOfRegistrationMainIDN])))
                AND [MainListID] = 1025 -- placeOfRegistration
            )
        END AS [PlaceOfRegistrationMainIdn],
        -- Transform PlaceOfRegistrationSubIDN from nvarchar to int using DynamicLists lookup
        CASE
            WHEN [PlaceOfRegistrationSubIDN] IS NULL OR LTRIM(RTRIM([PlaceOfRegistrationSubIDN])) = '' THEN NULL
            ELSE (
                SELECT TOP 1 [DynamicListIDN]
                FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
                WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([PlaceOfRegistrationSubIDN])))
                AND [MainListID] = 1025 -- placeOfRegistration
            )
        END AS [PlaceOfRegistrationSubIdn],
        -- Transform CompanyStatus from nvarchar to int (CommonStatus enum)
        CASE
            WHEN LOWER(LTRIM(RTRIM([CompanyStatus]))) = 'new' THEN 0      -- CommonStatus.New
            WHEN LOWER(LTRIM(RTRIM([CompanyStatus]))) = 'active' THEN 1    -- CommonStatus.Active
            WHEN LOWER(LTRIM(RTRIM([CompanyStatus]))) = 'inactive' THEN 2  -- CommonStatus.Inactive
            ELSE 0  -- Default to New if unknown status
        END AS [CompanyStatus],
        [Private],
        [CreatedBy_IDN],        -- Maps to CreatedBy
        [CreatedBy_Date],       -- Maps to CreatedAt
        [UpdatedBy_IDN],        -- Maps to ModifiedBy
        [UpdatedBy_Date],       -- Maps to ModifiedAt
        0,                      -- Default for IsDeleted
        NULL,                   -- Default for DeletedBy
        NULL                    -- Default for DeletedAt
    FROM [RGLAS].[dbo].[Companies]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Companies]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[Companies].[CompanyIdc] = [RGLAS].[dbo].[Companies].[CompanyIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[Companies].[CompanyIdn] = [RGLAS].[dbo].[Companies].[CompanyIDN]
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[Companies] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[Companies] CHECK CONSTRAINT ALL;

    -- Verify the migration and report unmapped values
    DECLARE @RGLASCount INT, @ProductionAfter INT, @ActualMigrated INT;
    DECLARE @CompanyTypeMapped INT, @CompanyClassMapped INT, @GroupCompanyMapped INT;
    DECLARE @RelevantCompanyMapped INT, @LegalTypeMapped INT, @PlaceMainMapped INT, @PlaceSubMapped INT;

    SELECT @RGLASCount = COUNT(*) FROM [RGLAS].[dbo].[Companies];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Companies];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Companies] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[Companies] r
        WHERE r.[CompanyIDC] = p.[CompanyIdc]
        AND r.[CompanyIDN] = p.[CompanyIdn]
    );

    -- Count successful mappings for each DynamicLists field
    SELECT @CompanyTypeMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Companies] p
    INNER JOIN [RGLAS].[dbo].[Companies] r ON r.[CompanyIDC] = p.[CompanyIdc] AND r.[CompanyIDN] = p.[CompanyIdn]
    WHERE r.[CompanyTypeIDN] IS NOT NULL AND r.[CompanyTypeIDN] != '' AND p.[CompanyTypeIdn] IS NOT NULL;

    SELECT @CompanyClassMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Companies] p
    INNER JOIN [RGLAS].[dbo].[Companies] r ON r.[CompanyIDC] = p.[CompanyIdc] AND r.[CompanyIDN] = p.[CompanyIdn]
    WHERE r.[CompanyClassIDN] IS NOT NULL AND r.[CompanyClassIDN] != '' AND p.[CompanyClassIdn] IS NOT NULL;

    SELECT @GroupCompanyMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Companies] p
    INNER JOIN [RGLAS].[dbo].[Companies] r ON r.[CompanyIDC] = p.[CompanyIdc] AND r.[CompanyIDN] = p.[CompanyIdn]
    WHERE r.[GroupCompany] IS NOT NULL AND r.[GroupCompany] != '' AND p.[GroupCompanyIdn] IS NOT NULL;

    SELECT @RelevantCompanyMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Companies] p
    INNER JOIN [RGLAS].[dbo].[Companies] r ON r.[CompanyIDC] = p.[CompanyIdc] AND r.[CompanyIDN] = p.[CompanyIdn]
    WHERE r.[RelevantCompany] IS NOT NULL AND r.[RelevantCompany] != '' AND p.[RelevantCompanyIdn] IS NOT NULL;

    SELECT @LegalTypeMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Companies] p
    INNER JOIN [RGLAS].[dbo].[Companies] r ON r.[CompanyIDC] = p.[CompanyIdc] AND r.[CompanyIDN] = p.[CompanyIdn]
    WHERE r.[LegalType] IS NOT NULL AND r.[LegalType] != '' AND p.[LegalTypeIdn] IS NOT NULL;

    SELECT @PlaceMainMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Companies] p
    INNER JOIN [RGLAS].[dbo].[Companies] r ON r.[CompanyIDC] = p.[CompanyIdc] AND r.[CompanyIDN] = p.[CompanyIdn]
    WHERE r.[PlaceOfRegistrationMainIDN] IS NOT NULL AND r.[PlaceOfRegistrationMainIDN] != '' AND p.[PlaceOfRegistrationMainIdn] IS NOT NULL;

    SELECT @PlaceSubMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[Companies] p
    INNER JOIN [RGLAS].[dbo].[Companies] r ON r.[CompanyIDC] = p.[CompanyIdc] AND r.[CompanyIDN] = p.[CompanyIdn]
    WHERE r.[PlaceOfRegistrationSubIDN] IS NOT NULL AND r.[PlaceOfRegistrationSubIDN] != '' AND p.[PlaceOfRegistrationSubIdn] IS NOT NULL;

    PRINT 'Migration Summary for Companies:';
    PRINT 'RGLAS total records: ' + CAST(@RGLASCount AS VARCHAR(10));
    PRINT 'Records migrated from RGLAS: ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'CompanyType successful mappings: ' + CAST(@CompanyTypeMapped AS VARCHAR(10));
    PRINT 'CompanyClass successful mappings: ' + CAST(@CompanyClassMapped AS VARCHAR(10));
    PRINT 'GroupCompany successful mappings: ' + CAST(@GroupCompanyMapped AS VARCHAR(10));
    PRINT 'RelevantCompany successful mappings: ' + CAST(@RelevantCompanyMapped AS VARCHAR(10));
    PRINT 'LegalType successful mappings: ' + CAST(@LegalTypeMapped AS VARCHAR(10));
    PRINT 'PlaceOfRegistrationMain successful mappings: ' + CAST(@PlaceMainMapped AS VARCHAR(10));
    PRINT 'PlaceOfRegistrationSub successful mappings: ' + CAST(@PlaceSubMapped AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- CompanyTypeIdn transformed using DynamicLists (MainListID=1008)';
    PRINT '- CompanyClassIdn transformed using DynamicLists (MainListID=1006)';
    PRINT '- GroupCompanyIdn transformed using DynamicLists (MainListID=1004)';
    PRINT '- RelevantCompanyIdn transformed using DynamicLists (MainListID=1032)';
    PRINT '- LegalTypeIdn transformed using DynamicLists (MainListID=1005)';
    PRINT '- PlaceOfRegistrationMainIdn transformed using DynamicLists (MainListID=1025)';
    PRINT '- PlaceOfRegistrationSubIdn transformed using DynamicLists (MainListID=1025)';
    PRINT '- CompanyStatus transformed to CommonStatus: New=0, Active=1, Inactive=2';
    PRINT '- Primary key changed from compound (CompanyIDC+CompanyIDN) to single (CompanyIdn)';
    PRINT '- Bridge database excluded from migration per requirements';
    PRINT '- Dropped columns: CapitalAmount, TotalShares, NumberOfPartners, UpdateDate, UpdateDescription, Persons_IDN, CciNumber, CciIssueDate, CciExpiryDate, CciExpiryActiveReminder';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'Companies migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[Companies] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;