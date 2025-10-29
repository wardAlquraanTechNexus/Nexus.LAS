-- Add NumberOfPartners column to CompaniesCapitals table
-- This column tracks the number of partners for a company's capital structure
-- IMPORTANT: Always backup your database before running this script!

BEGIN TRANSACTION;

BEGIN TRY
    PRINT 'Starting CompaniesCapitals schema update - Adding NumberOfPartners column...';

    -- Check if column already exists
    IF NOT EXISTS (
        SELECT 1
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_NAME = 'CompaniesCapitals'
        AND COLUMN_NAME = 'CompaniesCapitalNumberOfPartners'
        AND TABLE_SCHEMA = 'dbo'
    )
    BEGIN
        -- Add NumberOfPartners column
        ALTER TABLE [NEXUS-RG-LAS-Production-DB].[dbo].[CompaniesCapitals]
        ADD [CompaniesCapitalNumberOfPartners] INT NULL;

        PRINT 'Column [CompaniesCapitalNumberOfPartners] added successfully.';
    END
    ELSE
    BEGIN
        PRINT 'Column [CompaniesCapitalNumberOfPartners] already exists. Skipping...';
    END

    -- Verify the column was added
    IF EXISTS (
        SELECT 1
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_NAME = 'CompaniesCapitals'
        AND COLUMN_NAME = 'CompaniesCapitalNumberOfPartners'
        AND TABLE_SCHEMA = 'dbo'
    )
    BEGIN
        PRINT '';
        PRINT 'Schema Update Summary:';
        PRINT '- Table: CompaniesCapitals';
        PRINT '- New Column: CompaniesCapitalNumberOfPartners';
        PRINT '- Data Type: INT';
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
