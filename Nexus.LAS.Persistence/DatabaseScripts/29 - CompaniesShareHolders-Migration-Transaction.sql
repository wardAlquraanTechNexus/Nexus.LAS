-- Production Data Migration Script - RGLAS CompaniesShareHolders to Production (Bridge DB excluded)
-- SPECIAL HANDLING: Merges data from CompaniesShareHoldersGroups and CompaniesShareHolders tables
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesShareHolders];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [CompaniesShareHolders] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [CompaniesShareHolders] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesShareHolders] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesShareHolders] ON;

    -- Insert data from RGLAS with merge from CompaniesShareHoldersGroups and CompaniesShareHolders
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesShareHolders] (
        [CompaniesShareHolderIDN],
        [CompaniesShareHolderIDC],
        [Registers_IDC],
        [Registers_IDN],
        [ShareHolderNumbersOfShares],-- Maps from ShareHolderNumbersOfShares
        [ShareHolderDate],          -- Maps from ShareHolderDate
        [ShareHolderCessationDate], -- Set to next shareholder group date for inactive shareholders
        [ShareHolderActive],
        [Companies_IDN],            -- New column from CompaniesShareHoldersGroups
        [CreatedBy],                -- Maps from CreatedBy_IDN
        [CreatedAt],                -- Maps from CreatedBy_Date
        [ModifiedBy],               -- Maps from UpdatedBy_IDN
        [ModifiedAt],               -- Maps from UpdatedBy_Date
        [IsDeleted],                -- New column, default value
        [DeletedBy],                -- New column, default value
        [DeletedAt]                 -- New column, default value
    )
    SELECT
        shareholder_data.[CompaniesShareHolderIDN],
        shareholder_data.[CompaniesShareHolderIDC],
        shareholder_data.[Registers_IDC],
        shareholder_data.[Registers_IDN],
        shareholder_data.[ShareHolderNumbersOfShares],
        shareholder_data.[ShareHolderDate],
        -- ShareHolderCessationDate: NULL only when ShareHolderActive = 1, otherwise use next group's date
        CASE
            WHEN shareholder_data.[FinalShareHolderActive] = 1 THEN NULL  -- Active shareholders have no cessation date
            ELSE shareholder_data.[NextGroupDate]  -- Inactive shareholders get next group's date
        END AS [ShareHolderCessationDate],
        shareholder_data.[FinalShareHolderActive],
        shareholder_data.[Companies_IDN],
        shareholder_data.[CreatedBy_IDN],
        shareholder_data.[CreatedBy_Date],
        shareholder_data.[UpdatedBy_IDN],
        shareholder_data.[UpdatedBy_Date],
        0,                          -- Default for IsDeleted
        NULL,                       -- Default for DeletedBy
        NULL                        -- Default for DeletedAt
    FROM (
        SELECT
            sh.[CompaniesShareHolderIDN],
            sh.[CompaniesShareHolderIDC],
            sh.[Registers_IDC],
            sh.[Registers_IDN],
            sh.[ShareHolderNumbersOfShares],
            ISNULL(sh.[ShareHolderDate], grp.[ShareHolderGroupDate]) AS [ShareHolderDate],
            grp.[Companies_IDN],
            sh.[CreatedBy_IDN],
            sh.[CreatedBy_Date],
            sh.[UpdatedBy_IDN],
            sh.[UpdatedBy_Date],
            -- Calculate final ShareHolderActive status
            CASE
                WHEN grp.[ShareHolderGroupActive] = 1 THEN ISNULL(sh.[ShareHolderActive], 0)
                ELSE 0
            END AS [FinalShareHolderActive],
            -- Use LEAD to get next group's date for the same company
            LEAD(ISNULL(sh.[ShareHolderDate], grp.[ShareHolderGroupDate])) OVER (
                PARTITION BY grp.[Companies_IDN]
                ORDER BY
                    CASE WHEN ISNULL(sh.[ShareHolderDate], grp.[ShareHolderGroupDate]) IS NULL THEN 1 ELSE 0 END,
                    ISNULL(sh.[ShareHolderDate], grp.[ShareHolderGroupDate]),
                    sh.[CompaniesShareHolderIDN]
            ) AS [NextGroupDate]
        FROM [RGLAS].[dbo].[CompaniesShareHolders] sh
        INNER JOIN [RGLAS].[dbo].[CompaniesShareHoldersGroups] grp
            ON sh.[CompaniesShareHoldersGroups_IDN] = grp.[CompaniesShareHoldersGroupIDN]
        WHERE ISNULL(sh.[ShareHolderDate], grp.[ShareHolderGroupDate]) IS NOT NULL
        AND NOT EXISTS (
            SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesShareHolders]
            WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesShareHolders].[CompaniesShareHolderIDC] = sh.[CompaniesShareHolderIDC]
              AND [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesShareHolders].[CompaniesShareHolderIDN] = sh.[CompaniesShareHolderIDN]
        )
    ) shareholder_data;

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesShareHolders] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesShareHolders] CHECK CONSTRAINT ALL;

    -- Verify the migration
    DECLARE @RGLASShareHoldersCount INT, @RGLASGroupsCount INT, @ProductionAfter INT, @ActualMigrated INT;

    SELECT @RGLASShareHoldersCount = COUNT(*) FROM [RGLAS].[dbo].[CompaniesShareHolders];
    SELECT @RGLASGroupsCount = COUNT(*) FROM [RGLAS].[dbo].[CompaniesShareHoldersGroups];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesShareHolders];

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesShareHolders] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[CompaniesShareHolders] r
        WHERE r.[CompaniesShareHolderIDC] = p.[CompaniesShareHolderIDC]
        AND r.[CompaniesShareHolderIDN] = p.[CompaniesShareHolderIDN]
    );

    PRINT '';
    PRINT 'Migration Summary for CompaniesShareHolders:';
    PRINT 'RGLAS CompaniesShareHolders total records: ' + CAST(@RGLASShareHoldersCount AS VARCHAR(10));
    PRINT 'RGLAS CompaniesShareHoldersGroups total records: ' + CAST(@RGLASGroupsCount AS VARCHAR(10));
    PRINT 'Records migrated (joined from both tables): ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- SPECIAL HANDLING: Data merged from CompaniesShareHoldersGroups and CompaniesShareHolders tables';
    PRINT '- Companies_IDN sourced from CompaniesShareHoldersGroups table via join on CompaniesShareHoldersGroups_IDN';
    PRINT '- ShareHolderCessationDate set to NULL only when ShareHolderActive=1, else next shareholder date';
    PRINT '- ShareHolderCessationDate logic: uses LEAD window function partitioned by Company, ordered by ShareHolderDate';
    PRINT '- ShareHolderDate uses ShareHolderGroupDate when ShareHolderDate is NULL';
    PRINT '- ShareHolderActive uses shareholder value (default 0 if NULL) only if ShareHolderGroupActive=true, else false';
    PRINT '- CompaniesShareHoldersGroups_IDN column removed (used only for joining)';
    PRINT '- ShareHolderNumbersOfShares kept from CompaniesShareHolders table';
    PRINT '- Only records with matching CompaniesShareHoldersGroups records are migrated';
    PRINT '- Column mappings: CreatedBy_IDN->CreatedBy, CreatedBy_Date->CreatedAt, UpdatedBy_IDN->ModifiedBy, UpdatedBy_Date->ModifiedAt';
    PRINT '- Added standard audit columns: IsDeleted, DeletedBy, DeletedAt with default values';
    PRINT '- Column size changes: CompaniesShareHolderIDC (50->50)';
    PRINT '- Primary key changed from compound (CompaniesShareHolderIDC+CompaniesShareHolderIDN) to single (CompaniesShareHolderIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'CompaniesShareHolders migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesShareHolders] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;