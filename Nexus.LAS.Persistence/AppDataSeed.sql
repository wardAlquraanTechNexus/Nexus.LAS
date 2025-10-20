USE [NEXUS-LAS-RG-DB]
GO

-- Check if database exists and is accessible
IF DB_ID('NEXUS-LAS-RG-DB') IS NULL
BEGIN
    PRINT 'Database NEXUS-LAS-RG-DB does not exist. Please create the database first.'
    RETURN
END

-- Set transaction isolation level for better performance
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
GO

-- Disable foreign key checks temporarily for better performance
ALTER TABLE [dbo].[AspNetUserRoles] NOCHECK CONSTRAINT ALL
ALTER TABLE [dbo].[GroupsMenus] NOCHECK CONSTRAINT ALL  
ALTER TABLE [dbo].[UserGroups] NOCHECK CONSTRAINT ALL
GO

BEGIN TRANSACTION

-- Data Seeds Variables
DECLARE @currentDatetime AS DATETIME2 = GETUTCDATE(); -- Use UTC time for consistency
DECLARE @seedVersion AS NVARCHAR(50) = '1.0.0'; -- Track seed version
DECLARE @adminUserId AS NVARCHAR(450) = 'd7b6a1e1-7c4b-4b6a-9b7e-7c4b4b6a9b7e';
DECLARE @systemUser AS NVARCHAR(50) = 'system'; -- System user for seed operations
DECLARE @wardUserId AS NVARCHAR(450) = 'f2a52c77-6507-47a5-bf7f-08fdfce3768b'; -- Ward user ID
DECLARE @wardUserName AS NVARCHAR(50) = 'ward'; -- Ward username
DECLARE @wardEmail AS NVARCHAR(100) = 'ward@example.com'; -- Ward email
DECLARE @wardFirstName AS NVARCHAR(50) = 'ward'; -- Ward first name
DECLARE @wardLastName AS NVARCHAR(50) = 'al quraan'; -- Ward last name

-- Check if data already exists to prevent duplicate seeding
IF EXISTS (SELECT 1 FROM [dbo].[AspNetRoles] WHERE [Id] = 'd1b6a1e1-1c4b-4b6a-9b1e-1c4b4b6a9b1e')
BEGIN
    PRINT 'Seed data already exists. Skipping seeding process.'
    ROLLBACK TRANSACTION
    RETURN
END

PRINT 'Starting data seeding process...'


-- Authentication and Authorization
-- Roles - Simple INSERT with existence check
IF NOT EXISTS (SELECT 1 FROM [dbo].[AspNetRoles] WHERE [Id] = 'd1b6a1e1-1c4b-4b6a-9b1e-1c4b4b6a9b1e')
BEGIN
    INSERT INTO [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName]) VALUES
    ('d1b6a1e1-1c4b-4b6a-9b1e-1c4b4b6a9b1e', 'Administrator', 'ADMINISTRATOR'),
    ('e2b6a1e1-2c4b-4b6a-9b2e-2c4b4b6a9b2e', 'LD Staff', 'LD STAFF'),
    ('f3b6a1e1-3c4b-4b6a-9b3e-3c4b4b6a9b3e', 'Management', 'MANAGEMENT'),
    ('a4b6a1e1-4c4b-4b6a-9b4e-4c4b4b6a9b4e', 'General', 'GENERAL');
    
    PRINT 'Roles seeded successfully.'
END

