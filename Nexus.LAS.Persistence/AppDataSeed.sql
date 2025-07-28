USE [NEXUS-LAS-RG-DB]


BEGIN TRAN


--Data Seeds Variables
DECLARE @currentDatetime AS DATETIME =  GETDATE();
DECLARE @UserId AS NVARCHAR(MAX) = (SELECT TOP 1 Id FROM AspNetUsers)
DECLARE @userSystemAdminId AS VARCHAR(MAX)
 SELECT @userSystemAdminId = [Id]  FROM [AspNetUsers] WHERE UserName = 'admin@rg.com'


--Authentication and Authrization
	--Roles
		INSERT INTO AspNetRoles (Id, Name, NormalizedName) VALUES
		('d1b6a1e1-1c4b-4b6a-9b1e-1c4b4b6a9b1e', 'Administrator', 'ADMINISTRATOR'),
		('e2b6a1e1-2c4b-4b6a-9b2e-2c4b4b6a9b2e', 'LD Staff', 'LD STAFF'),
		('f3b6a1e1-3c4b-4b6a-9b3e-3c4b4b6a9b3e', 'Management', 'MANAGEMENT'),
		('a4b6a1e1-4c4b-4b6a-9b4e-4c4b4b6a9b4e', 'General', 'General');
	--Users -- pwd Tester123!
		INSERT INTO AspNetUsers (Id, Email, NormalizedEmail, UserName, NormalizedUserName, PasswordHash,SecurityStamp, EmailConfirmed, FirstName, LastName,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnabled,AccessFailedCount) VALUES
	('d7b6a1e1-7c4b-4b6a-9b7e-7c4b4b6a9b7e', 'admin@rg.com', 'ADMIN@RG.COM', 'admin@rg.com', 'ADMIN@RG.COM','AQAAAAIAAYagAAAAEJE7Y+dqf6fzjrR3zD8cGd5hs4ekTX8lQyWnVZ/n+bJ0cmPIAG6Ln92hgR2DKRbiHw==', 'AKDZSSU6XFVUNSJRF2TM33XIRGWZ7TMM', 1, 'System', 'Admin',1,0,0,1),
	('e8b6a1e1-8c4b-4b6a-9b8e-8c4b4b6a9b8e', 'staff@rg.com', 'staff@RG.COM', 'staff@rg.com', 'STAFF@RG.COM','AQAAAAIAAYagAAAAEJE7Y+dqf6fzjrR3zD8cGd5hs4ekTX8lQyWnVZ/n+bJ0cmPIAG6Ln92hgR2DKRbiHw==', 'BKDZSSU6XFVUNSJRF2TM33XIRGWZ7TMM', 1, 'System', 'Staff',1,0,0,1),
	('f9b6a1e1-9c4b-4b6a-9b9e-9c4b4b6a9b9e', 'manag@rg.com', 'MANAG@RG.COM', 'manag@rg.com', 'MANAG@RG.COM','AQAAAAIAAYagAAAAEJE7Y+dqf6fzjrR3zD8cGd5hs4ekTX8lQyWnVZ/n+bJ0cmPIAG6Ln92hgR2DKRbiHw==', 'CKDZSSU6XFVUNSJRF2TM33XIRGWZ7TMM', 1, 'System', 'Manag',1,0,0,1),
	('a0b6a1e1-0c4b-4b6a-9b0e-0c4b4b6a9b0e', 'general@rg.com', 'GENERAL@RG.COM', 'general@rg.com', 'GENERAL@RG.COM','AQAAAAIAAYagAAAAEJE7Y+dqf6fzjrR3zD8cGd5hs4ekTX8lQyWnVZ/n+bJ0cmPIAG6Ln92hgR2DKRbiHw==', 'DKDZSSU6XFVUNSJRF2TM33XIRGWZ7TMM', 1, 'System', 'General',1,0,0,1);
	

	--Insert User Roles
	INSERT INTO AspNetUserRoles (UserId, RoleId) VALUES
		('d7b6a1e1-7c4b-4b6a-9b7e-7c4b4b6a9b7e', 'd1b6a1e1-1c4b-4b6a-9b1e-1c4b4b6a9b1e'), -- Admin
		('e8b6a1e1-8c4b-4b6a-9b8e-8c4b4b6a9b8e', 'e2b6a1e1-2c4b-4b6a-9b2e-2c4b4b6a9b2e'), -- Staff User
		('f9b6a1e1-9c4b-4b6a-9b9e-9c4b4b6a9b9e', 'f3b6a1e1-3c4b-4b6a-9b3e-3c4b4b6a9b3e'), -- Management User
		('a0b6a1e1-0c4b-4b6a-9b0e-0c4b4b6a9b0e', 'a4b6a1e1-4c4b-4b6a-9b4e-4c4b4b6a9b4e'); -- General User



-- Assign all the Roles to the Admin
	DECLARE @adminUserId AS VARCHAR(MAX)

	SELECT @adminUserId = Id FROM [AspNetUsers] WHERE [LastName] = 'Admin'

	DELETE FROM [AspNetUserRoles] WHERE [UserId] = @adminUserId

	INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId])
	SELECT @adminUserId, [Id] FROM [AspNetRoles]



COMMIT TRAN
GO










