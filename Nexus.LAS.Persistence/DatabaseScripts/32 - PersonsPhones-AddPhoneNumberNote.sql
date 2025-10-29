-- Add PhoneNumberNote column to PersonsPhones table
-- This column stores additional notes about the phone number
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    PRINT 'Starting PersonsPhones schema update - Adding PhoneNumberNote column...';

    -- Check if column already exists
    IF NOT EXISTS (
        SELECT 1
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_NAME = 'PersonsPhones'
        AND COLUMN_NAME = 'PhoneNumberNote'
        AND TABLE_SCHEMA = 'dbo'
    )
    BEGIN
        -- Add PhoneNumberNote column
        ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[PersonsPhones]
        ADD [PhoneNumberNote] NVARCHAR(MAX) NULL;

        PRINT 'Column [PhoneNumberNote] added successfully.';
    END
    ELSE
    BEGIN
        PRINT 'Column [PhoneNumberNote] already exists. Skipping...';
    END

    -- Verify the column was added
    IF EXISTS (
        SELECT 1
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_NAME = 'PersonsPhones'
        AND COLUMN_NAME = 'PhoneNumberNote'
        AND TABLE_SCHEMA = 'dbo'
    )
    BEGIN
        PRINT '';
        PRINT 'Schema Update Summary:';
        PRINT '- Table: PersonsPhones';
        PRINT '- New Column: PhoneNumberNote';
        PRINT '- Data Type: NVARCHAR(MAX)';
        PRINT '- Nullable: YES';
        PRINT '- Default Value: NULL';
        PRINT '';
        PRINT 'Schema update completed successfully!';

        COMMIT TRANSACTION;
    END
    ELSE
    BEGIN
        ROLLBACK TRANSACTION;
        PRINT 'Schema update verification failed - column not found after creation';
    END

END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Schema update failed with error: ' + @ErrorMessage;
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;