-- Users - Simple INSERT with existence check
-- Password: Tester123!
IF NOT EXISTS (SELECT 1 FROM [dbo].[AspNetUsers] WHERE [Id] = @adminUserId)
BEGIN
    INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [NormalizedEmail], [UserName], [NormalizedUserName], [PasswordHash],
                                   [SecurityStamp], [EmailConfirmed], [FirstName], [LastName], [PhoneNumberConfirmed],
                                   [TwoFactorEnabled], [LockoutEnabled], [AccessFailedCount], [PhoneNumber])
    VALUES 
    (@adminUserId, 'admin@rg.com', 'ADMIN@RG.COM', 'admin@rg.com', 'ADMIN@RG.COM','AQAAAAIAAYagAAAAEJE7Y+dqf6fzjrR3zD8cGd5hs4ekTX8lQyWnVZ/n+bJ0cmPIAG6Ln92hgR2DKRbiHw==', 'AKDZSSU6XFVUNSJRF2TM33XIRGWZ7TMM', 1, 'System', 'Admin', 1, 0, 1, 0, '123456'),
    ('e8b6a1e1-8c4b-4b6a-9b8e-8c4b4b6a9b8e', 'staff@rg.com', 'STAFF@RG.COM', 'staff@rg.com', 'STAFF@RG.COM', 'AQAAAAIAAYagAAAAEJE7Y+dqf6fzjrR3zD8cGd5hs4ekTX8lQyWnVZ/n+bJ0cmPIAG6Ln92hgR2DKRbiHw==', 'BKDZSSU6XFVUNSJRF2TM33XIRGWZ7TMM', 1, 'System', 'Staff', 1, 0, 1, 0, '123456'),
    ('f9b6a1e1-9c4b-4b6a-9b9e-9c4b4b6a9b9e', 'manag@rg.com', 'MANAG@RG.COM', 'manag@rg.com', 'MANAG@RG.COM', 'AQAAAAIAAYagAAAAEJE7Y+dqf6fzjrR3zD8cGd5hs4ekTX8lQyWnVZ/n+bJ0cmPIAG6Ln92hgR2DKRbiHw==', 'CKDZSSU6XFVUNSJRF2TM33XIRGWZ7TMM', 1, 'System', 'Management', 1, 0, 1, 0, '123456'),
    ('a0b6a1e1-0c4b-4b6a-9b0e-0c4b4b6a9b0e', 'general@rg.com', 'GENERAL@RG.COM', 'general@rg.com', 'GENERAL@RG.COM', 'AQAAAAIAAYagAAAAEJE7Y+dqf6fzjrR3zD8cGd5hs4ekTX8lQyWnVZ/n+bJ0cmPIAG6Ln92hgR2DKRbiHw==', 'DKDZSSU6XFVUNSJRF2TM33XIRGWZ7TMM', 1, 'System', 'General', 1, 0, 1, 0, '123456');
    
    PRINT 'Users seeded successfully.'
END

-- User Roles - Batch insert for better performance
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId])
SELECT * FROM (VALUES
    (@adminUserId, 'd1b6a1e1-1c4b-4b6a-9b1e-1c4b4b6a9b1e'), -- Admin
    ('e8b6a1e1-8c4b-4b6a-9b8e-8c4b4b6a9b8e', 'e2b6a1e1-2c4b-4b6a-9b2e-2c4b4b6a9b2e'), -- Staff
    ('f9b6a1e1-9c4b-4b6a-9b9e-9c4b4b6a9b9e', 'f3b6a1e1-3c4b-4b6a-9b3e-3c4b4b6a9b3e'), -- Management
    ('a0b6a1e1-0c4b-4b6a-9b0e-0c4b4b6a9b0e', 'a4b6a1e1-4c4b-4b6a-9b4e-4c4b4b6a9b4e'), -- General
    (@wardUserId, 'd1b6a1e1-1c4b-4b6a-9b1e-1c4b4b6a9b1e')  -- Ward as Admin
) AS UserRoles([UserId], [RoleId])
WHERE NOT EXISTS (
    SELECT 1 FROM [dbo].[AspNetUserRoles] ur 
    WHERE ur.[UserId] = UserRoles.[UserId] AND ur.[RoleId] = UserRoles.[RoleId]
);

-- Assign all roles to the system admin
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId])
SELECT @adminUserId, r.[Id] 
FROM [dbo].[AspNetRoles] r
WHERE NOT EXISTS (
    SELECT 1 FROM [dbo].[AspNetUserRoles] ur 
    WHERE ur.[UserId] = @adminUserId AND ur.[RoleId] = r.[Id]
);

PRINT 'User roles assigned successfully.'

-- Groups - Use optimized INSERT with proper BaseEntity fields
IF NOT EXISTS (SELECT 1 FROM [dbo].[Groups] WHERE [id] = 1)
BEGIN
    SET IDENTITY_INSERT [dbo].[Groups] ON
    
    INSERT INTO [dbo].[Groups] ([id], [GroupName], [Description], [CreatedBy], [CreatedAt], 
                               [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt])
    VALUES (1, N'Administrators', N'System administrators with full access', @systemUser, 
            @currentDatetime, NULL, NULL, 0, NULL, NULL);
    INSERT INTO [dbo].[Groups] ([id], [GroupName], [Description], [CreatedBy], [CreatedAt], 
                               [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt])
    VALUES (2, N'Ld Stuff', N'For Ld Stuff', @systemUser, 
            @currentDatetime, NULL, NULL, 0, NULL, NULL);
    
    SET IDENTITY_INSERT [dbo].[Groups] OFF
    PRINT 'Groups seeded successfully.'
END

