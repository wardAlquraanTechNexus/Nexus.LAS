-- Production Data Migration Script - RGLAS CompaniesBoardMembers to Production (Bridge DB excluded)
-- SPECIAL HANDLING: Merges data from CompaniesBoards and CompaniesBoardMembers tables
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    -- Check if target table is empty before proceeding
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers];

    IF @ExistingCount > 0
    BEGIN
        PRINT 'WARNING: Target table [CompaniesBoardMembers] already contains ' + CAST(@ExistingCount AS VARCHAR(10)) + ' records.';
        PRINT 'Migration will only add new records that do not already exist.';
    END
    ELSE
    BEGIN
        PRINT 'Target table [CompaniesBoardMembers] is empty. Proceeding with full migration.';
    END

    -- Disable constraints temporarily for better performance
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers] NOCHECK CONSTRAINT ALL;

    -- Enable IDENTITY_INSERT to preserve original IDs
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers] ON;

    -- Insert data from RGLAS with merge from CompaniesBoards and BoardMemberPosition transformation
    INSERT INTO [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers] (
        [CompaniesBoardMemberIDN],
        [CompaniesBoardMemberIDC],
        [Companies_IDN],            -- New column from CompaniesBoards
        [Person_IDN],
        [BoardMemberPosition],      -- Transform from nvarchar to int (DynamicLists)
        [MemberAppointmentDate],    -- New column from CompaniesBoards.BoardDate
        [MemberCessationDate],      -- New column, default NULL
        [BoardMemberActive],
        [CreatedBy],                -- Maps from CreatedBy_IDN
        [CreatedAt],                -- Maps from CreatedBy_Date
        [ModifiedBy],               -- Maps from UpdatedBy_IDN
        [ModifiedAt],               -- Maps from UpdatedBy_Date
        [IsDeleted],                -- New column, default value
        [DeletedBy],                -- New column, default value
        [DeletedAt]                 -- New column, default value
    )
    SELECT
        mbr.[CompaniesBoardMemberIDN],
        mbr.[CompaniesBoardMemberIDC],
        brd.[Companies_IDN],        -- Get Companies_IDN from CompaniesBoards
        mbr.[Person_IDN],
        -- Transform BoardMemberPosition from nvarchar to int using DynamicLists lookup
        (
            SELECT TOP 1 [DynamicListIDN]
            FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
            WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM(mbr.[BoardMemberPosition])))
            AND [MainListID] = 1000 -- boardPositions
        ) AS [BoardMemberPosition],
        brd.[BoardDate],            -- Use BoardDate as MemberAppointmentDate
        NULL,                       -- MemberCessationDate - new column, default NULL
        CASE
            WHEN brd.[BoardActive] = 1 THEN 1  -- Set to true if board is active
            ELSE 0  -- Set to false if board is not active
        END, -- BoardMemberActive based on BoardActive
        mbr.[CreatedBy_IDN],        -- Maps to CreatedBy
        mbr.[CreatedBy_Date],       -- Maps to CreatedAt
        mbr.[UpdatedBy_IDN],        -- Maps to ModifiedBy
        mbr.[UpdatedBy_Date],       -- Maps to ModifiedAt
        0,                          -- Default for IsDeleted
        NULL,                       -- Default for DeletedBy
        NULL                        -- Default for DeletedAt
    FROM [RGLAS].[dbo].[CompaniesBoardMembers] mbr
    INNER JOIN [RGLAS].[dbo].[CompaniesBoards] brd
        ON mbr.[CompaniesBoards_IDN] = brd.[CompaniesBoardIDN]
    WHERE NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers]
        WHERE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers].[CompaniesBoardMemberIDC] = mbr.[CompaniesBoardMemberIDC]
          AND [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers].[CompaniesBoardMemberIDN] = mbr.[CompaniesBoardMemberIDN]
    )
    -- Only insert records where BoardMemberPosition can be mapped to DynamicLists (NOT NULL constraint)
    AND mbr.[BoardMemberPosition] IS NOT NULL
    AND LTRIM(RTRIM(mbr.[BoardMemberPosition])) != ''
    AND EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM(mbr.[BoardMemberPosition])))
        AND [MainListID] = 1000
    );

    -- Disable IDENTITY_INSERT after migration
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers] OFF;

    -- Re-enable constraints
    ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers] CHECK CONSTRAINT ALL;

    -- Verify the migration and log skipped records
    DECLARE @RGLASMembersCount INT, @RGLASBoardsCount INT, @ProductionAfter INT, @ActualMigrated INT, @PositionMapped INT, @SkippedCount INT;

    SELECT @RGLASMembersCount = COUNT(*) FROM [RGLAS].[dbo].[CompaniesBoardMembers];
    SELECT @RGLASBoardsCount = COUNT(*) FROM [RGLAS].[dbo].[CompaniesBoards];
    SELECT @ProductionAfter = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers];

    -- Count records that were skipped due to unmappable BoardMemberPosition or missing CompaniesBoards
    SELECT @SkippedCount = COUNT(*)
    FROM [RGLAS].[dbo].[CompaniesBoardMembers] mbr
    WHERE NOT EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[CompaniesBoards] brd
        WHERE mbr.[CompaniesBoards_IDN] = brd.[CompaniesBoardIDN]
    )
    OR mbr.[BoardMemberPosition] IS NULL
    OR LTRIM(RTRIM(mbr.[BoardMemberPosition])) = ''
    OR NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM(mbr.[BoardMemberPosition])))
        AND [MainListID] = 1000
    );

    -- Count records that were actually migrated from RGLAS
    SELECT @ActualMigrated = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers] p
    WHERE EXISTS (
        SELECT 1 FROM [RGLAS].[dbo].[CompaniesBoardMembers] r
        WHERE r.[CompaniesBoardMemberIDC] = p.[CompaniesBoardMemberIDC]
        AND r.[CompaniesBoardMemberIDN] = p.[CompaniesBoardMemberIDN]
    );

    -- Count successful BoardMemberPosition mappings
    SELECT @PositionMapped = COUNT(*)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers] p
    INNER JOIN [RGLAS].[dbo].[CompaniesBoardMembers] r ON r.[CompaniesBoardMemberIDC] = p.[CompaniesBoardMemberIDC] AND r.[CompaniesBoardMemberIDN] = p.[CompaniesBoardMemberIDN]
    WHERE r.[BoardMemberPosition] IS NOT NULL AND r.[BoardMemberPosition] != '' AND p.[BoardMemberPosition] IS NOT NULL;

    -- Report unmapped BoardMemberPosition values
    PRINT 'Unmapped BoardMemberPosition values that need to be added to DynamicLists (MainListID=1000):';
    DECLARE @UnmappedPositions NVARCHAR(MAX) = '';
    SELECT @UnmappedPositions = @UnmappedPositions + '''' + LTRIM(RTRIM([BoardMemberPosition])) + ''', '
    FROM [RGLAS].[dbo].[CompaniesBoardMembers]
    WHERE [BoardMemberPosition] IS NOT NULL
    AND LTRIM(RTRIM([BoardMemberPosition])) != ''
    AND NOT EXISTS (
        SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
        WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM([BoardMemberPosition])))
        AND [MainListID] = 1000
    )
    GROUP BY [BoardMemberPosition];

    IF @UnmappedPositions != ''
        PRINT SUBSTRING(@UnmappedPositions, 1, LEN(@UnmappedPositions) - 1); -- Remove trailing comma
    ELSE
        PRINT 'All BoardMemberPosition values found in DynamicLists';

    -- Log records that were skipped
    IF @SkippedCount > 0
    BEGIN
        PRINT 'SKIPPED RECORDS: The following records were NOT migrated due to unmappable BoardMemberPosition or missing CompaniesBoards:';
        DECLARE @SkippedRecords NVARCHAR(MAX) = '';
        SELECT @SkippedRecords = @SkippedRecords + 'ID: ' + CAST(mbr.[CompaniesBoardMemberIDN] AS VARCHAR(10)) + ' (BoardMemberPosition: ''' + ISNULL(LTRIM(RTRIM(mbr.[BoardMemberPosition])), 'NULL') + ''', CompaniesBoards_IDN: ' + CAST(mbr.[CompaniesBoards_IDN] AS VARCHAR(10)) + '), '
        FROM [RGLAS].[dbo].[CompaniesBoardMembers] mbr
        WHERE NOT EXISTS (
            SELECT 1 FROM [RGLAS].[dbo].[CompaniesBoards] brd
            WHERE mbr.[CompaniesBoards_IDN] = brd.[CompaniesBoardIDN]
        )
        OR mbr.[BoardMemberPosition] IS NULL
        OR LTRIM(RTRIM(mbr.[BoardMemberPosition])) = ''
        OR NOT EXISTS (
            SELECT 1 FROM [NEXUS-RG-LAS-Production-DB].[dbo].[DynamicLists]
            WHERE LOWER(LTRIM(RTRIM([MenuValue]))) = LOWER(LTRIM(RTRIM(mbr.[BoardMemberPosition])))
            AND [MainListID] = 1000
        );

        IF LEN(@SkippedRecords) > 2
            PRINT SUBSTRING(@SkippedRecords, 1, LEN(@SkippedRecords) - 1); -- Remove trailing comma
    END

    PRINT '';
    PRINT 'Migration Summary for CompaniesBoardMembers:';
    PRINT 'RGLAS CompaniesBoardMembers total records: ' + CAST(@RGLASMembersCount AS VARCHAR(10));
    PRINT 'RGLAS CompaniesBoards total records: ' + CAST(@RGLASBoardsCount AS VARCHAR(10));
    PRINT 'Records migrated (joined from both tables): ' + CAST(@ActualMigrated AS VARCHAR(10));
    PRINT 'Records SKIPPED due to unmappable BoardMemberPosition or missing CompaniesBoards: ' + CAST(@SkippedCount AS VARCHAR(10));
    PRINT 'BoardMemberPosition successful mappings: ' + CAST(@PositionMapped AS VARCHAR(10));
    PRINT 'Total records in Production after migration: ' + CAST(@ProductionAfter AS VARCHAR(10));
    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- SPECIAL HANDLING: Data merged from CompaniesBoards and CompaniesBoardMembers tables';
    PRINT '- Companies_IDN sourced from CompaniesBoards table via join on CompaniesBoards_IDN';
    PRINT '- MemberAppointmentDate sourced from CompaniesBoards.BoardDate';
    PRINT '- MemberCessationDate added as new column with default NULL value';
    PRINT '- BoardMemberActive set to true if BoardActive=true, else false (ignores original member value)';
    PRINT '- BoardMemberPosition transformed from nvarchar to int using DynamicLists lookup (MainListID=1000)';
    PRINT '- Records with unmappable BoardMemberPosition are SKIPPED and logged above (NOT NULL constraint)';
    PRINT '- Records without matching CompaniesBoards records are also SKIPPED and logged above';
    PRINT '- No fallback values used - only exact matches are migrated';
    PRINT '- Add unmapped positions to DynamicLists and re-run migration for skipped records';
    PRINT '- Column size changes: CompaniesBoardMemberIDC (50->50)';
    PRINT '- Primary key changed from compound (CompaniesBoardMemberIDC+CompaniesBoardMemberIDN) to single (CompaniesBoardMemberIDN)';
    PRINT '- Bridge database excluded from migration per requirements';

    -- Only commit if verification passes
    IF (@ActualMigrated >= 0 AND @ProductionAfter > 0)
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'CompaniesBoardMembers migration completed successfully!';
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
    SET IDENTITY_INSERT [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers] OFF;

    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Migration failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;