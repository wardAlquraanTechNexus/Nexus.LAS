-- Update MemberCessationDate for CompaniesBoardMembers
-- Set MemberCessationDate = next board's BoardDate for inactive members (BoardMemberActive = 0)
-- Keep MemberCessationDate = NULL for active members (BoardMemberActive = 1)

BEGIN TRANSACTION;

BEGIN TRY
    PRINT 'Starting MemberCessationDate update for CompaniesBoardMembers...';

    -- Count records before update
    DECLARE @TotalRecords INT, @ActiveMembers INT, @InactiveMembers INT;
    SELECT @TotalRecords = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers];
    SELECT @ActiveMembers = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers] WHERE [BoardMemberActive] = 1;
    SELECT @InactiveMembers = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers] WHERE [BoardMemberActive] = 0;

    PRINT 'Total records: ' + CAST(@TotalRecords AS VARCHAR(10));
    PRINT 'Active members (BoardMemberActive = 1): ' + CAST(@ActiveMembers AS VARCHAR(10));
    PRINT 'Inactive members (BoardMemberActive = 0): ' + CAST(@InactiveMembers AS VARCHAR(10));

    -- Update MemberCessationDate using window function to get next board's date
    UPDATE current_member
    SET [MemberCessationDate] = CASE
        WHEN current_member.[BoardMemberActive] = 1 THEN NULL  -- Active members have no cessation date
        ELSE next_board_data.[NextBoardDate]  -- Inactive members get next board's date
    END
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers] current_member
    INNER JOIN (
        SELECT
            [CompaniesBoardMemberIDN],
            [Companies_IDN],
            [MemberAppointmentDate],
            [BoardMemberActive],
            -- Get next board's appointment date for the same company (not per member)
            LEAD([MemberAppointmentDate]) OVER (
                PARTITION BY [Companies_IDN]  -- Only partition by company
                ORDER BY
                    CASE WHEN [MemberAppointmentDate] IS NULL THEN 1 ELSE 0 END,  -- NULL dates last
                    [MemberAppointmentDate]
            ) AS [NextBoardDate]
        FROM (
            -- Get distinct board dates per company to avoid duplicates from multiple members
            SELECT DISTINCT
                cbm.[CompaniesBoardMemberIDN],
                cbm.[Companies_IDN],
                cbm.[MemberAppointmentDate],
                cbm.[BoardMemberActive]
            FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers] cbm
            WHERE cbm.[MemberAppointmentDate] IS NOT NULL
        ) distinct_boards
    ) next_board_data ON current_member.[CompaniesBoardMemberIDN] = next_board_data.[CompaniesBoardMemberIDN];

    -- Count updated records
    DECLARE @UpdatedRecords INT, @CessationDatesSet INT, @CessationDatesNull INT;
    SELECT @UpdatedRecords = @@ROWCOUNT;
    SELECT @CessationDatesSet = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers] WHERE [MemberCessationDate] IS NOT NULL;
    SELECT @CessationDatesNull = COUNT(*) FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers] WHERE [MemberCessationDate] IS NULL;

    PRINT '';
    PRINT 'Update Results:';
    PRINT 'Records processed: ' + CAST(@UpdatedRecords AS VARCHAR(10));
    PRINT 'Records with MemberCessationDate set (inactive members with next board): ' + CAST(@CessationDatesSet AS VARCHAR(10));
    PRINT 'Records with MemberCessationDate = NULL (active members or last board): ' + CAST(@CessationDatesNull AS VARCHAR(10));

    -- Verification: Show sample results
    PRINT '';
    PRINT 'Sample Results (first 10 records for verification):';
    PRINT 'Companies_IDN | Person_IDN | MemberAppointmentDate | BoardMemberActive | MemberCessationDate';
    PRINT '-------------|-----------|----------------------|------------------|--------------------';

    DECLARE @SampleResults NVARCHAR(MAX) = '';
    SELECT TOP 10 @SampleResults = @SampleResults +
        CAST([Companies_IDN] AS VARCHAR(10)) + ' | ' +
        CAST([Person_IDN] AS VARCHAR(10)) + ' | ' +
        ISNULL(CONVERT(VARCHAR(10), [MemberAppointmentDate], 120), 'NULL') + ' | ' +
        CAST([BoardMemberActive] AS VARCHAR(1)) + ' | ' +
        ISNULL(CONVERT(VARCHAR(10), [MemberCessationDate], 120), 'NULL') + CHAR(13) + CHAR(10)
    FROM [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesBoardMembers]
    ORDER BY [Companies_IDN], [Person_IDN], [MemberAppointmentDate];

    PRINT @SampleResults;

    PRINT '';
    PRINT 'IMPORTANT NOTES:';
    PRINT '- MemberCessationDate = NULL for active members (BoardMemberActive = 1)';
    PRINT '- MemberCessationDate = next board appointment date for inactive members (BoardMemberActive = 0)';
    PRINT '- Grouped by Company (Companies_IDN) only - not per member';
    PRINT '- Uses next board date in company chronological sequence';
    PRINT '- All inactive members in same board get same cessation date (next board date)';
    PRINT '- NULL appointment dates are handled gracefully';
    PRINT '- Last board appointment in company will have MemberCessationDate = NULL';

    -- Commit if successful
    COMMIT TRANSACTION;
    PRINT '';
    PRINT 'MemberCessationDate update completed successfully!';

END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'MemberCessationDate update failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;