-- Menus - Batch insert with better organization
IF NOT EXISTS (SELECT 1 FROM [dbo].[Menus] WHERE [id] = 1)
BEGIN
    SET IDENTITY_INSERT [dbo].[Menus] ON
    
    INSERT INTO [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], 
                              [IconClass], [InDashboard], [CreatedBy], [CreatedAt], 
                              [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt])
    VALUES 
    -- Dashboard - Now ID 1 with Rank 1
    (1, NULL, N'Dashboard', N'Dashboard', 1, N'Home dashboard', N'dashboard', 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    
    -- Main Menu Items - IDs shifted up
    (2, NULL, N'Persons', N'Persons', 2, N'Person management', N'people', 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (3, NULL, N'Companies', N'Companies', 3, N'Company management', N'domain', 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (4, NULL, N'Real Estates', N'Real-Estates', 4, N'Real Estate management', N'home_work', 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (5, NULL, N'Law Firms', N'Law-Firms', 5, N'Law Firm management', N'gavel', 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (6, NULL, N'Transactions', N'Transactions', 6, N'Transaction management', N'swap_horiz', 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (7, NULL, N'FPCs', N'FPCs', 7, N'fire proof cabints management', N'business_center', 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (8, NULL, N'Doc. Tracking', N'Doc-Tracking', 8, N'Document Tracking management', N'track_changes', 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (9, NULL, N'Settings', N'Settings', 9, N'System settings', N'settings', 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    
    -- Person Sub-menus (Parent ID: 2)
    (10, 2, N'Add Person', N'Persons/Add-Person', 1, N'Add new person', NULL, 0, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (11, 2, N'All Persons', N'All-Persons', 2, N'View all persons', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (12, 2, N'Active Persons', N'Active-Persons', 3, N'View active persons', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (13, 2, N'Active Private Persons', N'Active-Private-Persons', 4, N'View active private persons', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (14, 2, N'Active Public Persons', N'Active-Public-Persons', 5, N'View active public persons', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),

    -- Company Sub-menus (Parent ID: 3)
    (15, 3, N'Add Company', N'Companies/Add-Company', 1, N'Add new company', NULL, 0, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (16, 3, N'All Companies', N'All-Companies', 2, N'View all companies', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (17, 3, N'Active Companies', N'Active-Companies', 3, N'View active companies', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (18, 3, N'Active Private Companies', N'Active-Private-Companies', 4, N'View active private companies', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (19, 3, N'Active Public Companies', N'Active-Public-Companies', 5, N'View active public companies', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    
    -- Real Estate Sub-menus (Parent ID: 4)
    (20, 4, N'Add Real Estate', N'Real-Estates/Add-Real-Estate', 1, N'Add new real estate property', NULL, 0, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (21, 4, N'All Properties', N'All-Properties', 2, N'View all real estate properties', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (22, 4, N'Active Properties', N'Active-Properties', 3, N'View active real estate properties', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (23, 4, N'Active Private Properties', N'Active-Private-Properties', 4, N'View active private properties', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (24, 4, N'Active Public Properties', N'Active-Public-Properties', 5, N'View active public properties', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    
    -- Law Firm Sub-menus (Parent ID: 5)
    (25, 5, N'Add Law Firm', N'Law-Firms/Add-Law-Firm', 1, N'Add new law firm', NULL, 0, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (26, 5, N'All Law Firms', N'All-Law-Firms', 2, N'View all law firms', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (27, 5, N'Active Law Firms', N'Active-Law-Firms', 3, N'View active law firms', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (28, 5, N'Active Private Law Firms', N'Active-Private-Law-Firms', 4, N'View active private law firms', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (29, 5, N'Active Public Law Firms', N'Active-Public-Law-Firms', 5, N'View active public law firms', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    
    -- Transaction Sub-menus (Parent ID: 6)
    (30, 6, N'Add Transaction', N'Transactions/Add-Transaction', 1, N'Add new transaction', NULL, 0, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (31, 6, N'All Transactions', N'All-Transactions', 2, N'View all transactions', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (32, 6, N'Active Transactions', N'Active-Transactions', 3, N'View active transactions', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (33, 6, N'Active Private Transactions', N'Active-private-transactions', 4, N'View active private transactions', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (34, 6, N'Active Public Transactions', N'Active-public-transactions', 5, N'View active public transactions', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),    

    -- FPC Sub-menus (Parent ID: 7)
    (35, 7, N'Add FPC', N'FPCs/Add-FPC', 1, N'Add new fire proof cabint', NULL, 0, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (36, 7, N'All FPCs', N'All-FPCs', 2, N'View all fire proof cabints', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (37, 7, N'Active FPCs', N'Active-FPCs', 3, N'View active fire proof cabints', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (38, 7, N'Active Private FPCs', N'Active-Private-FPCs', 4, N'View active private fire proof cabints', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (39, 7, N'Active Public FPCs', N'Active-Public-FPCs', 5, N'View active public fire proof cabints', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    
    -- Document Tracking Sub-menus (Parent ID: 8)
    (40, 8, N'Add Document', N'Doc-Tracking/Add-Document', 1, N'Add new document for tracking', NULL, 0, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (41, 8, N'All Documents', N'All-Documents', 2, N'View all tracked documents', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),

    -- Settings Sub-menus (Parent ID: 9) - Updated parent reference
    (42, 9, N'Dynamic List', N'Dynamic-List', 1, N'Manage dynamic lists', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (43, 9, N'Menus', N'Menus', 2, N'Manage system menus', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (44, 9, N'Users', N'Users', 3, N'Define and manage users', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (45, 9, N'User Groups', N'User-Groups', 4, N'Manage user group memberships', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (46, 9, N'Groups', N'Groups', 5, N'Define groups', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),
    (47, 9, N'Group Menu', N'Group-Menus', 6, N'Manage group (menu item) permissions', NULL, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL),

    (48, NULL, N'Home', N'', 0, N'', N'home', 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL);


    SET IDENTITY_INSERT [dbo].[Menus] OFF
    PRINT 'Menus seeded successfully.'
END

-- Group Menu Permissions - Updated to handle the new menu range
IF NOT EXISTS (SELECT 1 FROM [dbo].[GroupsMenus] WHERE [GroupID] = 1 AND [MenuID] = 1)
BEGIN
    SET IDENTITY_INSERT [dbo].[GroupsMenus] ON
    
    INSERT INTO [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], 
                                   [CanDelete], [Admin], [id], [CreatedBy], [CreatedAt], 
                                   [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt])
    SELECT 1 as [GroupID], m.[id] as [MenuID], 1 as [Access], 1 as [CanInsert], 1 as [CanUpdate], 
           1 as [CanDelete], 1 as [Admin], 
           ROW_NUMBER() OVER (ORDER BY m.[id]) as [id],
           @systemUser as [CreatedBy], @currentDatetime as [CreatedAt], 
           NULL as [ModifiedBy], NULL as [ModifiedAt], 0 as [IsDeleted], NULL as [DeletedBy], NULL as [DeletedAt]
    FROM [dbo].[Menus] m
    WHERE m.[id] BETWEEN 1 AND 48;
    
    SET IDENTITY_INSERT [dbo].[GroupsMenus] OFF
    PRINT 'Group menu permissions seeded successfully.'
END

-- User Groups - Link ward user to administrators group
IF NOT EXISTS (SELECT 1 FROM [dbo].[UserGroups] WHERE [UserId] = 1 AND [GroupId] = 1)
BEGIN
    SET IDENTITY_INSERT [dbo].[UserGroups] ON
    
    INSERT INTO [dbo].[UserGroups] ([UserId], [GroupId], [id], [CreatedBy], [CreatedAt], 
                                   [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt])
    VALUES (1, 1, 1, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL);
    
    SET IDENTITY_INSERT [dbo].[UserGroups] OFF
    PRINT 'User groups seeded successfully.'
END

-- Users table - Application specific user data
IF NOT EXISTS (SELECT 1 FROM [dbo].[Users] WHERE [id] = 1)
BEGIN
    SET IDENTITY_INSERT [dbo].[Users] ON
    
    INSERT INTO [dbo].[Users] ([id], [Username], [LoginName], [NTLogin], [Persons_IDN], 
                              [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], 
                              [IsDeleted], [DeletedBy], [DeletedAt])
    VALUES (1, 'admin@rg.com', 'admi@rg.com', NULL, NULL, @systemUser, @currentDatetime, NULL, NULL, 0, NULL, NULL);
    
    SET IDENTITY_INSERT [dbo].[Users] OFF
    PRINT 'Application users seeded successfully.'
END

-- Re-enable foreign key checks
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT ALL
ALTER TABLE [dbo].[GroupsMenus] CHECK CONSTRAINT ALL  
ALTER TABLE [dbo].[UserGroups] CHECK CONSTRAINT ALL

-- Log successful completion
PRINT 'Data seeding completed successfully at ' + CONVERT(NVARCHAR(50), @currentDatetime, 121)
PRINT 'Seed version: ' + @seedVersion

COMMIT TRANSACTION
GO

-- Final verification queries (optional - comment out for production)
/*
SELECT 'Roles Count' as [Check], COUNT(*) as [Count] FROM [dbo].[AspNetRoles]
UNION ALL
SELECT 'Users Count', COUNT(*) FROM [dbo].[AspNetUsers]
UNION ALL  
SELECT 'User Roles Count', COUNT(*) FROM [dbo].[AspNetUserRoles]
UNION ALL
SELECT 'Groups Count', COUNT(*) FROM [dbo].[Groups]
UNION ALL
SELECT 'Menus Count', COUNT(*) FROM [dbo].[Menus]
UNION ALL
SELECT 'Group Menus Count', COUNT(*) FROM [dbo].[GroupsMenus]
UNION ALL
SELECT 'User Groups Count', COUNT(*) FROM [dbo].[UserGroups]
UNION ALL
SELECT 'App Users Count', COUNT(*) FROM [dbo].[Users];
*/




