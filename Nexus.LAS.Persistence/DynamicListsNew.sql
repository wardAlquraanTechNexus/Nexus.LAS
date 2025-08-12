USE [NEXUS-LAS-RG-DB]
GO
/****** Object:  Table [dbo].[DynamicLists]    Script Date: 12/08/2025 6:13:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DynamicLists](
	[DynamicListIDC] [nvarchar](50) NOT NULL,
	[DynamicListIDN] [int] IDENTITY(1,1) NOT NULL,
	[DynamicListItemName] [nvarchar](max) NULL,
	[ParentDynamicListIDN] [int] NULL,
	[Active] [bit] NULL,
	[Rank] [int] NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_DynamicLists] PRIMARY KEY CLUSTERED 
(
	[DynamicListIDC] ASC,
	[DynamicListIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DynamicLists] ON 
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1, N'Zone', 39, 1, 1, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 2, N'Banks', NULL, 1, 2, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 3, N'Board Positions', NULL, 1, 3, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 4, N'Companies Activities', NULL, 1, 4, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 5, N'Companies Contracts Status', NULL, 1, 5, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 6, N'Companies Contracts Types', NULL, 1, 6, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 7, N'Companies Group Company', NULL, 1, 7, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 8, N'Companies Legal Types', NULL, 1, 8, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 9, N'Companies License Classifications', NULL, 1, 9, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 10, N'Companies License Statuses', NULL, 1, 10, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 11, N'Company Type', NULL, 1, 11, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 12, N'CorrespondenceType', NULL, 1, 12, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 13, N'Countries', NULL, 1, 13, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 14, N'Currencies', NULL, 1, 14, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 15, N'Designation', NULL, 1, 15, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 16, N'Law Firms Branches', NULL, 1, 16, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 17, N'Law Firms Councel Levels', NULL, 1, 17, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 18, N'Law Firms Expertises', NULL, 1, 18, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 19, N'Law Firms Status', NULL, 1, 19, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 20, N'Original Documents Actions Types', NULL, 1, 20, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 21, N'Original Documents Types', NULL, 1, 21, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 22, N'Persons Addresses Countries', NULL, 1, 22, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 23, N'Persons Capacities', NULL, 1, 23, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 24, N'Persons ID Nationalities', NULL, 1, 24, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 25, N'Persons ID Types', NULL, 1, 25, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 26, N'Persons Other Documents Type', NULL, 1, 26, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 27, N'Persons Phones Types', NULL, 1, 27, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 28, N'Place Of Registration', NULL, 1, 28, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 29, N'Properties Owners Relation', NULL, 1, 29, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 30, N'Properties Type Of Title', NULL, 1, 30, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 31, N'Property Document Type', NULL, 1, 31, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 32, N'Property Purpose', NULL, 1, 32, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 33, N'Property Status', NULL, 1, 33, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 34, N'Property Type', NULL, 1, 34, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 35, N'RelevantCompany', NULL, 1, 35, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 36, N'Rules', NULL, 1, 36, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 37, N'Transactions Actions Statuses', NULL, 1, 37, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 38, N'Transactions Types', NULL, 1, 38, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 39, N'Cities', 13, 1, 39, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 40, N'City Of Registration', 28, 1, 40, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 41, N'Company Class', 11, 1, 41, N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), N'1', CAST(N'2025-08-12T13:17:34.5966667' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 44, N'Local(UAE)', NULL, 1, 1, N'3', CAST(N'2009-07-16T19:56:51.0300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 45, N'GCC', NULL, 1, 2, N'3', CAST(N'2009-07-16T19:57:21.3566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 46, N'Arab Country', NULL, 1, 3, N'3', CAST(N'2009-07-16T19:58:05.3400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 47, N'International', NULL, 1, 4, N'3', CAST(N'2009-07-16T19:59:47.8566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 50, N'Abu Dhabi', 978, 1, 1, N'3', CAST(N'2009-07-16T20:02:59.8266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 53, N'Dubai', 978, 1, 2, N'3', CAST(N'2009-07-16T20:04:11.0900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 54, N'Sharjah', 978, 1, 3, N'3', CAST(N'2009-07-16T20:04:56.1533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 56, N'Ajman', 978, 1, 4, N'3', CAST(N'2009-07-16T20:06:22.5600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 57, N'Al Fujairah', 978, 1, 5, N'3', CAST(N'2009-07-16T20:07:21.7333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 58, N'Umm AlQuain', 978, 1, 6, N'3', CAST(N'2009-07-16T20:08:16.6066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 59, N'RAK', NULL, 1, 6, N'3', CAST(N'2009-07-16T20:08:56.0433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 65, N'Shk Zayed Rd', NULL, 1, 1, N'3', CAST(N'2009-07-16T20:41:23.9500000' AS DateTime2), N'5', CAST(N'2009-08-06T08:18:56.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 67, N'Jumairah Palm', NULL, 1, 1, N'3', CAST(N'2009-07-16T20:42:39.8900000' AS DateTime2), N'5', CAST(N'2010-04-13T09:07:34.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 68, N'Al Nehyan Camp', NULL, 1, 1, N'3', CAST(N'2009-07-16T20:43:28.9500000' AS DateTime2), N'5', CAST(N'2009-08-06T08:09:23.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 76, N'Managing Partner', NULL, 1, 10, N'3', CAST(N'2009-07-16T22:17:20.0133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 77, N'Partner', NULL, 1, 10, N'3', CAST(N'2009-07-16T22:17:28.0433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 78, N'Senior Councel', NULL, 1, 10, N'3', CAST(N'2009-07-16T22:17:36.0433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 79, N'Junior Councel', NULL, 1, 10, N'3', CAST(N'2009-07-16T22:17:45.7000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 80, N'Associate', NULL, 1, 10, N'3', CAST(N'2009-07-16T22:17:57.6233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 83, N'LD Staff', NULL, 1, 10, N'3', CAST(N'2009-07-18T12:11:26.6066667' AS DateTime2), N'3', CAST(N'2009-07-20T11:18:09.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 87, N'Passport (Current)', NULL, 1, 1, N'3', CAST(N'2009-07-18T13:22:04.4033333' AS DateTime2), N'5', CAST(N'2009-08-09T03:47:47.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 88, N'Passport (Old)', NULL, 1, 10, N'3', CAST(N'2009-07-18T13:22:13.9033333' AS DateTime2), N'5', CAST(N'2009-08-09T03:48:10.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 89, N'Personal ID', NULL, 1, 10, N'3', CAST(N'2009-07-18T13:22:24.0900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 90, N'KQ ID (????? ???)', NULL, 1, 10, N'3', CAST(N'2009-07-18T13:22:36.2633333' AS DateTime2), N'5', CAST(N'2009-08-09T03:45:48.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 91, N'UAE', NULL, 1, 1, N'3', CAST(N'2009-07-18T13:23:05.4500000' AS DateTime2), N'5', CAST(N'2009-08-06T05:10:29.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 92, N'KSA', NULL, 1, 2, N'3', CAST(N'2009-07-18T13:23:16.1533333' AS DateTime2), N'5', CAST(N'2009-08-06T05:12:15.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 93, N'UK', NULL, 1, 2, N'3', CAST(N'2009-07-18T13:23:24.4200000' AS DateTime2), N'5', CAST(N'2009-08-06T05:12:31.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 94, N'Egypt', NULL, 1, 2, N'3', CAST(N'2009-07-18T13:23:30.6233333' AS DateTime2), N'5', CAST(N'2009-08-06T05:11:57.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 95, N'Mobile', NULL, 1, 1, N'3', CAST(N'2009-07-18T15:20:17.2000000' AS DateTime2), N'5', CAST(N'2010-07-07T12:44:12.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 96, N'Home (UAE)', NULL, 1, 2, N'3', CAST(N'2009-07-18T15:20:23.5766667' AS DateTime2), N'5', CAST(N'2010-07-07T12:42:40.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 97, N'Fax', NULL, 1, 10, N'3', CAST(N'2009-07-18T15:20:30.0433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 98, N'Work', NULL, 1, 10, N'3', CAST(N'2009-07-18T15:20:39.8566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 99, N'Lic. Commercial/??????', NULL, 1, 10, N'3', CAST(N'2009-07-18T00:00:00.0000000' AS DateTime2), N'5', CAST(N'2011-01-24T12:43:21.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 100, N'Lic. Industrial/??????', NULL, 1, 10, N'3', CAST(N'2009-07-18T00:00:00.0000000' AS DateTime2), N'5', CAST(N'2011-01-24T12:43:31.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 101, N'Lic. Information/???????', NULL, 1, 10, N'3', CAST(N'2009-07-18T00:00:00.0000000' AS DateTime2), N'5', CAST(N'2011-01-24T12:43:42.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 103, N'Lic. Professional/?????', NULL, 1, 10, N'3', CAST(N'2009-07-18T00:00:00.0000000' AS DateTime2), N'5', CAST(N'2011-01-24T12:43:52.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 104, N'Lic. Workshop/????', NULL, 1, 10, N'3', CAST(N'2009-07-18T00:00:00.0000000' AS DateTime2), N'5', CAST(N'2011-01-24T12:44:09.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 105, N'Other', NULL, 1, 20, N'3', CAST(N'2009-07-18T00:00:00.0000000' AS DateTime2), N'5', CAST(N'2010-07-08T04:57:14.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 106, N'UAE', NULL, 1, 10, N'3', CAST(N'2009-07-18T16:10:24.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 107, N'KSA', NULL, 1, 10, N'3', CAST(N'2009-07-18T16:10:30.7166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 108, N'Active', NULL, 1, 10, N'3', CAST(N'2009-07-18T17:52:46.1533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 109, N'Expired', NULL, 1, 10, N'3', CAST(N'2009-07-18T17:52:54.7000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 110, N'Stationery Trading', NULL, 1, 10, N'3', CAST(N'2009-07-18T20:42:43.3400000' AS DateTime2), N'5', CAST(N'2010-07-08T04:50:33.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 111, N'Publishing of Books & Scholatic Textbooks & Other', NULL, 1, 10, N'3', CAST(N'2009-07-18T20:43:10.7500000' AS DateTime2), N'5', CAST(N'2010-07-08T04:50:11.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 113, N'Land', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:48:03.8266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 114, N'Villa', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:48:30.1533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 115, N'Building', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:48:56.3566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 116, N'Outlet/ShowRoom', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:49:28.0133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 117, N'Warehouse', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:49:52.7166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 118, N'Other', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:50:23.1866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 119, N'Residential', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:50:58.2800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 120, N'Commercial', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:51:32.8733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 121, N'Industral', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:52:09.0766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 122, N'Mix-use', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:53:12.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 123, N'Private', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:53:30.1400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 124, N'Other', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:53:49.1700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 125, N'Developed', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:54:18.7500000' AS DateTime2), N'5', CAST(N'2012-05-07T12:15:09.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 126, N'Leased', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:54:45.5133333' AS DateTime2), N'5', CAST(N'2012-05-07T12:14:20.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 127, N'Mortgaged', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:55:12.0900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 128, N'Reserved', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:55:42.3566667' AS DateTime2), N'5', CAST(N'2012-05-07T12:15:44.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 129, N'Transferrd', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:56:13.1233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 130, N'Divided', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:56:37.7166667' AS DateTime2), N'5', CAST(N'2012-05-07T12:15:24.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 131, N'Freehold', NULL, 1, 10, N'3', CAST(N'2009-07-19T16:48:44.4366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 132, N'Grant', NULL, 1, 10, N'3', CAST(N'2009-07-19T16:49:01.4033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 133, N'Leasehold', NULL, 1, 10, N'3', CAST(N'2009-07-19T16:49:20.9200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 134, N'Intifaa/Usafruct', NULL, 1, 10, N'3', CAST(N'2009-07-19T16:49:48.1066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 135, N'Musataha', NULL, 1, 10, N'3', CAST(N'2009-07-19T16:50:13.3100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 136, N'other', NULL, 1, 10, N'3', CAST(N'2009-07-19T16:50:31.6400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 137, N'Corporate', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:19:44.7633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 138, N'Contract', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:19:58.7800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 139, N'Dispute', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:20:07.8266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 140, N'Opinion', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:20:17.3400000' AS DateTime2), N'3', CAST(N'2009-07-19T06:20:34.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 141, N'Incorporation', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:20:42.4833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 142, N'Acquisition (Shares)', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:20:55.7000000' AS DateTime2), N'5', CAST(N'2009-08-13T07:58:10.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 143, N'Investment, Local', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:21:10.2933333' AS DateTime2), N'5', CAST(N'2010-09-16T09:12:36.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 144, N'Letter', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:21:19.4200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 145, N'Other', NULL, 1, 100, N'3', CAST(N'2009-07-19T19:21:30.1400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 146, N'New', NULL, 1, 10, N'3', CAST(N'2009-07-19T22:18:34.0600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 147, N'Closed', NULL, 1, 100, N'3', CAST(N'2009-07-19T22:18:41.2000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 148, N'Pending', NULL, 1, 20, N'3', CAST(N'2009-07-19T22:18:48.6233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 149, N'LM', NULL, 1, 10, N'3', CAST(N'2009-07-20T15:12:06.7800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 150, N'Cr', NULL, 1, 10, N'3', CAST(N'2009-07-20T15:12:44.3733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 159, N'Driving Lic. (UAE)', NULL, 1, 10, N'3', CAST(N'2009-07-26T19:32:51.8700000' AS DateTime2), N'5', CAST(N'2009-08-09T03:46:45.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 160, N'Labour Card', NULL, 1, 10, N'3', CAST(N'2009-07-26T19:33:10.5400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 161, N'E Signature', NULL, 1, 10, N'3', CAST(N'2009-07-26T19:33:25.9833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 162, N'Other', NULL, 1, 20, N'3', CAST(N'2009-07-26T19:33:38.4266667' AS DateTime2), N'5', CAST(N'2009-08-09T03:43:16.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 163, N'Fujairah', 193, 1, 1, N'3', CAST(N'2009-07-26T19:36:46.9300000' AS DateTime2), N'5', CAST(N'2009-08-06T05:44:50.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 164, N'Ras al-Khaimah', 193, 1, 1, N'3', CAST(N'2009-07-26T19:37:35.0200000' AS DateTime2), N'5', CAST(N'2009-08-06T05:45:01.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 165, N'KSA', 978, 1, 10, N'3', CAST(N'2009-07-26T19:40:19.7666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 166, N'Kuwait', 978, 1, 10, N'3', CAST(N'2009-07-26T19:40:43.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 167, N'Bahrain', 978, 1, 10, N'3', CAST(N'2009-07-26T19:44:31.6666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 168, N'Qatar', 978, 1, 10, N'3', CAST(N'2009-07-26T19:44:56.3133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 169, N'Oman', 978, 1, 10, N'3', CAST(N'2009-07-26T19:45:30.4200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 170, N'Algeria', 978, 1, 10, N'3', CAST(N'2009-07-26T19:45:59.9366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 171, N'Egypt', 978, 1, 10, N'3', CAST(N'2009-07-26T19:46:48.8466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 172, N'Iraq', 978, 1, 10, N'3', CAST(N'2009-07-26T19:47:34.3066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 173, N'Jordan', 978, 1, 10, N'3', CAST(N'2009-07-26T19:48:09.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 174, N'Libya', 978, 1, 10, N'3', CAST(N'2009-07-26T19:49:50.9500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 175, N'Lebanon', 978, 1, 10, N'3', CAST(N'2009-07-26T19:50:14.3366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 176, N'Mauretania', 978, 1, 10, N'3', CAST(N'2009-07-26T19:50:53.3900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 177, N'Morocco', 978, 1, 10, N'3', CAST(N'2009-07-26T19:51:19.6833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 178, N'Palestine', 978, 1, 10, N'3', CAST(N'2009-07-26T19:52:05.6433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 179, N'Sudan', 978, 1, 10, N'3', CAST(N'2009-07-26T19:52:34.6566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 180, N'Syria', 978, 1, 10, N'3', CAST(N'2009-07-26T19:52:59.0433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 181, N'Tunisia', 978, 1, 10, N'3', CAST(N'2009-07-26T19:53:19.2100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 182, N'Yemen', 978, 1, 10, N'3', CAST(N'2009-07-26T19:53:42.2400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 183, N'USA', 978, 1, 10, N'3', CAST(N'2009-07-26T19:55:09.6966667' AS DateTime2), N'5', CAST(N'2011-01-23T05:21:51.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 184, N'Kazakhstan', 978, 1, 10, N'3', CAST(N'2009-07-26T19:55:30.3766667' AS DateTime2), N'5', CAST(N'2011-01-23T05:22:35.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 185, N'South Africa', 978, 1, 10, N'3', CAST(N'2009-07-26T19:55:54.2400000' AS DateTime2), N'5', CAST(N'2011-01-23T05:23:05.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 186, N'France', 978, 1, 10, N'3', CAST(N'2009-07-26T19:57:00.0900000' AS DateTime2), N'5', CAST(N'2011-01-23T05:23:40.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 187, N'LLC', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:00:02.1466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 188, N'Partnership', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:00:20.8200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 189, N'Establishment', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:00:42.3266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 190, N'Corporation', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:01:02.4966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 191, N'Branch', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:01:20.7200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 192, N'Other', NULL, 1, 20, N'3', CAST(N'2009-07-26T20:01:31.8133333' AS DateTime2), N'5', CAST(N'2009-11-18T12:11:42.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 193, N'Egypt', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:34:17.7433333' AS DateTime2), N'5', CAST(N'2010-07-13T10:39:58.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 194, N'UAE', NULL, 1, 1, N'3', CAST(N'2009-07-26T20:35:14.6100000' AS DateTime2), N'5', CAST(N'2009-08-05T03:08:42.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 195, N'United Kingdom', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:35:56.3600000' AS DateTime2), N'5', CAST(N'2010-07-13T10:36:52.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 196, N'United States', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:36:11.4366667' AS DateTime2), N'5', CAST(N'2010-07-13T10:39:47.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 197, N'Junior Associate', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:42:10.4600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 198, N'Para Legal', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:42:43.9300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 199, N'Clerk', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:42:56.1366667' AS DateTime2), N'3', CAST(N'2009-07-26T08:43:02.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 200, N'Secretary', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:43:24.6266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 201, N'Acquisition Finance', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:45:37.7466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 202, N'Alternative Dispute Resolution (ADR)', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:55:22.5500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 203, N'Arbitration', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:56:01.1066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 204, N'Asset Finance', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:56:15.9300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 205, N'Aviation', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:56:28.9400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 206, N'Banking', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:56:41.3033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 207, N'Business Ethics and Anti-Corruption', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:56:59.4100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 208, N'Climate Change', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:57:16.9333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 209, N'Communications', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:57:34.0066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 210, N'Media & Technology', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:57:53.0533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 211, N'Competition', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:58:07.2333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 212, N'Regulatory and EU', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:58:21.8066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 213, N'Corporate Finance', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:58:42.7400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 214, N'Corporate', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:58:56.4233333' AS DateTime2), N'5', CAST(N'2013-09-26T04:33:36.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 215, N'Corporate Restructuring & Insolvency', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:59:09.8766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 216, N'Owner', NULL, 1, 10, N'3', CAST(N'2009-08-02T22:44:34.0300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 217, N'Tenant', NULL, 1, 10, N'3', CAST(N'2009-08-02T22:44:42.5600000' AS DateTime2), N'5', CAST(N'2012-05-07T12:28:15.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 218, N'Passport', NULL, 1, 10, N'3', CAST(N'2009-08-03T09:30:39.8433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 219, N'License', NULL, 1, 10, N'3', CAST(N'2009-08-03T09:30:47.5833333' AS DateTime2), N'5', CAST(N'2010-08-08T01:02:19.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 220, N'IN', NULL, 1, 10, N'3', CAST(N'2009-08-03T11:35:46.1300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 221, N'OUT', NULL, 1, 20, N'3', CAST(N'2009-08-03T11:35:51.2366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 222, N'AED', NULL, 1, 1, N'5', CAST(N'2009-08-05T03:04:54.7200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 223, N'USD', NULL, 1, 2, N'5', CAST(N'2009-08-05T03:05:53.9900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 224, N'Sharjah', 193, 1, 1, N'5', CAST(N'2009-08-05T03:06:56.5033333' AS DateTime2), N'5', CAST(N'2009-08-06T05:44:36.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 225, N'Sudan', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:11:43.4600000' AS DateTime2), N'5', CAST(N'2009-08-06T05:15:47.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 226, N'Jordan', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:15:28.4700000' AS DateTime2), N'5', CAST(N'2009-08-06T05:15:40.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 227, N'Philippine', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:16:08.6133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 228, N'India', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:16:32.0233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 229, N'Pakistan', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:16:52.3966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 230, N'Lebanon', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:17:13.6800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 231, N'USA', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:17:32.2400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 232, N'Australia', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:18:04.0366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 233, N'Malaysia', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:19:27.7133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 234, N'Palestine', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:20:58.3900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 235, N'Morocco', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:21:51.6800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 236, N'Syria', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:22:27.5866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 237, N'Iraq', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:22:47.9500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 238, N'Ajman', 193, 1, 1, N'5', CAST(N'2009-08-06T05:45:34.4100000' AS DateTime2), N'5', CAST(N'2009-08-06T05:46:20.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 239, N'Al Reef Palace', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:10:06.7566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 240, N'Al Mafraq Indus.', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:11:01.9533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 241, N'Reem Island', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:11:36.6333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 242, N'Khalifa City A', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:12:27.0866667' AS DateTime2), N'5', CAST(N'2013-02-07T03:45:23.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 243, N'Khalifa City B', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:12:51.2800000' AS DateTime2), N'5', CAST(N'2013-02-07T03:45:38.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 244, N'Musaffah Indus.', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:13:27.6100000' AS DateTime2), N'5', CAST(N'2010-04-13T09:02:18.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 245, N'Al Ain', 193, 1, 1, N'5', CAST(N'2009-08-06T08:14:29.3633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 246, N'Al Murkhaniah', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:15:11.0733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 247, N'Al Khaznah', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:15:36.9000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 248, N'Bain Algesrain', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:16:21.6500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 249, N'Asharaj', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:17:13.9000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 250, N'Al Maqam', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:17:38.9933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 252, N'Insurance Card', NULL, 1, 10, N'5', CAST(N'2009-08-09T03:43:47.7000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 253, N'Visa (Work)', NULL, 1, 10, N'5', CAST(N'2009-08-09T03:44:09.7200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 254, N'Visa (Temporary)', NULL, 1, 10, N'5', CAST(N'2009-08-09T03:44:33.8100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 255, N'Visa (Visit)', NULL, 1, 10, N'5', CAST(N'2009-08-09T03:44:57.8533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 257, N'Driving Lic. (Int''l)', NULL, 1, 10, N'5', CAST(N'2009-08-09T03:47:15.0200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 271, N'Canada', NULL, 1, 2, N'5', CAST(N'2009-08-12T13:03:47.1666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 272, N'Brazil', NULL, 1, 2, N'5', CAST(N'2009-08-12T13:05:08.4033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 273, N'Colombia', NULL, 1, 2, N'5', CAST(N'2009-08-12T13:05:30.6900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 274, N'Mexico', NULL, 1, 2, N'5', CAST(N'2009-08-12T13:05:54.7933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 275, N'Tunis', NULL, 1, 2, N'5', CAST(N'2009-08-12T13:06:28.5900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 276, N'Libya', NULL, 1, 2, N'5', CAST(N'2009-08-12T13:07:04.0100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 277, N'South Africa', NULL, 1, 2, N'5', CAST(N'2009-08-12T14:09:50.9500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 280, N'Visa (Res)', NULL, 1, 10, N'5', CAST(N'2009-08-13T09:24:39.3600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 281, N'MOU', NULL, 1, 10, N'5', CAST(N'2009-08-13T16:56:28.1066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 282, N'JV', NULL, 1, 10, N'5', CAST(N'2009-08-13T16:57:26.2500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 283, N'Property', NULL, 1, 10, N'5', CAST(N'2009-08-13T16:58:39.1600000' AS DateTime2), N'5', CAST(N'2010-09-16T09:14:16.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 284, N'NDA', NULL, 1, 10, N'5', CAST(N'2009-08-13T16:58:51.7800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 285, N'Admin (LD)', NULL, 1, 10, N'5', CAST(N'2009-08-24T10:50:44.4866667' AS DateTime2), N'5', CAST(N'2009-08-24T01:51:22.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 286, N'Offshore', NULL, 1, 10, N'5', CAST(N'2009-11-18T12:11:23.0700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 287, N'BVI', 978, 1, 10, N'5', CAST(N'2009-11-19T09:17:59.6300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 288, N'Cayman', 978, 1, 10, N'5', CAST(N'2009-11-19T09:18:31.0900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 289, N'LLC (Under Incorpn.)', NULL, 1, 10, N'5', CAST(N'2009-11-19T15:44:27.9666667' AS DateTime2), N'5', CAST(N'2009-11-19T03:45:07.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 290, N'Mexico', NULL, 1, 10, N'5', CAST(N'2009-11-19T16:55:21.4066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 291, N'Mexico', 193, 1, 10, N'5', CAST(N'2009-11-19T16:57:01.7033333' AS DateTime2), N'5', CAST(N'2012-01-04T03:06:13.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 292, N'Group Company', NULL, 1, 10, N'5', CAST(N'2009-12-08T23:26:56.9533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 293, N'Non-Group Company', NULL, 1, 20, N'5', CAST(N'2009-12-08T23:27:21.4766667' AS DateTime2), N'5', CAST(N'2009-12-09T11:01:26.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 294, N'Fully Owned', 292, 1, 10, N'5', CAST(N'2009-12-08T23:29:23.9400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 295, N'Partially Owned', 292, 1, 10, N'5', CAST(N'2009-12-08T23:31:22.6166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 296, N'Partner', 292, 1, 15, N'5', CAST(N'2009-12-08T23:49:15.4100000' AS DateTime2), N'5', CAST(N'2009-12-09T11:02:45.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 297, N'Investment', 292, 1, 15, N'5', CAST(N'2009-12-08T23:49:53.6266667' AS DateTime2), N'5', CAST(N'2009-12-09T11:02:17.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 298, N'Other', 292, 1, 20, N'5', CAST(N'2009-12-08T23:53:45.8766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 300, N'Investment & Partner', 292, 1, 15, N'5', CAST(N'2009-12-09T01:00:02.6533333' AS DateTime2), N'5', CAST(N'2009-12-09T11:02:29.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 301, N'MOA', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:05:31.5066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 302, N'Contract', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:05:47.9866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 303, N'MOA Addendum', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:06:02.6833333' AS DateTime2), N'5', CAST(N'2010-08-08T01:00:29.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 304, N'Chamber Certificate', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:06:38.8833333' AS DateTime2), N'5', CAST(N'2009-12-14T09:11:28.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 305, N'Certificate', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:07:04.1133333' AS DateTime2), N'5', CAST(N'2010-10-17T11:11:31.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 306, N'Seal', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:08:13.7300000' AS DateTime2), N'5', CAST(N'2010-08-08T01:01:19.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 307, N'Lease', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:08:32.8933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 308, N'Cash', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:08:48.7033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 309, N'Other', NULL, 1, 20, N'5', CAST(N'2009-12-13T23:09:02.0800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 310, N'Site Plan', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:09:31.5400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 311, N'Title Deed', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:10:16.4733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 312, N'Letter', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:18:01.1000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 313, N'POA (Personal)', NULL, 1, 10, N'5', CAST(N'2009-12-14T02:58:43.6000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 314, N'POA (Company)', NULL, 1, 10, N'5', CAST(N'2009-12-14T02:59:00.0066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 315, N'Other', NULL, 1, 20, N'5', CAST(N'2009-12-14T02:59:22.6233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 316, N'Title Deed', NULL, 1, 10, N'5', CAST(N'2009-12-14T02:59:43.1100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 317, N'Signature Specimen', NULL, 1, 10, N'5', CAST(N'2009-12-14T03:00:31.0866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 318, N'Employment Contract', NULL, 1, 10, N'5', CAST(N'2009-12-14T03:00:50.8000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 319, N'Contract', NULL, 1, 10, N'5', CAST(N'2009-12-14T03:01:06.4533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 320, N'Certificate', NULL, 1, 10, N'5', CAST(N'2009-12-14T03:01:33.2266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 321, N'Declaration', NULL, 1, 10, N'5', CAST(N'2009-12-14T03:02:25.9400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 323, N'Photo', NULL, 1, 10, N'5', CAST(N'2009-12-14T03:03:23.1500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 324, N'Letter', NULL, 1, 10, N'5', CAST(N'2009-12-14T03:04:10.7000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 326, N'Branch of Foreign Co', NULL, 1, 10, N'5', CAST(N'2010-01-05T05:05:19.4000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 327, N'Local Agency', NULL, 1, 10, N'5', CAST(N'2010-01-05T05:05:49.8366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 329, N'Sponsorship', 292, 1, 15, N'5', CAST(N'2010-01-10T04:59:11.3100000' AS DateTime2), N'5', CAST(N'2010-01-10T02:59:39.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 330, N'POA', NULL, 1, 10, N'5', CAST(N'2010-02-14T03:14:29.3966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 331, N'Home (Country)', NULL, 1, 20, N'5', CAST(N'2010-03-03T03:33:23.5033333' AS DateTime2), N'5', CAST(N'2010-07-07T12:44:48.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 332, N'Share Assignment Cnt', NULL, 1, 10, N'5', CAST(N'2010-04-05T12:50:58.0966667' AS DateTime2), N'5', CAST(N'2010-08-08T01:01:40.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 333, N'Al Barsha', NULL, 1, 1, N'5', CAST(N'2010-04-13T09:04:28.8166667' AS DateTime2), N'5', CAST(N'2012-05-07T12:36:30.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 334, N'Al Dhaidh', NULL, 1, 1, N'5', CAST(N'2010-04-13T09:06:59.7900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 335, N'Sehaijan', NULL, 1, 1, N'5', CAST(N'2010-04-13T09:07:23.7566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 337, N'Utility Bill', NULL, 1, 11, N'5', CAST(N'2010-06-30T15:23:52.6233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 338, N'Bahrain', NULL, 1, 2, N'5', CAST(N'2010-07-07T11:21:11.2666667' AS DateTime2), N'5', CAST(N'2010-07-07T11:21:28.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 339, N'Qatar', NULL, 1, 2, N'5', CAST(N'2010-07-07T11:22:44.1866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 340, N'Kuwait', NULL, 1, 2, N'5', CAST(N'2010-07-07T11:22:59.6533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 341, N'Mobile (Country)', NULL, 1, 20, N'5', CAST(N'2010-07-07T12:40:54.5633333' AS DateTime2), N'5', CAST(N'2010-07-07T12:44:00.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 342, N'Back Up (Country)', NULL, 1, 20, N'5', CAST(N'2010-07-07T12:41:47.5466667' AS DateTime2), N'5', CAST(N'2010-07-07T12:42:53.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 343, N'Back Up (UAE)', NULL, 1, 15, N'5', CAST(N'2010-07-07T12:42:03.0633333' AS DateTime2), N'5', CAST(N'2010-07-07T12:44:35.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 344, N'Share Certificate', NULL, 1, 10, N'5', CAST(N'2010-07-07T14:49:47.4933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 345, N'Share Certificate', NULL, 1, 10, N'5', CAST(N'2010-07-07T14:50:56.8366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 346, N'Printing of Books & Scholastic Textbooks', NULL, 1, 10, N'5', CAST(N'2010-07-08T16:51:42.9100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 347, N'Printing of Advertisements, Posters, Calendars, Pe', NULL, 1, 10, N'5', CAST(N'2010-07-08T16:53:17.5333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 348, N'Calculators, Surveying, Writing Machines...Trading', NULL, 1, 10, N'5', CAST(N'2010-07-08T16:55:02.9233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 349, N'Lic. Vocational/?????', NULL, 1, 10, N'5', CAST(N'2010-07-08T16:56:20.7500000' AS DateTime2), N'5', CAST(N'2011-01-24T12:44:01.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 350, N'Germany', NULL, 1, 2, N'5', CAST(N'2010-07-13T10:35:30.5966667' AS DateTime2), N'5', CAST(N'2010-07-13T10:35:44.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 351, N'Spain', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:36:17.7533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 352, N'Germany', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:36:30.5333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 353, N'Australia', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:39:27.9433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 354, N'Cayman Islands', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:40:29.7533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 355, N'Sudan', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:40:52.2333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 356, N'Syria', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:41:05.9433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 357, N'BVI', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:41:15.3533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 358, N'Oman', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:41:24.8266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 359, N'Qatar', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:41:34.3600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 360, N'KSA', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:42:06.8966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 361, N'Morocco', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:43:28.2033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 362, N'Panama', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:43:43.3800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 363, N'South Africa', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:43:58.2266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 364, N'Colombia', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:44:13.0566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 365, N'Brazil', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:44:34.5433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 366, N'Argentine', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:44:50.9200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 368, N'Declaration', NULL, 1, 10, N'5', CAST(N'2010-07-15T09:22:40.3466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 369, N'Resolution, Board', NULL, 1, 10, N'5', CAST(N'2010-07-27T10:40:19.4333333' AS DateTime2), N'5', CAST(N'2010-08-08T12:59:11.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 370, N'Resolution, Shareholders/GA', NULL, 1, 10, N'5', CAST(N'2010-07-27T10:41:01.4200000' AS DateTime2), N'5', CAST(N'2010-08-08T12:59:31.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 371, N'Register', NULL, 1, 10, N'5', CAST(N'2010-08-08T13:09:45.3633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 372, N'Investment', NULL, 1, 1, N'5', CAST(N'2010-08-26T12:25:02.7866667' AS DateTime2), N'5', CAST(N'2010-09-12T11:29:08.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 373, N'Manufacturing', NULL, 1, 1, N'5', CAST(N'2010-08-26T12:25:20.5066667' AS DateTime2), N'5', CAST(N'2010-09-12T11:29:14.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 374, N'Trading', NULL, 1, 1, N'5', CAST(N'2010-08-26T12:25:32.1933333' AS DateTime2), N'5', CAST(N'2010-09-12T11:29:30.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 375, N'Contracting', NULL, 1, 1, N'5', CAST(N'2010-08-26T12:25:47.4600000' AS DateTime2), N'5', CAST(N'2010-09-12T11:29:00.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 376, N'Real Estate', NULL, 1, 1, N'5', CAST(N'2010-08-26T12:26:12.3000000' AS DateTime2), N'5', CAST(N'2010-09-12T11:29:20.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 377, N'Other', NULL, 1, 2, N'5', CAST(N'2010-08-26T12:26:29.8800000' AS DateTime2), N'5', CAST(N'2010-09-12T11:29:40.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 378, N'Services', NULL, 1, 1, N'5', CAST(N'2010-08-26T12:26:48.8333333' AS DateTime2), N'5', CAST(N'2010-09-12T11:29:25.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 379, N'BHD', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:15:43.2766667' AS DateTime2), N'5', CAST(N'2010-09-08T12:15:55.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 380, N'SAR', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:16:37.8066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 381, N'EUR', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:16:53.7466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 382, N'SDP', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:17:27.1033333' AS DateTime2), N'5', CAST(N'2012-02-01T05:33:56.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 383, N'OMR', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:17:58.8833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 384, N'KWD', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:18:39.6966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 385, N'GBP', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:19:18.9933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 386, N'EGP', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:20:11.3033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 387, N'SYP', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:22:39.0500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 388, N'Marketing,Statistics Purchases Economy Consultancy', NULL, 1, 10, N'5', CAST(N'2010-09-12T11:31:17.6766667' AS DateTime2), N'5', CAST(N'2010-09-12T11:32:38.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 389, N'Management & Leasing of Real Estate', NULL, 1, 10, N'5', CAST(N'2010-09-12T11:42:21.1166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 390, N'Private Companies & Establishments Management', NULL, 1, 10, N'5', CAST(N'2010-09-12T11:42:50.5233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 391, N'Commercial Projects Investment', NULL, 1, 10, N'5', CAST(N'2010-09-12T11:43:18.8333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 392, N'Invst., Establishing & Managing Industl Projects', NULL, 1, 10, N'5', CAST(N'2010-09-12T11:44:26.6300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 393, N'Real Estate Projects Investment', NULL, 1, 10, N'5', CAST(N'2010-09-12T11:44:49.3333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 394, N'Investment, Global', NULL, 1, 10, N'5', CAST(N'2010-09-16T09:12:55.5333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 395, N'POA', NULL, 1, 10, N'5', CAST(N'2010-09-16T11:48:09.3866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 396, N'Developing Real Estate', NULL, 1, 10, N'5', CAST(N'2010-09-16T14:54:44.4633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 397, N'Crtf. Commercial Agency', NULL, 1, 11, N'5', CAST(N'2010-09-29T16:22:25.6066667' AS DateTime2), N'5', CAST(N'2011-01-24T12:45:13.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 398, N'Crtf. Trade Mark Rg.', NULL, 1, 11, N'5', CAST(N'2010-09-29T16:22:38.4500000' AS DateTime2), N'5', CAST(N'2011-01-24T12:45:45.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 399, N'Lic. Health/????', NULL, 1, 10, N'5', CAST(N'2010-10-07T15:20:40.2866667' AS DateTime2), N'5', CAST(N'2011-01-24T12:43:12.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 400, N'Al Ain', 978, 1, 1, N'5', CAST(N'2010-11-30T14:22:35.9566667' AS DateTime2), N'5', CAST(N'2010-11-30T02:22:59.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 401, N'Card', NULL, 1, 10, N'5', CAST(N'2010-11-30T17:46:25.7100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 402, N'Chairman', NULL, 1, 1, N'5', CAST(N'2010-12-07T09:50:31.0766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 403, N'Vice Chairman', NULL, 1, 2, N'5', CAST(N'2010-12-07T09:50:45.6200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 404, N'Member, MD', NULL, 1, 3, N'5', CAST(N'2010-12-07T09:51:05.5000000' AS DateTime2), N'5', CAST(N'2010-12-29T06:10:26.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 405, N'Member', NULL, 1, 4, N'5', CAST(N'2010-12-07T09:51:20.4766667' AS DateTime2), N'5', CAST(N'2010-12-29T06:10:45.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 406, N'Advisor', NULL, 1, 5, N'5', CAST(N'2010-12-07T09:51:49.6766667' AS DateTime2), N'5', CAST(N'2010-12-29T06:10:53.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 407, N'Secretary', NULL, 1, 6, N'5', CAST(N'2010-12-07T09:52:34.5900000' AS DateTime2), N'5', CAST(N'2010-12-29T06:10:58.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 408, N'Crtf. Registration/Incorpn', NULL, 1, 11, N'5', CAST(N'2010-12-13T12:29:51.4366667' AS DateTime2), N'5', CAST(N'2011-01-24T12:47:49.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 409, N'Greece', NULL, 1, 2, N'5', CAST(N'2010-12-19T11:35:51.6133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 410, N'Malaysia', NULL, 1, 10, N'5', CAST(N'2010-12-27T17:51:37.6100000' AS DateTime2), N'5', CAST(N'2010-12-27T05:53:52.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 411, N'Malaysia', 978, 1, 10, N'5', CAST(N'2010-12-27T17:55:13.6800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 412, N'Crtf. Classification', NULL, 1, 11, N'5', CAST(N'2011-01-03T09:45:28.6433333' AS DateTime2), N'5', CAST(N'2011-01-24T12:44:56.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 413, N'Crtf. Civil Defense', NULL, 1, 11, N'5', CAST(N'2011-01-05T11:12:08.3466667' AS DateTime2), N'5', CAST(N'2011-01-24T12:44:29.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 414, N'Chairman', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:27:29.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 415, N'Vice Chairman', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:27:49.6833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 416, N'General Manager', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:29:52.6000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 417, N'Manager', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:30:01.8166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 418, N'PRO', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:30:11.5066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 419, N'Board Member', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:30:30.3966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 420, N'Board Secretary', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:30:44.1666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 421, N'Board Advisor', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:30:57.1700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 422, N'Corporate Supervisor', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:31:38.7000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 423, N'Group MD', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:31:51.7666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 424, N'MD', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:32:01.8300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 425, N'Authorized Signatory', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:19:53.4400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 426, N'CFO', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:20:42.6200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 427, N'Legal Advisor', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:21:07.8933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 428, N'Director', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:21:27.7766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 429, N'Senior Staff', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:21:59.1366667' AS DateTime2), N'5', CAST(N'2011-01-11T06:22:52.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 430, N'First Gulf Bank', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:23:15.4833333' AS DateTime2), N'5', CAST(N'2011-01-11T06:24:42.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 431, N'AD Commercial Bank', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:24:14.5966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 432, N'National Bank of AD', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:25:01.8800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 433, N'Mashreq Bank', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:25:15.5833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 434, N'Union National Bank', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:25:29.5600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 435, N'United Arab Bank', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:26:03.4466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 436, N'Department Head', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:30:12.2400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 437, N'Managed by RG', 292, 1, 15, N'5', CAST(N'2011-01-17T09:47:03.7733333' AS DateTime2), N'5', CAST(N'2011-01-17T09:47:23.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 438, N'Singly', NULL, 1, 10, N'5', CAST(N'2011-01-17T17:15:18.0200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 439, N'Jointly', NULL, 1, 10, N'5', CAST(N'2011-01-17T17:15:29.0766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 440, N'Other', NULL, 1, 20, N'5', CAST(N'2011-01-17T17:15:44.0500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 441, N'Turkey', NULL, 1, 2, N'5', CAST(N'2011-01-23T16:52:14.9733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 442, N'Argentine', NULL, 1, 2, N'5', CAST(N'2011-01-23T16:54:00.0666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 443, N'China', NULL, 1, 2, N'5', CAST(N'2011-01-23T16:55:59.1133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 444, N'Brazil', 978, 1, 10, N'5', CAST(N'2011-01-23T17:21:15.6433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 445, N'Spain', 978, 1, 10, N'5', CAST(N'2011-01-23T17:24:06.8700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 446, N'China', 978, 1, 10, N'5', CAST(N'2011-01-23T17:36:53.3400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 447, N'Croatia', 978, 1, 10, N'5', CAST(N'2011-01-23T17:42:45.7100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 448, N'Montenegro', 978, 1, 10, N'5', CAST(N'2011-01-23T17:43:21.3100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 450, N'Seychelles', 978, 1, 10, N'5', CAST(N'2011-01-23T17:44:08.9700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 451, N'Panama', 978, 1, 10, N'5', CAST(N'2011-01-23T17:44:38.9600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 452, N'Colombia', 978, 1, 10, N'5', CAST(N'2011-01-23T17:44:59.9933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 453, N'Netherlands', 978, 1, 10, N'5', CAST(N'2011-01-23T17:45:19.5000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 454, N'Australia', 978, 1, 10, N'5', CAST(N'2011-01-23T17:45:45.6900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 455, N'Argentine', 978, 1, 10, N'5', CAST(N'2011-01-23T17:46:12.4100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 456, N'Mexico', 978, 1, 10, N'5', CAST(N'2011-01-23T17:46:55.4166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 457, N'Bahamas', 978, 1, 10, N'5', CAST(N'2011-01-23T17:47:55.6266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 458, N'UK', 978, 1, 10, N'5', CAST(N'2011-01-23T17:49:14.9033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 459, N'Crtf. Shares', NULL, 1, 11, N'5', CAST(N'2011-01-24T12:46:44.8366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 460, N'Philippines', 978, 1, 10, N'5', CAST(N'2011-01-26T13:26:34.8700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 461, N'Singapore', 978, 1, 10, N'5', CAST(N'2011-02-22T11:34:52.2600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 462, N'Utility Bill', NULL, 1, 10, N'5', CAST(N'2011-02-23T13:10:22.3500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 463, N'Oman', NULL, 1, 2, N'5', CAST(N'2011-03-13T11:43:04.2766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 464, N'ADX', NULL, 1, 1, N'5', CAST(N'2011-03-27T14:38:57.5566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 465, N'DFM', NULL, 1, 1, N'5', CAST(N'2011-03-27T14:42:22.5800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 466, N'Committee Member', NULL, 1, 1, N'5', CAST(N'2011-04-14T17:19:32.9233333' AS DateTime2), N'5', CAST(N'2011-04-14T05:19:42.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 467, N'Lic. Tourism/??????', NULL, 1, 10, N'5', CAST(N'2011-06-08T12:45:33.2066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 468, N'Deputy GM', NULL, 1, 1, N'5', CAST(N'2011-07-06T12:03:10.1333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 469, N'Crtf. Nadafa NOC', NULL, 1, 11, N'5', CAST(N'2011-09-26T09:44:29.1100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 470, N'Lic. Environment/?????', NULL, 1, 10, N'5', CAST(N'2011-09-26T09:45:25.0533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 471, N'LYD', NULL, 1, 2, N'5', CAST(N'2012-01-02T15:00:19.3266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 472, N'Egypt', NULL, 1, 10, N'5', CAST(N'2012-01-04T15:49:47.5833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 473, N'Sweden', NULL, 1, 2, N'5', CAST(N'2012-01-05T10:08:21.0433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 474, N'Crd. Immigration', NULL, 1, 11, N'5', CAST(N'2012-01-09T12:16:48.8500000' AS DateTime2), N'5', CAST(N'2012-01-09T12:17:50.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 475, N'Crd. Labour', NULL, 1, 11, N'5', CAST(N'2012-01-09T12:17:38.4866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 476, N'Health', NULL, 1, 1, N'5', CAST(N'2012-01-11T12:38:17.6833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 477, N'Education', NULL, 1, 1, N'5', CAST(N'2012-01-11T12:38:30.7400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 478, N'Hospitality', NULL, 1, 1, N'5', CAST(N'2012-01-11T12:39:30.4666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 479, N'Kitchen Equipment and Outfit Trading', NULL, 1, 10, N'5', CAST(N'2012-01-12T12:48:39.0133333' AS DateTime2), N'5', CAST(N'2012-01-12T12:50:59.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 480, N'Import', NULL, 1, 10, N'5', CAST(N'2012-01-12T12:48:49.5766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 481, N'Export', NULL, 1, 10, N'5', CAST(N'2012-01-12T12:48:59.6300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 482, N'Readymade Food Catering Contracts (Meal Prepara', NULL, 1, 10, N'5', CAST(N'2012-01-12T12:49:29.9400000' AS DateTime2), N'5', CAST(N'2012-01-12T12:51:08.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 484, N'Fast Food Restaurant and Catering Services', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:13:01.9300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 485, N'Veterinary Clinic', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:13:34.5400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 486, N'Wooden Doors and Windows', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:13:53.5166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 487, N'Fireproof Doors Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:14:13.1800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 488, N'Home Furniture Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:14:34.2200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 489, N'Office Furniture Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:14:55.7966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 490, N'On Shore & Off Shore Oil and Gas Fields and Facili', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:15:19.1333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 491, N'Trading of Canned and Conserved Foodstuff', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:15:36.6100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 492, N'Fresh Foodstuff Trading', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:15:55.5400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 493, N'Selling New Passenger Cars', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:16:15.4566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 494, N'Selling New Buses', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:16:36.0366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 495, N'Trucks and Trailer Vehicles', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:16:52.9166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 496, N'Commercial Agencies', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:17:10.8033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 497, N'Professional Wear Trading', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:17:29.1600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 498, N'Commercial Enterprises Inv., Institution & Managnt', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:17:48.0700000' AS DateTime2), N'5', CAST(N'2012-01-12T05:21:11.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 499, N'Trading of Marine Machines & Equipment', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:21:45.1700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 500, N'E-Guide and Building E-Complexes', NULL, 1, 10, N'5', CAST(N'2012-01-16T17:45:21.1733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 501, N'Fast Food Restaurant', NULL, 1, 10, N'5', CAST(N'2012-01-16T17:45:36.7400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 502, N'Communication & Wireless System; Equipment Install', NULL, 1, 10, N'5', CAST(N'2012-01-16T17:45:54.0533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 503, N'Restaurant Management', NULL, 1, 10, N'5', CAST(N'2012-01-16T17:46:16.4966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 504, N'Catering Services', NULL, 1, 10, N'5', CAST(N'2012-01-16T17:46:40.1600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 505, N'Internet Café’s (access to internet services)', NULL, 1, 10, N'5', CAST(N'2012-01-16T17:46:59.3233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 506, N'Installing & Repairing Cooling System & A/C Contracting Works 4th Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:28:21.0500000' AS DateTime2), N'5', CAST(N'2012-01-19T03:03:38.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 507, N'Ships & Boats Trading', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:33:18.1433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 508, N'Labor Camp Management', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:33:38.7533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 509, N'Real Estate Lease & Management Services', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:33:57.4000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 510, N'Soil Testing Services', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:34:16.9866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 511, N'Building Materials Lab', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:34:35.9666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 512, N'General Maintenance For Buildings', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:34:55.5166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 513, N'Bridges & Tunnels Contracting', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:35:15.1000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 514, N'General Contracting of Civil Constructions', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:35:34.5900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 515, N'Electromechanical Works Projects Contracting', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:35:59.8033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 516, N'Sub Water Networks Contracting Works 4th Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:36:57.7333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 517, N'Installing, Extending & Repairing Alarm Systems', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:37:30.9300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 518, N'Rain Water Drainage Contracting 3rd Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:37:58.1800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 519, N'Russia', NULL, 1, 2, N'5', CAST(N'2012-01-19T11:52:46.6033333' AS DateTime2), N'5', CAST(N'2017-10-23T09:53:58.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 520, N'Trading of Marine Means of Transport & Spare Parts', NULL, 1, 10, N'5', CAST(N'2012-01-19T11:54:20.6466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 521, N'Main Water Networks Contracting Works 4th Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T11:54:54.9633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 522, N'Main Sewage Networks Contracting Works 4th Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T11:55:16.1400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 523, N'Communications Networks Contracting Works 5th Grad', NULL, 1, 10, N'5', CAST(N'2012-01-19T11:56:16.2500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 524, N'Factories Equipments, Machines & Spare Parts Tradg', NULL, 1, 10, N'5', CAST(N'2012-01-19T11:57:07.9366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 526, N'Maintenance & Repair of Heavy Lifting & Handling Equipments', NULL, 1, 10, N'5', CAST(N'2012-01-19T14:58:08.8800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 527, N'Maintenance & Repair of Light Lifting & Handling Equipments', NULL, 1, 10, N'5', CAST(N'2012-01-19T14:58:28.0966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 528, N'Power Transmitting & Distribution Networks Contracting Work 4th Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T14:59:22.0733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 529, N'Main Roads & Streets Contracting & Related Works Thereof 3rd Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T14:59:41.2366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 530, N'Sub Sewage Networks/Homes Connections Contracting. 4th Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T15:00:05.2400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 531, N'Civil Works for Water Purification Stations Fourth Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T15:00:22.6933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 532, N'Towing & Transporting Broken Down Cars (Without Repairs)', NULL, 1, 10, N'5', CAST(N'2012-01-19T15:00:42.7700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 533, N'Private Money Investment', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:34:01.3000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 534, N'Computer & Data Processing Requisites Trading', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:34:35.7733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 535, N'Electronic Apparatuses & Equipments Repairing', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:35:00.7733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 536, N'On Shore & Off Shore Oil & Gas Fields Services', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:35:32.0466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 537, N'Computer Trading', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:35:48.6400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 538, N'Ready Software Trading', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:36:06.1833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 539, N'Land Freight Services For Goods', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:36:21.3700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 540, N'Air Freight Services For Goods', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:36:36.3266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 541, N'Marine Freight Services for Goods', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:36:51.7466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 542, N'Trading of Marine Machines and Equipment', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:37:09.9900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 543, N'Trade in Military Uniform', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:37:24.1966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 544, N'Organizing & Conducting Tourist Trips', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:37:46.0733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 545, N'Travel Tickets Sales Office', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:38:03.4333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 546, N'Agricultural Enterprises Investment, Institution & Management', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:23:43.0600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 547, N'Cleaning Building & Houses', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:24:07.7133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 548, N'Real Estate Enterprises Investment, Development, Institution & Management', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:24:26.0266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 549, N'Buying, Selling & Dividing Plots & Real Estates', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:24:46.7066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 550, N'IT Consulting', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:25:05.0900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 551, N'Periodicals & Commercial Magazines Publication', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:25:25.6100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 552, N'Aquarium Fish & Accessory Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:25:50.7700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 553, N'Fodder Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:26:08.1233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 554, N'Dive Gear Equipment Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:27:51.7166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 555, N'Television Programs & Series Production', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:28:09.1266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 556, N'Deluxe Hotel Apartments', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:28:25.4933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 557, N'Constructing & Maintaining Parks & Landscape Design & Planning Activities', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:28:46.2233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 558, N'Irrigation Networks Contracting 3rd Grade', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:29:12.4233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 559, N'Afforestation Contracting 3rd Grade', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:30:32.6100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 560, N'Leveling Sites', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:31:00.4566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 561, N'Main Sewage Networks Contracting Works', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:31:29.2466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 562, N'Consultancy & Studies on Feasibility', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:31:46.9900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 563, N'Water Desalination Equipments & Machinery & Outfits Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:32:06.7066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 564, N'Trading of Pipes & Tubes', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:32:25.8500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 565, N'Air Conditioning & Refrigeration System Spare Parts Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:32:55.1766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 566, N'Pumps an Accessory Thereof Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:33:12.7633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 567, N'Trading of Security Systems Equipment', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:33:29.0066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 568, N'Trade of Lightning Equipment & Accessories', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:33:49.0700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 569, N'Pipe under Sea Level Installation & Repairing by Welding', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:34:09.2466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 570, N'Wall paper Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:35:16.8200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 571, N'Décor Materials & Partitions Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:35:41.0100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 572, N'The Implementation of the Work Interior Design ( Décor)', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:36:09.7633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 573, N'Restaurant – 3rd Grade', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:42:37.5100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 574, N'Cafeteria', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:45:56.1700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 575, N'Manual Bakery', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:46:38.7500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 576, N'Watches Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:47:00.1133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 577, N'Antiques Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:47:41.0266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 578, N'Precious Stones, Jewellery & Trinketry Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:48:09.1533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 579, N'Gifts Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:48:25.1366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 580, N'Repairing Gold & Jewellery', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:48:43.4633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 581, N'Commercial Broker', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:49:30.8766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 582, N'Theme Park', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:49:47.0166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 583, N'TV Stations – Satellite Channels', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:50:05.6200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 584, N'All kinds of watches trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:50:22.2766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 585, N'Kitchen Cabinets & Fixtures Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:50:38.5466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 586, N'Seaports Contracting', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:13:00.6100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 587, N'General Transportation', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:13:18.2600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 588, N'Precast Building Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:13:38.4466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 589, N'Concrete Blocks Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:13:58.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 590, N'Interlock Tiles Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:14:17.2400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 591, N'Safety Glass Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:14:34.0133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 592, N'Reflective & Insulant Glass Production', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:16:43.0433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 593, N'Double Glass Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:20:05.8433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 594, N'Steel Structures Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:20:24.2133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 595, N'Establishment Management Services', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:20:41.3800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 596, N'Cinema Movies Shows', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:20:57.7733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 597, N'Construction Equipment & Machinery Trading', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:21:12.8166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 598, N'Handling, Loading & Lifting Equipment Trading', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:21:28.8766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 599, N'Lifts, Escalators & Spare Parts Trading', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:21:45.4100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 600, N'Pumps, Engines, Valves & Spare Parts Trading', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:22:01.2700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 601, N'Data Formatting', NULL, 1, 10, N'5', CAST(N'2012-01-31T17:06:10.9333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 602, N'Data Collection From One or More Sources', NULL, 1, 10, N'5', CAST(N'2012-01-31T17:06:31.7233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 603, N'Storing & Retrieving Data', NULL, 1, 10, N'5', CAST(N'2012-01-31T17:06:53.8800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 604, N'Telecommunication Equipment Trading', NULL, 1, 10, N'5', CAST(N'2012-01-31T17:07:16.4266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 605, N'Computer System Housing Services', NULL, 1, 10, N'5', CAST(N'2012-01-31T17:07:33.0300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 606, N'Specialized Vehicles Workshops', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:16:02.5966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 607, N'Buses, Trucks & Trailer Vehicles Mechanics', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:17:02.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 608, N'Foundation Drilling & Piling Works', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:17:31.2633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 609, N'Administrative Consultancy', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:17:48.8500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 610, N'Commercial Information Services', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:18:03.9466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 611, N'General Trading', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:18:24.4066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 612, N'Radio Programs & Audio Recordings Production', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:18:42.1933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 613, N'Advertisement Design and Production', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:18:57.7066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 614, N'Advertising Signboards Requisites Trading', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:19:13.5333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 615, N'Publicity & Advertising', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:19:35.5233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 616, N'Media Consultant & Studies', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:19:55.9366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 617, N'Fixing Advertisement Boards', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:20:12.7300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 618, N'Management & Operation of Hotel Apartments', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:31:04.3233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 619, N'Management & Operation of Hotels', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:31:19.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 620, N'Ready Mix Concrete Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:31:39.3466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 621, N'All Kinds of Building Projects Contracting', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:31:55.6066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 622, N'Medical Centre', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:32:15.7500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 623, N'Pharmacy', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:32:32.8500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 624, N'Constructional Project Management', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:32:47.9000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 625, N'Hunting, Shooting, Spreading of Wildlife Pasture Land Including related Services Activities', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:33:04.1566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 626, N'Fighting Plant Epidemics', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:33:20.2200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 627, N'Land Reclamation for Agricultural Purposes', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:33:38.3166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 628, N'Natural Plants & Flowers Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:33:56.5200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 629, N'Trade of Palm Trees & Seedling (Nakheel)', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:34:23.5300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 630, N'House Pesticides Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:34:40.9933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 631, N'Tourist Enterprises Investment, Institution & Management', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:35:04.7266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 632, N'Seeds and Grains Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:35:19.6400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 633, N'Chemical Fertilizers Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:35:33.6900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 634, N'Honey Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:35:50.7533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 635, N'Natural Fertilizers & Agricultural Reclamation Material Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:36:08.6133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 636, N'Trucks & Buses Spare Parts Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:36:38.3900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 637, N'Heavy Machines & Equipment Tyres Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:40:04.6066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 638, N'Selling Used Passenger Cars', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:41:00.4066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 639, N'Selling Used Buses, Trucks & Trailers', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:41:22.8066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 640, N'Selling New Buses, Trucks & Trailer Vehicles', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:41:40.0933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 641, N'Selling New Heavy Equipment & Machinery', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:41:57.3933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 642, N'Selling Used Heavy Equipment & Machinery', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:42:12.6700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 643, N'Renting Lifting & Loading Machines & Equipments', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:42:28.7866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 653, N'Hospital Management', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:01:00.2966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 654, N'Building Material Trading', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:01:14.8300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 655, N'Civil Works for Power Generation & Water Desalination Stations', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:01:34.0533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 656, N'Interior Design Engineering Consultancy', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:01:49.8966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 657, N'Funds & Securities Investment (Shares & Bonds)', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:02:08.5633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 658, N'Customer Clearance Services', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:02:27.4000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 659, N'Architectural Engineering Consultancy', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:02:41.2800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 660, N'Education Services Enterprises Investment, Institution & Management', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:02:58.3233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 661, N'Service Duct Connection Drilling', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:03:15.0933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 662, N'Real Estate Agent', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:03:30.3500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 663, N'Real Estate Escrow Agent', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:03:54.6100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 664, N'Establishment Cleaning', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:04:40.0200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 665, N'Valet Parking Services', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:05:16.3966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 666, N'Building Materials Trading', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:05:32.7766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 667, N'Fresh Fruits & Vegetable Trading', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:05:57.4166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 668, N'Fresh Chicken Trading', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:06:25.2233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 669, N'Touristic Resorts Management', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:07:03.3800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 670, N'Kindergarten', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:39:27.0900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 671, N'Public Elementary Education', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:39:59.9400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 672, N'Education Facilities and Management Services', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:40:17.3900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 673, N'Pearl Cultivation', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:40:34.6133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 674, N'Readymade Building Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:40:58.9200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 675, N'Live Poultry Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:41:25.3033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 676, N'Poultry Raising', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:41:41.6266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 677, N'Slaughtering Poultry, Rabbits & Birds', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:42:01.4366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 678, N'Electricity Transmission & Control Apparatus Installation', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:42:22.0166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 679, N'Electromechanical Equipment Installation & Maintenance', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:42:40.3266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 680, N'Air Conditioning, Ventilations & Air Filtration Systems Installation & Maintenance', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:43:06.0800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 681, N'Operating &  Maintenance of Electrical Stations & Pipelines', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:43:26.9666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 682, N'Electromechanical Works Project Contracting', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:43:56.2200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 683, N'Installation & Ignition of Mechanical Equipments', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:44:15.2800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 684, N'Health Services Enterprises Investment, Institution & Management', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:45:34.1766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 685, N'Legal Consultancy', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:45:51.5400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 686, N'Metal & Steel Works', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:46:11.6066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 687, N'Home Furniture & Cabinet Work Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:47:09.1100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 688, N'Sanitary Tools & Fittings Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:47:34.4633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 689, N'Tiles & Marble Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:47:57.9533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 690, N'Steel Construction Contracting', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:48:13.1300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 691, N'Local Shares & Bonds Brokers', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:48:33.1133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 692, N'Debt Collection', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:48:47.3333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 693, N'Financial Investment Consultancies', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:49:08.6233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 694, N'Curtains & Upholstery Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:49:29.5000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 695, N'Carpets Trading Class A', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:49:47.6400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 696, N'Sheets, Linen & Towels Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:50:03.8133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 697, N'Office Furniture Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:50:19.3100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 698, N'Miscellaneous Domestic Equipment & Utensils Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:50:39.5200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 699, N'Crtf. Food Control', NULL, 1, 11, N'5', CAST(N'2012-03-08T16:44:51.1300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 700, N'Railway Construction Contracting', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:23:44.6466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 701, N'Financial Advisors & Financial Analysis', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:24:01.1133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 702, N'Military Equipment Trading', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:24:16.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 703, N'Selling Spare parts & Accessories of Heavy Motor Equipment', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:24:38.3966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 704, N'Interior Decoration', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:24:51.9800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 705, N'Hospital Class A', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:25:07.6666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 706, N'Physical Fitness Club For Women', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:25:24.1266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 707, N'Women Personal Care & Beauty', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:25:42.7000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 708, N'Yemen', NULL, 1, 2, N'5', CAST(N'2012-04-01T13:52:56.2333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 709, N'Wholesale of Precise Electronic Devices Trading', NULL, 1, 10, N'5', CAST(N'2012-04-03T11:23:01.3966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 710, N'Translation (English)', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:29:45.6033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 711, N'Translation (French)', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:30:03.9033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 712, N'Translation (Spanish)', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:30:21.1466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 713, N'Translation (Russian)', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:30:56.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 714, N'Litigation', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:31:31.7100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 715, N'Construction', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:31:54.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 716, N'Real Estate', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:32:11.6133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 717, N'Finance', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:32:30.9166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 718, N'Taxation', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:32:46.6233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 719, N'M&A', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:33:37.5766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 720, N'Mining', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:34:54.2566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 721, N'Energy', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:35:04.7833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 722, N'Private Equity', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:35:37.4900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 723, N'First National Bank (SA)', NULL, 1, 1, N'5', CAST(N'2012-04-24T13:25:14.1333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 724, N'Vacant', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:16:04.2400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 725, N'Other', NULL, 1, 11, N'5', CAST(N'2012-05-07T12:16:36.8500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 726, N'Mortgage Cont.', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:16:56.8666667' AS DateTime2), N'5', CAST(N'2012-05-07T12:27:30.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 727, N'POA', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:17:09.7000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 728, N'Site Plan', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:17:24.4433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 729, N'Title Deed', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:17:34.9366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 730, N'SPA', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:17:52.5100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 731, N'Lease Cont.', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:18:23.5566667' AS DateTime2), N'5', CAST(N'2012-05-07T12:27:21.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 732, N'Certificate', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:18:50.9666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 733, N'Investment Cont.', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:20:28.4400000' AS DateTime2), N'5', CAST(N'2012-05-07T12:27:08.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 734, N'Letter', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:26:45.8733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 735, N'Sub-Tenant', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:29:04.7866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 736, N'Mina Zayed', NULL, 1, 1, N'5', CAST(N'2012-05-07T12:33:06.8266667' AS DateTime2), N'5', CAST(N'2012-05-07T12:33:51.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 737, N'Khalifa Park', NULL, 1, 1, N'5', CAST(N'2012-05-07T12:34:15.8966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 738, N'Al Reef Area', NULL, 1, 1, N'5', CAST(N'2012-05-07T12:34:45.7133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 739, N'Search Certificate', NULL, 1, 10, N'5', CAST(N'2012-05-10T11:00:55.5766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 740, N'Thailand', NULL, 1, 2, N'5', CAST(N'2012-06-12T15:03:43.4966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 741, N'Thailand', NULL, 1, 10, N'5', CAST(N'2012-06-12T15:04:22.1200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 742, N'Thailand', NULL, 1, 10, N'5', CAST(N'2012-06-12T15:05:23.3000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 743, N'Industrial Enterprises Investment, Institution & Managnt', NULL, 1, 10, N'5', CAST(N'2012-06-28T09:46:04.8133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 744, N'Crtf. Economy DB System', NULL, 1, 11, N'5', CAST(N'2012-08-08T14:01:21.2766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 745, N'Croatia', NULL, 1, 10, N'5', CAST(N'2012-09-26T17:11:12.8266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 746, N'Croatia', NULL, 1, 2, N'5', CAST(N'2012-09-26T17:11:35.4933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 747, N'Croatia', NULL, 1, 10, N'5', CAST(N'2012-09-26T17:22:37.1833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 748, N'Dental Clinic', NULL, 1, 10, N'5', CAST(N'2012-10-01T10:51:56.2166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 749, N'Sports Enterprises Investment, Institution & Management', NULL, 1, 10, N'5', CAST(N'2012-10-08T13:32:05.6833333' AS DateTime2), N'5', CAST(N'2012-10-08T05:46:32.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 750, N'Sports Services & Contarcting', NULL, 1, 10, N'5', CAST(N'2012-10-08T13:32:22.6533333' AS DateTime2), N'5', CAST(N'2012-10-08T05:46:41.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 751, N'Men Health Club', NULL, 1, 10, N'5', CAST(N'2012-10-08T13:32:43.6200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 752, N'Buildings General Maintenance', NULL, 1, 10, N'5', CAST(N'2012-10-08T13:33:04.7633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 753, N'Wholesale of Fodder Trading', NULL, 1, 10, N'5', CAST(N'2012-10-08T13:33:21.9033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 754, N'Administrative Consultancy & Studies', NULL, 1, 10, N'5', CAST(N'2012-10-08T13:33:41.6666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 755, N'Consultancy and Studies and Researches in Economics', NULL, 1, 10, N'5', CAST(N'2012-10-08T13:34:00.3366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 756, N'Foundation Excavation And Props Installation', NULL, 1, 10, N'5', CAST(N'2012-10-15T15:38:16.8500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 757, N'Ports Contacting', NULL, 1, 10, N'5', CAST(N'2012-10-15T15:38:34.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 758, N'Forestation Contracting', NULL, 1, 10, N'5', CAST(N'2012-10-15T15:38:52.3966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 759, N'Irrigation Network Contracting', NULL, 1, 10, N'5', CAST(N'2012-10-15T15:39:06.7033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 760, N'Entertainment Enterprises Investment, Institution & Management', NULL, 1, 10, N'5', CAST(N'2012-10-15T15:39:36.0566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 761, N'Eritrean', NULL, 1, 2, N'5', CAST(N'2012-11-06T14:39:39.4100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 762, N'Eritrea', NULL, 1, 10, N'5', CAST(N'2012-11-06T14:40:41.9466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 763, N'Eritrea', NULL, 1, 10, N'5', CAST(N'2012-11-06T14:41:16.3866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 764, N'Sudan', NULL, 1, 10, N'5', CAST(N'2012-11-06T14:41:28.9866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 765, N'Jordan', NULL, 1, 10, N'5', CAST(N'2012-11-06T14:41:38.1266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 766, N'USA', NULL, 1, 10, N'5', CAST(N'2012-11-06T14:41:51.8966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 767, N'Crtf. Industrial Production', NULL, 1, 11, N'5', CAST(N'2012-12-16T10:10:24.6033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 768, N'Pets Accommodating and Bringing Up', NULL, 1, 10, N'5', CAST(N'2013-01-17T16:53:51.3633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 769, N'Real Estate Development Construction', NULL, 1, 10, N'5', CAST(N'2013-01-17T16:54:46.2000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 770, N'Land & Real Estate Purchase & Sale', NULL, 1, 10, N'5', CAST(N'2013-01-17T16:55:29.4766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 771, N'Supervisory Board Member', NULL, 1, 1, N'5', CAST(N'2013-02-03T16:19:00.6366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 772, N'SCR', NULL, 1, 2, N'5', CAST(N'2013-02-04T11:11:41.3100000' AS DateTime2), N'5', CAST(N'2013-02-04T11:16:43.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 773, N'Seychelles', NULL, 1, 10, N'5', CAST(N'2013-02-04T11:17:20.9433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 774, N'Netherlands', NULL, 1, 10, N'5', CAST(N'2013-02-04T11:19:19.0400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 775, N'Al Ajban', NULL, 1, 1, N'5', CAST(N'2013-02-07T15:41:08.7500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 776, N'Abu Dhabi City', NULL, 1, 1, N'5', CAST(N'2013-02-07T15:44:03.2766667' AS DateTime2), N'5', CAST(N'2013-02-07T03:45:04.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 777, N'Mohd BZ City', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:11:22.4266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 778, N'Officers City', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:13:48.2833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 779, N'Rawdat Al Reef', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:14:11.9600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 780, N'Shahama', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:15:19.6666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 781, N'Western Region', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:15:44.7200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 782, N'Zayed Military City', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:16:06.0033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 783, N'Al Jimi', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:16:29.8200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 784, N'Hili', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:16:56.5266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 785, N'Al Saad', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:17:27.9966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 786, N'Jebel Hafeet', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:17:47.7100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 787, N'Al Salamat', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:18:08.2300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 788, N'Al Safouh First', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:18:38.6766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 789, N'Jebel Ali', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:19:05.6633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 790, N'Jumeirah Village 2nd', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:19:37.9966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 791, N'Mirdif', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:20:00.2866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 792, N'Montenegro', NULL, 1, 10, N'5', CAST(N'2013-02-25T09:28:14.5566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 793, N'Montenegro', NULL, 1, 2, N'5', CAST(N'2013-02-25T09:28:37.9466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 794, N'Al Hayar', NULL, 1, 1, N'5', CAST(N'2013-02-27T17:57:57.5000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 795, N'Bada Bint Saood', NULL, 1, 1, N'5', CAST(N'2013-03-04T09:04:24.4266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 796, N'Business Bay', NULL, 1, 1, N'5', CAST(N'2013-03-04T09:04:49.8533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 797, N'Habhab', NULL, 1, 1, N'5', CAST(N'2013-03-04T09:05:08.3566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 798, N'Libya', NULL, 1, 10, N'5', CAST(N'2013-03-05T12:09:52.1400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 799, N'Kazakistan', NULL, 1, 10, N'5', CAST(N'2013-03-05T12:10:33.7266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 800, N'Comores Isld.', NULL, 1, 10, N'5', CAST(N'2013-03-05T12:11:06.5700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 801, N'Tripoli', 193, 1, 10, N'5', CAST(N'2013-03-05T12:12:03.9400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 802, N'Damascus', 193, 1, 10, N'5', CAST(N'2013-03-05T12:12:45.9800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 803, N'Harhoura', 193, 1, 10, N'5', CAST(N'2013-03-05T12:13:21.4200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 804, N'Rabat', 193, 1, 10, N'5', CAST(N'2013-03-05T12:13:49.6200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 805, N'East Park', NULL, 1, 10, N'5', CAST(N'2013-03-05T12:15:37.7200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 806, N'Skhirat', NULL, 1, 10, N'5', CAST(N'2013-03-05T12:16:30.8266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 807, N'Mahe', 193, 1, 10, N'5', CAST(N'2013-03-05T12:28:05.0833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 808, N'Takamaka', NULL, 1, 10, N'5', CAST(N'2013-03-05T12:28:50.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 809, N'Recruitment Services', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:20:20.9500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 810, N'Upon Request Employees Provision Services', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:20:37.2633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 811, N'Clothes Ironing', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:20:52.5066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 812, N'Clothes Washing', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:21:10.3300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 813, N'The Interior Cleaning Services for Buildings', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:21:27.5666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 814, N'Cleaning the outside (Interface) Buildings', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:22:15.3666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 815, N'Hotels Establishment', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:22:33.6400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 816, N'Restaurant- Second Category', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:22:51.2000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 817, N'Entertainment Parties & Occasions Contracting', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:23:30.2633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 818, N'Arabian Coffee Catering', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:23:46.2500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 819, N'Shymkent', 193, 1, 10, N'5', CAST(N'2013-03-06T10:33:44.3600000' AS DateTime2), N'5', CAST(N'2013-03-06T10:36:24.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 820, N'Abai District', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:37:00.4700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 821, N'Washington State', 193, 1, 10, N'5', CAST(N'2013-03-07T11:45:09.0333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 822, N'Bellevue', NULL, 1, 10, N'5', CAST(N'2013-03-07T11:45:40.5366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 823, N'Anjouan Isld', 193, 1, 10, N'5', CAST(N'2013-03-10T11:57:32.7166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 824, N'Ndzouani', NULL, 1, 10, N'5', CAST(N'2013-03-10T11:58:40.3200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 825, N'Cold & Hot Beverages', NULL, 1, 10, N'5', CAST(N'2013-03-11T17:18:23.0833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 826, N'Restaurant- First Category', NULL, 1, 10, N'5', CAST(N'2013-03-11T17:18:56.8933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 827, N'Human Resources Consultancy', NULL, 1, 10, N'5', CAST(N'2013-03-11T17:19:20.2700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 828, N'Psychiatric & Neurological Clinic', NULL, 1, 10, N'5', CAST(N'2013-03-11T17:19:46.0633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 829, N'Infrastructure Enterprises Investment, Institution & Management', NULL, 1, 10, N'5', CAST(N'2013-03-11T17:20:20.4600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 830, N'Mazatlan', 193, 1, 10, N'5', CAST(N'2013-03-14T17:46:24.4666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 831, N'Sinaloa', NULL, 1, 10, N'5', CAST(N'2013-03-14T17:46:57.9666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 832, N'Khalifa City CD', NULL, 1, 1, N'5', CAST(N'2013-06-12T13:05:59.0733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 833, N'Somalia', NULL, 1, 2, N'5', CAST(N'2013-07-10T13:24:17.5900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 834, N'Netherlands', NULL, 1, 2, N'5', CAST(N'2013-07-10T13:25:17.0133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 835, N'Serbia', NULL, 1, 10, N'5', CAST(N'2013-07-22T12:54:11.0300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 836, N'Kopaonik', 193, 1, 10, N'5', CAST(N'2013-07-22T12:55:07.8433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 837, N'Serbia', 978, 1, 10, N'5', CAST(N'2013-07-23T10:50:41.2533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 838, N'Belarus', NULL, 1, 10, N'5', CAST(N'2013-08-11T12:21:18.3766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 839, N'Belarus', NULL, 1, 2, N'5', CAST(N'2013-08-11T12:22:57.7966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 840, N'Minsk', 193, 1, 10, N'5', CAST(N'2013-08-11T12:24:34.7966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 841, N'Minsk', NULL, 1, 10, N'5', CAST(N'2013-08-11T12:26:01.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 842, N'Full-Service', NULL, 1, 1, N'5', CAST(N'2013-09-26T16:34:11.2566667' AS DateTime2), N'5', CAST(N'2013-09-26T04:42:47.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 843, N'Accountant', NULL, 1, 10, N'5', CAST(N'2013-09-26T16:36:22.0700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 844, N'Chechniya', NULL, 1, 10, N'5', CAST(N'2013-10-02T09:42:15.3600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 845, N'Chechniya', 978, 1, 10, N'5', CAST(N'2013-10-02T09:43:29.6966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 846, N'Grozny', 193, 1, 10, N'5', CAST(N'2013-10-02T09:44:51.9533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 847, N'Leninskiy District', NULL, 1, 10, N'5', CAST(N'2013-10-02T09:46:59.4600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 848, N'Belarus', 978, 1, 10, N'5', CAST(N'2013-12-04T10:33:21.2833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 849, N'Dominican Rep.', NULL, 1, 10, N'5', CAST(N'2013-12-22T09:38:58.1566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 850, N'POA', NULL, 1, 11, N'5', CAST(N'2014-05-14T09:28:23.1133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 851, N'Greece', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:01:07.1133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 852, N'Spain', NULL, 1, 2, N'5', CAST(N'2014-11-25T11:02:08.0033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 853, N'Retail Sale of Tiles & Grounds', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:03:52.4000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 854, N'Retail Sale of Sanitary Ware & Fittings', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:04:16.4166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 855, N'Retail Sale of House Furniture & Cabinet Work', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:04:42.9733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 856, N'Retail Sale of Kitchens & Restaurants Equipment & Outfits', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:05:02.2366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 857, N'Sanitary Ware Trading', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:05:21.7700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 858, N'Tiles & Flooring Materials Trading', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:05:41.5000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 859, N'Home Furniture', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:06:00.9833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 860, N'Domestic Kitchen & Fixture Trading', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:06:22.3300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 861, N'Flat', NULL, 1, 10, N'5', CAST(N'2014-12-10T16:36:22.3600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 862, N'Wholesale of Computers & Outfit Trading', NULL, 1, 10, N'5', CAST(N'2015-02-22T15:11:36.0966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 863, N'Wholesale of Alarm & Monitor Devices & Equipment Trading', NULL, 1, 10, N'5', CAST(N'2015-02-22T15:11:59.9533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 864, N'Security & Surveillance Equipment & Apparatuses Installation', NULL, 1, 10, N'5', CAST(N'2015-02-22T15:12:23.0500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 865, N'Car Parking & Squares Management & Operation', NULL, 1, 10, N'5', CAST(N'2015-03-09T11:39:21.0233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 866, N'Management & Operation of Public Utilities', NULL, 1, 10, N'5', CAST(N'2015-03-09T11:39:43.7733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 867, N'Services Management Oversight to the Real Estate', NULL, 1, 10, N'5', CAST(N'2015-03-09T11:40:04.8933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 868, N'Industrial Facilities Cleaning Services', NULL, 1, 10, N'5', CAST(N'2015-03-09T11:40:38.9133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 869, N'Translator', NULL, 1, 10, N'5', CAST(N'2015-03-30T09:18:49.1000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 870, N'Hospitality', NULL, 1, 10, N'5', CAST(N'2015-03-30T09:26:14.0966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 871, N'IP', NULL, 1, 10, N'5', CAST(N'2015-03-30T09:26:29.9133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 872, N'Trust', NULL, 1, 10, N'5', CAST(N'2015-03-30T09:27:21.9033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 873, N'Corporate (Offshore)', NULL, 1, 10, N'5', CAST(N'2015-03-30T09:28:45.3033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 874, N'Corporate (Free Zones)', NULL, 1, 10, N'5', CAST(N'2015-03-30T09:29:06.3000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 875, N'Seattle', NULL, 1, 10, N'5', CAST(N'2015-06-29T14:16:35.6600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 876, N'Santa Marta', 193, 1, 10, N'5', CAST(N'2015-06-29T14:46:05.9600000' AS DateTime2), N'5', CAST(N'2015-06-29T03:43:46.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 877, N'Cartagena', 193, 1, 10, N'5', CAST(N'2015-06-29T14:46:40.5633333' AS DateTime2), N'5', CAST(N'2015-06-29T03:44:19.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 878, N'Begotta', 193, 1, 10, N'5', CAST(N'2015-06-29T14:47:08.2633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 879, N'Serbia', NULL, 1, 2, N'5', CAST(N'2015-08-17T09:42:05.6466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 880, N'Retail Sale of Artificial & Dried Flowers & Plants', NULL, 1, 10, N'5', CAST(N'2015-08-26T16:54:17.4500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 881, N'Retail Sale of Natural Flowers & Plants', NULL, 1, 10, N'5', CAST(N'2015-08-26T16:54:36.7033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 882, N'Retail Sale of Gifts', NULL, 1, 10, N'5', CAST(N'2015-08-26T16:55:01.1000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 883, N'Romania', NULL, 1, 2, N'5', CAST(N'2015-10-05T10:26:57.7533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 884, N'Romania', NULL, 1, 10, N'5', CAST(N'2015-10-05T10:27:33.2666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 885, N'Russia', NULL, 1, 10, N'5', CAST(N'2015-10-05T10:28:14.7566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 886, N'Lebanon', NULL, 1, 10, N'5', CAST(N'2015-10-05T10:28:46.0300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 887, N'Iraq', NULL, 1, 10, N'5', CAST(N'2015-10-05T10:29:01.7566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 888, N'Bahrain', NULL, 1, 10, N'5', CAST(N'2015-10-05T10:30:14.7566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 889, N'POA', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:48:56.8666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 890, N'Lease', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:49:10.5366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 891, N'Resolution, Board', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:49:41.8433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 892, N'Resolution, GA', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:50:02.4900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 893, N'Other', NULL, 1, 11, N'5', CAST(N'2015-10-26T11:50:26.3133333' AS DateTime2), N'5', CAST(N'2015-10-26T11:51:14.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 894, N'Mortgage Agrnt', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:51:02.0800000' AS DateTime2), N'5', CAST(N'2015-10-26T11:51:37.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 895, N'MOA', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:53:21.2000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 896, N'MOA, Addendum', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:53:54.4966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 897, N'Share Purchase', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:55:37.5766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 898, N'Certificate', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:55:56.1366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 899, N'Letter', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:56:16.2466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 900, N'Active', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:57:18.2133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 901, N'Expired', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:57:33.6666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 902, N'Amended', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:57:47.0600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 903, N'Real Estate Valuation', NULL, 1, 10, N'5', CAST(N'2015-12-01T09:26:22.8500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 904, N'CEO', NULL, 1, 1, N'5', CAST(N'2016-03-09T10:35:10.5100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 905, N'Mauritius', 978, 1, 10, N'5', CAST(N'2016-03-28T11:20:06.5500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 906, N'Namibia', NULL, 1, 10, N'5', CAST(N'2016-03-31T11:16:16.0800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 907, N'Pakistan', NULL, 1, 10, N'5', CAST(N'2016-03-31T11:16:29.8666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 908, N'Windhoek', 193, 1, 10, N'5', CAST(N'2016-03-31T11:17:27.3633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 909, N'Karachi', 193, 1, 10, N'5', CAST(N'2016-03-31T11:18:20.4133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 910, N'Automatic Call Distribution (Call Center)', NULL, 1, 10, N'5', CAST(N'2016-08-08T12:18:54.6500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 911, N'Building of Motor Boats', NULL, 1, 10, N'5', CAST(N'2016-08-08T12:19:19.4300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 912, N'Wholesale of Perfume Trading', NULL, 1, 10, N'5', CAST(N'2016-08-08T12:20:45.7400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 913, N'HRK', NULL, 1, 2, N'5', CAST(N'2016-08-30T15:10:39.4900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 914, N'Air Conditioning, Ventilation, Air Cooling Systems Maintenance, Installation-(First Category)', NULL, 1, 10, N'5', CAST(N'2016-08-30T15:13:12.7900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 915, N'Civil Works of Energy, Generation Construction Station-(First Category)', NULL, 1, 10, N'5', CAST(N'2016-08-30T15:13:51.4000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 916, N'Electricity Plant & Networks Operation & Maintenance, Power Distribution Networks & Stations Contracting-(First Category)', NULL, 1, 10, N'5', CAST(N'2016-08-30T15:15:10.0066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 917, N'Mechanical Construction-(First Category)', NULL, 1, 10, N'5', CAST(N'2016-08-30T15:16:05.8933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 918, N'Italy', NULL, 1, 10, N'5', CAST(N'2017-09-28T10:02:53.1033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 919, N'Sardinia Island', 193, 1, 10, N'5', CAST(N'2017-09-28T10:04:38.9166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 920, N'Olbia', NULL, 1, 10, N'5', CAST(N'2017-09-28T10:05:16.3933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 921, N'ADGM-RSC', NULL, 1, 10, N'5', CAST(N'2017-10-17T14:38:19.3100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 922, N'ADGM-LBS', NULL, 1, 10, N'5', CAST(N'2017-10-17T14:38:49.4100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 923, N'St. Kitts & Nevis', NULL, 1, 2, N'5', CAST(N'2017-10-23T09:52:25.6700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 924, N'France', NULL, 1, 2, N'5', CAST(N'2017-10-23T09:54:35.0166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 925, N'Panama', NULL, 1, 2, N'5', CAST(N'2017-10-23T09:56:04.3300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 926, N'Italy', NULL, 1, 2, N'5', CAST(N'2017-10-23T09:56:57.1266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 927, N'Algeria', NULL, 1, 10, N'5', CAST(N'2018-12-12T11:06:39.9200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 928, N'Algeria', NULL, 1, 2, N'5', CAST(N'2018-12-12T11:07:23.6700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 929, N'Algeria', NULL, 1, 10, N'5', CAST(N'2018-12-12T11:07:53.3466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 930, N'Certf. Incorporation', NULL, 1, 10, N'5', CAST(N'2020-09-23T09:21:01.8066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 931, N'Certf. Incumbency', NULL, 1, 10, N'5', CAST(N'2020-09-23T09:21:24.6166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 932, N'Free Zone LLC', NULL, 1, 10, N'5', CAST(N'2020-09-23T09:23:23.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 933, N'Free Zone Est.', NULL, 1, 10, N'5', CAST(N'2020-09-23T09:23:45.9400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 934, N'Crtf. Incorporation', NULL, 1, 11, N'5', CAST(N'2020-09-23T09:24:56.9066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 935, N'Crtf. Incumbency', NULL, 1, 11, N'5', CAST(N'2020-09-23T09:25:16.6966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 936, N'Special Purpose Vehicle', NULL, 1, 10, N'5', CAST(N'2020-09-23T09:33:11.4900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 937, N'Manufacture of Basic Precious and Other Non-Ferrous Metals', NULL, 1, 10, N'5', CAST(N'2020-09-23T09:35:32.1133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 938, N'Al Samaliyah Island', NULL, 1, 1, N'5', CAST(N'2021-10-11T10:49:10.3500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 939, N'Ethiopia', NULL, 1, 10, N'5', CAST(N'2022-02-11T11:41:41.5233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 940, N'Ethiopia', NULL, 1, 10, N'5', CAST(N'2022-02-11T11:42:19.7900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 941, N'Ethiopia', NULL, 1, 10, N'5', CAST(N'2022-02-11T11:43:06.1900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 942, N'Ethiopia', 978, 1, 10, N'5', CAST(N'2022-02-11T11:48:31.9666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 943, N'Switzerland', 978, 1, 10, N'5', CAST(N'2022-02-11T11:54:02.2633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 944, N'Italy', 978, 1, 10, N'5', CAST(N'2022-02-11T11:54:44.5400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 945, N'Greece', 978, 1, 10, N'5', CAST(N'2022-02-11T12:03:16.1266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 946, N'Cyprus', 978, 1, 10, N'5', CAST(N'2022-02-11T12:03:52.6633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 947, N'Azerbaijan', 978, 1, 10, N'5', CAST(N'2022-02-11T12:09:35.4500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 948, N'Russia', 978, 1, 10, N'5', CAST(N'2022-02-11T12:10:12.8433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 949, N'Al Jarf (Hizam Al Ghabat)', NULL, 1, 1, N'5', CAST(N'2023-02-16T14:57:26.9400000' AS DateTime2), N'5', CAST(N'2023-02-16T02:58:04.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 950, N'CHF', NULL, 1, 2, N'5', CAST(N'2023-02-24T10:53:31.0933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 951, N'COP', NULL, 1, 2, N'5', CAST(N'2023-02-24T10:55:03.7966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 952, N'Pakistan', 978, 1, 10, N'5', CAST(N'2023-03-13T12:42:06.9900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 953, N'Al Saadiyat', NULL, 1, 1, N'5', CAST(N'2023-03-27T15:12:41.6166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 954, N'Kazakhstan', NULL, 1, 2, N'5', CAST(N'2023-06-13T11:39:00.9700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 955, N'KZT', NULL, 1, 2, N'5', CAST(N'2023-06-13T12:25:28.0466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 956, N'Tax', NULL, 1, 12, N'5', CAST(N'2023-06-26T12:22:50.6033333' AS DateTime2), N'5', CAST(N'2023-06-26T12:26:27.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 957, N'VAT', NULL, 1, 12, N'5', CAST(N'2023-06-26T12:26:44.9300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 958, N'Tax', NULL, 1, 12, N'5', CAST(N'2023-06-26T12:32:50.0666667' AS DateTime2), N'5', CAST(N'2023-06-26T12:34:50.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 959, N'First Abu Dhabi Bank FAB', NULL, 1, 1, N'5', CAST(N'2025-05-16T17:34:21.2466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 960, N'Dubai Islamic Bank DIB', NULL, 1, 1, N'5', CAST(N'2025-05-16T17:34:51.1533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 961, N'New', NULL, 0, 10, N'3', CAST(N'2009-07-16T12:17:16.8733333' AS DateTime2), N'3', CAST(N'2009-07-16T04:45:09.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 962, N'Active', NULL, 1, 20, N'3', CAST(N'2009-07-16T12:17:27.5133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 963, N'Closed', NULL, 1, 30, N'3', CAST(N'2009-07-16T12:17:42.9200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 964, N'Dubai', NULL, 1, 10, N'3', CAST(N'2009-07-16T14:10:32.6533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 965, N'Abu Dhabi', NULL, 1, 10, N'3', CAST(N'2009-07-16T14:10:47.4500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 966, N'Dubai', 193, 1, 1, N'3', CAST(N'2009-07-16T17:32:45.9666667' AS DateTime2), N'5', CAST(N'2009-08-06T05:44:25.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 967, N'Abu Dhabi', 193, 1, 1, N'3', CAST(N'2009-07-16T17:33:30.7933333' AS DateTime2), N'5', CAST(N'2009-08-06T05:43:13.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 968, N'London', 193, 1, 10, N'3', CAST(N'2009-07-16T17:35:50.8733333' AS DateTime2), N'5', CAST(N'2009-11-19T05:04:26.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 969, N'Cairo', 193, 1, 10, N'3', CAST(N'2009-07-16T17:39:40.0433333' AS DateTime2), N'5', CAST(N'2009-11-19T05:04:47.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 970, N'Main', 292, 1, 1, N'3', CAST(N'2009-07-16T00:00:00.0000000' AS DateTime2), N'5', CAST(N'2011-01-17T09:37:24.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 971, N'Subsidiary', NULL, 0, 2, N'3', CAST(N'2009-07-16T19:03:51.8733333' AS DateTime2), N'3', CAST(N'2009-07-18T05:51:26.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 972, N'Investment', NULL, 0, 3, N'3', CAST(N'2009-07-16T00:00:00.0000000' AS DateTime2), N'3', CAST(N'2009-07-18T05:51:31.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 973, N'Managed by RG', NULL, 0, 4, N'3', CAST(N'2009-07-16T00:00:00.0000000' AS DateTime2), N'3', CAST(N'2009-07-18T05:51:36.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 974, N'Partner', NULL, 1, 1, N'3', CAST(N'2009-07-16T00:00:00.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 975, N'Others', NULL, 1, 2, N'3', CAST(N'2009-07-16T00:00:00.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 976, N'Public JSC', NULL, 1, 10, N'3', CAST(N'2009-07-16T19:41:15.8566667' AS DateTime2), N'3', CAST(N'2009-07-18T05:52:00.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 977, N'Private JSC', NULL, 1, 10, N'3', CAST(N'2009-07-16T19:42:34.8400000' AS DateTime2), N'3', CAST(N'2009-07-18T05:52:09.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 978, N'Local(UAE)', NULL, 1, 1, N'3', CAST(N'2009-07-16T19:56:51.0300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 979, N'GCC', NULL, 1, 2, N'3', CAST(N'2009-07-16T19:57:21.3566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 980, N'Arab Country', NULL, 1, 3, N'3', CAST(N'2009-07-16T19:58:05.3400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 981, N'International', NULL, 1, 4, N'3', CAST(N'2009-07-16T19:59:47.8566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 982, N'Abu Dhabi', 978, 1, 1, N'3', CAST(N'2009-07-16T20:02:59.8266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 983, N'Dubai', 978, 1, 2, N'3', CAST(N'2009-07-16T20:04:11.0900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 984, N'Sharjah', 978, 1, 3, N'3', CAST(N'2009-07-16T20:04:56.1533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 985, N'Ajman', 978, 1, 4, N'3', CAST(N'2009-07-16T20:06:22.5600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 986, N'Al Fujairah', 978, 1, 5, N'3', CAST(N'2009-07-16T20:07:21.7333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 987, N'Umm AlQuain', 978, 1, 6, N'3', CAST(N'2009-07-16T20:08:16.6066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 988, N'RAK', NULL, 1, 6, N'3', CAST(N'2009-07-16T20:08:56.0433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 989, N'Shk Zayed Rd', NULL, 1, 1, N'3', CAST(N'2009-07-16T20:41:23.9500000' AS DateTime2), N'5', CAST(N'2009-08-06T08:18:56.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 990, N'Jumairah Palm', NULL, 1, 1, N'3', CAST(N'2009-07-16T20:42:39.8900000' AS DateTime2), N'5', CAST(N'2010-04-13T09:07:34.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 991, N'Al Nehyan Camp', NULL, 1, 1, N'3', CAST(N'2009-07-16T20:43:28.9500000' AS DateTime2), N'5', CAST(N'2009-08-06T08:09:23.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 992, N'Managing Partner', NULL, 1, 10, N'3', CAST(N'2009-07-16T22:17:20.0133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 993, N'Partner', NULL, 1, 10, N'3', CAST(N'2009-07-16T22:17:28.0433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 994, N'Senior Councel', NULL, 1, 10, N'3', CAST(N'2009-07-16T22:17:36.0433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 995, N'Junior Councel', NULL, 1, 10, N'3', CAST(N'2009-07-16T22:17:45.7000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 996, N'Associate', NULL, 1, 10, N'3', CAST(N'2009-07-16T22:17:57.6233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 997, N'LD Staff', NULL, 1, 10, N'3', CAST(N'2009-07-18T12:11:26.6066667' AS DateTime2), N'3', CAST(N'2009-07-20T11:18:09.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 998, N'Passport (Current)', NULL, 1, 1, N'3', CAST(N'2009-07-18T13:22:04.4033333' AS DateTime2), N'5', CAST(N'2009-08-09T03:47:47.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 999, N'Passport (Old)', NULL, 1, 10, N'3', CAST(N'2009-07-18T13:22:13.9033333' AS DateTime2), N'5', CAST(N'2009-08-09T03:48:10.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1000, N'Personal ID', NULL, 1, 10, N'3', CAST(N'2009-07-18T13:22:24.0900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1001, N'KQ ID (????? ???)', NULL, 1, 10, N'3', CAST(N'2009-07-18T13:22:36.2633333' AS DateTime2), N'5', CAST(N'2009-08-09T03:45:48.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1002, N'UAE', NULL, 1, 1, N'3', CAST(N'2009-07-18T13:23:05.4500000' AS DateTime2), N'5', CAST(N'2009-08-06T05:10:29.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1003, N'KSA', NULL, 1, 2, N'3', CAST(N'2009-07-18T13:23:16.1533333' AS DateTime2), N'5', CAST(N'2009-08-06T05:12:15.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1004, N'UK', NULL, 1, 2, N'3', CAST(N'2009-07-18T13:23:24.4200000' AS DateTime2), N'5', CAST(N'2009-08-06T05:12:31.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1005, N'Egypt', NULL, 1, 2, N'3', CAST(N'2009-07-18T13:23:30.6233333' AS DateTime2), N'5', CAST(N'2009-08-06T05:11:57.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1006, N'Mobile', NULL, 1, 1, N'3', CAST(N'2009-07-18T15:20:17.2000000' AS DateTime2), N'5', CAST(N'2010-07-07T12:44:12.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1007, N'Home (UAE)', NULL, 1, 2, N'3', CAST(N'2009-07-18T15:20:23.5766667' AS DateTime2), N'5', CAST(N'2010-07-07T12:42:40.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1008, N'Fax', NULL, 1, 10, N'3', CAST(N'2009-07-18T15:20:30.0433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1009, N'Work', NULL, 1, 10, N'3', CAST(N'2009-07-18T15:20:39.8566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1010, N'Lic. Commercial/??????', NULL, 1, 10, N'3', CAST(N'2009-07-18T00:00:00.0000000' AS DateTime2), N'5', CAST(N'2011-01-24T12:43:21.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1011, N'Lic. Industrial/??????', NULL, 1, 10, N'3', CAST(N'2009-07-18T00:00:00.0000000' AS DateTime2), N'5', CAST(N'2011-01-24T12:43:31.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1012, N'Lic. Information/???????', NULL, 1, 10, N'3', CAST(N'2009-07-18T00:00:00.0000000' AS DateTime2), N'5', CAST(N'2011-01-24T12:43:42.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1013, N'Lic. Professional/?????', NULL, 1, 10, N'3', CAST(N'2009-07-18T00:00:00.0000000' AS DateTime2), N'5', CAST(N'2011-01-24T12:43:52.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1014, N'Lic. Workshop/????', NULL, 1, 10, N'3', CAST(N'2009-07-18T00:00:00.0000000' AS DateTime2), N'5', CAST(N'2011-01-24T12:44:09.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1015, N'Other', NULL, 1, 20, N'3', CAST(N'2009-07-18T00:00:00.0000000' AS DateTime2), N'5', CAST(N'2010-07-08T04:57:14.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1016, N'UAE', NULL, 1, 10, N'3', CAST(N'2009-07-18T16:10:24.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1017, N'KSA', NULL, 1, 10, N'3', CAST(N'2009-07-18T16:10:30.7166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1018, N'Active', NULL, 1, 10, N'3', CAST(N'2009-07-18T17:52:46.1533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1019, N'Expired', NULL, 1, 10, N'3', CAST(N'2009-07-18T17:52:54.7000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1020, N'Stationery Trading', NULL, 1, 10, N'3', CAST(N'2009-07-18T20:42:43.3400000' AS DateTime2), N'5', CAST(N'2010-07-08T04:50:33.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1021, N'Publishing of Books & Scholatic Textbooks & Other', NULL, 1, 10, N'3', CAST(N'2009-07-18T20:43:10.7500000' AS DateTime2), N'5', CAST(N'2010-07-08T04:50:11.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1022, N'Land', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:48:03.8266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1023, N'Villa', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:48:30.1533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1024, N'Building', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:48:56.3566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1025, N'Outlet/ShowRoom', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:49:28.0133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1026, N'Warehouse', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:49:52.7166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1027, N'Other', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:50:23.1866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1028, N'Residential', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:50:58.2800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1029, N'Commercial', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:51:32.8733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1030, N'Industral', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:52:09.0766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1031, N'Mix-use', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:53:12.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1032, N'Private', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:53:30.1400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1033, N'Other', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:53:49.1700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1034, N'Developed', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:54:18.7500000' AS DateTime2), N'5', CAST(N'2012-05-07T12:15:09.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1035, N'Leased', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:54:45.5133333' AS DateTime2), N'5', CAST(N'2012-05-07T12:14:20.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1036, N'Mortgaged', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:55:12.0900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1037, N'Reserved', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:55:42.3566667' AS DateTime2), N'5', CAST(N'2012-05-07T12:15:44.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1038, N'Transferrd', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:56:13.1233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1039, N'Divided', NULL, 1, 10, N'3', CAST(N'2009-07-18T21:56:37.7166667' AS DateTime2), N'5', CAST(N'2012-05-07T12:15:24.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1040, N'Freehold', NULL, 1, 10, N'3', CAST(N'2009-07-19T16:48:44.4366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1041, N'Grant', NULL, 1, 10, N'3', CAST(N'2009-07-19T16:49:01.4033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1042, N'Leasehold', NULL, 1, 10, N'3', CAST(N'2009-07-19T16:49:20.9200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1043, N'Intifaa/Usafruct', NULL, 1, 10, N'3', CAST(N'2009-07-19T16:49:48.1066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1044, N'Musataha', NULL, 1, 10, N'3', CAST(N'2009-07-19T16:50:13.3100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1045, N'other', NULL, 1, 10, N'3', CAST(N'2009-07-19T16:50:31.6400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1046, N'Corporate', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:19:44.7633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1047, N'Contract', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:19:58.7800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1048, N'Dispute', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:20:07.8266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1049, N'Opinion', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:20:17.3400000' AS DateTime2), N'3', CAST(N'2009-07-19T06:20:34.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1050, N'Incorporation', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:20:42.4833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1051, N'Acquisition (Shares)', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:20:55.7000000' AS DateTime2), N'5', CAST(N'2009-08-13T07:58:10.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1052, N'Investment, Local', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:21:10.2933333' AS DateTime2), N'5', CAST(N'2010-09-16T09:12:36.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1053, N'Letter', NULL, 1, 10, N'3', CAST(N'2009-07-19T19:21:19.4200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1054, N'Other', NULL, 1, 100, N'3', CAST(N'2009-07-19T19:21:30.1400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1055, N'New', NULL, 1, 10, N'3', CAST(N'2009-07-19T22:18:34.0600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1056, N'Closed', NULL, 1, 100, N'3', CAST(N'2009-07-19T22:18:41.2000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1057, N'Pending', NULL, 1, 20, N'3', CAST(N'2009-07-19T22:18:48.6233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1058, N'LM', NULL, 1, 10, N'3', CAST(N'2009-07-20T15:12:06.7800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1059, N'Cr', NULL, 1, 10, N'3', CAST(N'2009-07-20T15:12:44.3733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1060, N'Driving Lic. (UAE)', NULL, 1, 10, N'3', CAST(N'2009-07-26T19:32:51.8700000' AS DateTime2), N'5', CAST(N'2009-08-09T03:46:45.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1061, N'Labour Card', NULL, 1, 10, N'3', CAST(N'2009-07-26T19:33:10.5400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1062, N'E Signature', NULL, 1, 10, N'3', CAST(N'2009-07-26T19:33:25.9833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1063, N'Other', NULL, 1, 20, N'3', CAST(N'2009-07-26T19:33:38.4266667' AS DateTime2), N'5', CAST(N'2009-08-09T03:43:16.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1064, N'Fujairah', 193, 1, 1, N'3', CAST(N'2009-07-26T19:36:46.9300000' AS DateTime2), N'5', CAST(N'2009-08-06T05:44:50.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1065, N'Ras al-Khaimah', 193, 1, 1, N'3', CAST(N'2009-07-26T19:37:35.0200000' AS DateTime2), N'5', CAST(N'2009-08-06T05:45:01.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1066, N'KSA', 978, 1, 10, N'3', CAST(N'2009-07-26T19:40:19.7666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1067, N'Kuwait', 978, 1, 10, N'3', CAST(N'2009-07-26T19:40:43.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1068, N'Bahrain', 978, 1, 10, N'3', CAST(N'2009-07-26T19:44:31.6666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1069, N'Qatar', 978, 1, 10, N'3', CAST(N'2009-07-26T19:44:56.3133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1070, N'Oman', 978, 1, 10, N'3', CAST(N'2009-07-26T19:45:30.4200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1071, N'Algeria', 978, 1, 10, N'3', CAST(N'2009-07-26T19:45:59.9366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1072, N'Egypt', 978, 1, 10, N'3', CAST(N'2009-07-26T19:46:48.8466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1073, N'Iraq', 978, 1, 10, N'3', CAST(N'2009-07-26T19:47:34.3066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1074, N'Jordan', 978, 1, 10, N'3', CAST(N'2009-07-26T19:48:09.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1075, N'Libya', 978, 1, 10, N'3', CAST(N'2009-07-26T19:49:50.9500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1076, N'Lebanon', 978, 1, 10, N'3', CAST(N'2009-07-26T19:50:14.3366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1077, N'Mauretania', 978, 1, 10, N'3', CAST(N'2009-07-26T19:50:53.3900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1078, N'Morocco', 978, 1, 10, N'3', CAST(N'2009-07-26T19:51:19.6833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1079, N'Palestine', 978, 1, 10, N'3', CAST(N'2009-07-26T19:52:05.6433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1080, N'Sudan', 978, 1, 10, N'3', CAST(N'2009-07-26T19:52:34.6566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1081, N'Syria', 978, 1, 10, N'3', CAST(N'2009-07-26T19:52:59.0433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1082, N'Tunisia', 978, 1, 10, N'3', CAST(N'2009-07-26T19:53:19.2100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1083, N'Yemen', 978, 1, 10, N'3', CAST(N'2009-07-26T19:53:42.2400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1084, N'USA', 978, 1, 10, N'3', CAST(N'2009-07-26T19:55:09.6966667' AS DateTime2), N'5', CAST(N'2011-01-23T05:21:51.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1085, N'Kazakhstan', 978, 1, 10, N'3', CAST(N'2009-07-26T19:55:30.3766667' AS DateTime2), N'5', CAST(N'2011-01-23T05:22:35.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1086, N'South Africa', 978, 1, 10, N'3', CAST(N'2009-07-26T19:55:54.2400000' AS DateTime2), N'5', CAST(N'2011-01-23T05:23:05.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1087, N'France', 978, 1, 10, N'3', CAST(N'2009-07-26T19:57:00.0900000' AS DateTime2), N'5', CAST(N'2011-01-23T05:23:40.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1088, N'LLC', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:00:02.1466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1089, N'Partnership', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:00:20.8200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1090, N'Establishment', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:00:42.3266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1091, N'Corporation', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:01:02.4966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1092, N'Branch', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:01:20.7200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1093, N'Other', NULL, 1, 20, N'3', CAST(N'2009-07-26T20:01:31.8133333' AS DateTime2), N'5', CAST(N'2009-11-18T12:11:42.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1094, N'Egypt', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:34:17.7433333' AS DateTime2), N'5', CAST(N'2010-07-13T10:39:58.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1095, N'UAE', NULL, 1, 1, N'3', CAST(N'2009-07-26T20:35:14.6100000' AS DateTime2), N'5', CAST(N'2009-08-05T03:08:42.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1096, N'United Kingdom', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:35:56.3600000' AS DateTime2), N'5', CAST(N'2010-07-13T10:36:52.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1097, N'United States', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:36:11.4366667' AS DateTime2), N'5', CAST(N'2010-07-13T10:39:47.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1098, N'Junior Associate', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:42:10.4600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1099, N'Para Legal', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:42:43.9300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1100, N'Clerk', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:42:56.1366667' AS DateTime2), N'3', CAST(N'2009-07-26T08:43:02.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1101, N'Secretary', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:43:24.6266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1102, N'Acquisition Finance', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:45:37.7466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1103, N'Alternative Dispute Resolution (ADR)', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:55:22.5500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1104, N'Arbitration', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:56:01.1066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1105, N'Asset Finance', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:56:15.9300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1106, N'Aviation', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:56:28.9400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1107, N'Banking', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:56:41.3033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1108, N'Business Ethics and Anti-Corruption', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:56:59.4100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1109, N'Climate Change', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:57:16.9333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1110, N'Communications', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:57:34.0066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1111, N'Media & Technology', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:57:53.0533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1112, N'Competition', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:58:07.2333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1113, N'Regulatory and EU', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:58:21.8066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1114, N'Corporate Finance', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:58:42.7400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1115, N'Corporate', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:58:56.4233333' AS DateTime2), N'5', CAST(N'2013-09-26T04:33:36.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1116, N'Corporate Restructuring & Insolvency', NULL, 1, 10, N'3', CAST(N'2009-07-26T20:59:09.8766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1117, N'Owner', NULL, 1, 10, N'3', CAST(N'2009-08-02T22:44:34.0300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1118, N'Tenant', NULL, 1, 10, N'3', CAST(N'2009-08-02T22:44:42.5600000' AS DateTime2), N'5', CAST(N'2012-05-07T12:28:15.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1119, N'Passport', NULL, 1, 10, N'3', CAST(N'2009-08-03T09:30:39.8433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1120, N'License', NULL, 1, 10, N'3', CAST(N'2009-08-03T09:30:47.5833333' AS DateTime2), N'5', CAST(N'2010-08-08T01:02:19.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1121, N'IN', NULL, 1, 10, N'3', CAST(N'2009-08-03T11:35:46.1300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1122, N'OUT', NULL, 1, 20, N'3', CAST(N'2009-08-03T11:35:51.2366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1123, N'AED', NULL, 1, 1, N'5', CAST(N'2009-08-05T03:04:54.7200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1124, N'USD', NULL, 1, 2, N'5', CAST(N'2009-08-05T03:05:53.9900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1125, N'Sharjah', 193, 1, 1, N'5', CAST(N'2009-08-05T03:06:56.5033333' AS DateTime2), N'5', CAST(N'2009-08-06T05:44:36.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1126, N'Sudan', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:11:43.4600000' AS DateTime2), N'5', CAST(N'2009-08-06T05:15:47.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1127, N'Jordan', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:15:28.4700000' AS DateTime2), N'5', CAST(N'2009-08-06T05:15:40.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1128, N'Philippine', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:16:08.6133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1129, N'India', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:16:32.0233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1130, N'Pakistan', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:16:52.3966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1131, N'Lebanon', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:17:13.6800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1132, N'USA', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:17:32.2400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1133, N'Australia', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:18:04.0366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1134, N'Malaysia', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:19:27.7133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1135, N'Palestine', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:20:58.3900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1136, N'Morocco', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:21:51.6800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1137, N'Syria', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:22:27.5866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1138, N'Iraq', NULL, 1, 2, N'5', CAST(N'2009-08-06T05:22:47.9500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1139, N'Ajman', 193, 1, 1, N'5', CAST(N'2009-08-06T05:45:34.4100000' AS DateTime2), N'5', CAST(N'2009-08-06T05:46:20.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1140, N'Al Reef Palace', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:10:06.7566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1141, N'Al Mafraq Indus.', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:11:01.9533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1142, N'Reem Island', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:11:36.6333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1143, N'Khalifa City A', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:12:27.0866667' AS DateTime2), N'5', CAST(N'2013-02-07T03:45:23.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1144, N'Khalifa City B', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:12:51.2800000' AS DateTime2), N'5', CAST(N'2013-02-07T03:45:38.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1145, N'Musaffah Indus.', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:13:27.6100000' AS DateTime2), N'5', CAST(N'2010-04-13T09:02:18.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1146, N'Al Ain', 193, 1, 1, N'5', CAST(N'2009-08-06T08:14:29.3633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1147, N'Al Murkhaniah', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:15:11.0733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1148, N'Al Khaznah', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:15:36.9000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1149, N'Bain Algesrain', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:16:21.6500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1150, N'Asharaj', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:17:13.9000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1151, N'Al Maqam', NULL, 1, 1, N'5', CAST(N'2009-08-06T08:17:38.9933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1152, N'Insurance Card', NULL, 1, 10, N'5', CAST(N'2009-08-09T03:43:47.7000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1153, N'Visa (Work)', NULL, 1, 10, N'5', CAST(N'2009-08-09T03:44:09.7200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1154, N'Visa (Temporary)', NULL, 1, 10, N'5', CAST(N'2009-08-09T03:44:33.8100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1155, N'Visa (Visit)', NULL, 1, 10, N'5', CAST(N'2009-08-09T03:44:57.8533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1156, N'Driving Lic. (Int''l)', NULL, 1, 10, N'5', CAST(N'2009-08-09T03:47:15.0200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1157, N'Canada', NULL, 1, 2, N'5', CAST(N'2009-08-12T13:03:47.1666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1158, N'Brazil', NULL, 1, 2, N'5', CAST(N'2009-08-12T13:05:08.4033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1159, N'Colombia', NULL, 1, 2, N'5', CAST(N'2009-08-12T13:05:30.6900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1160, N'Mexico', NULL, 1, 2, N'5', CAST(N'2009-08-12T13:05:54.7933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1161, N'Tunis', NULL, 1, 2, N'5', CAST(N'2009-08-12T13:06:28.5900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1162, N'Libya', NULL, 1, 2, N'5', CAST(N'2009-08-12T13:07:04.0100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1163, N'South Africa', NULL, 1, 2, N'5', CAST(N'2009-08-12T14:09:50.9500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1164, N'Visa (Res)', NULL, 1, 10, N'5', CAST(N'2009-08-13T09:24:39.3600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1165, N'MOU', NULL, 1, 10, N'5', CAST(N'2009-08-13T16:56:28.1066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1166, N'JV', NULL, 1, 10, N'5', CAST(N'2009-08-13T16:57:26.2500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1167, N'Property', NULL, 1, 10, N'5', CAST(N'2009-08-13T16:58:39.1600000' AS DateTime2), N'5', CAST(N'2010-09-16T09:14:16.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1168, N'NDA', NULL, 1, 10, N'5', CAST(N'2009-08-13T16:58:51.7800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1169, N'Admin (LD)', NULL, 1, 10, N'5', CAST(N'2009-08-24T10:50:44.4866667' AS DateTime2), N'5', CAST(N'2009-08-24T01:51:22.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1170, N'Offshore', NULL, 1, 10, N'5', CAST(N'2009-11-18T12:11:23.0700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1171, N'BVI', 978, 1, 10, N'5', CAST(N'2009-11-19T09:17:59.6300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1172, N'Cayman', 978, 1, 10, N'5', CAST(N'2009-11-19T09:18:31.0900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1173, N'LLC (Under Incorpn.)', NULL, 1, 10, N'5', CAST(N'2009-11-19T15:44:27.9666667' AS DateTime2), N'5', CAST(N'2009-11-19T03:45:07.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1174, N'Mexico', NULL, 1, 10, N'5', CAST(N'2009-11-19T16:55:21.4066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1175, N'Mexico', 193, 1, 10, N'5', CAST(N'2009-11-19T16:57:01.7033333' AS DateTime2), N'5', CAST(N'2012-01-04T03:06:13.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1176, N'Group Company', NULL, 1, 10, N'5', CAST(N'2009-12-08T23:26:56.9533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1177, N'Non-Group Company', NULL, 1, 20, N'5', CAST(N'2009-12-08T23:27:21.4766667' AS DateTime2), N'5', CAST(N'2009-12-09T11:01:26.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1178, N'Fully Owned', 292, 1, 10, N'5', CAST(N'2009-12-08T23:29:23.9400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1179, N'Partially Owned', 292, 1, 10, N'5', CAST(N'2009-12-08T23:31:22.6166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1180, N'Partner', 292, 1, 15, N'5', CAST(N'2009-12-08T23:49:15.4100000' AS DateTime2), N'5', CAST(N'2009-12-09T11:02:45.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1181, N'Investment', 292, 1, 15, N'5', CAST(N'2009-12-08T23:49:53.6266667' AS DateTime2), N'5', CAST(N'2009-12-09T11:02:17.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1182, N'Other', 292, 1, 20, N'5', CAST(N'2009-12-08T23:53:45.8766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1183, N'Investment & Partner', 292, 1, 15, N'5', CAST(N'2009-12-09T01:00:02.6533333' AS DateTime2), N'5', CAST(N'2009-12-09T11:02:29.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1184, N'MOA', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:05:31.5066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1185, N'Contract', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:05:47.9866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1186, N'MOA Addendum', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:06:02.6833333' AS DateTime2), N'5', CAST(N'2010-08-08T01:00:29.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1187, N'Chamber Certificate', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:06:38.8833333' AS DateTime2), N'5', CAST(N'2009-12-14T09:11:28.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1188, N'Certificate', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:07:04.1133333' AS DateTime2), N'5', CAST(N'2010-10-17T11:11:31.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1189, N'Seal', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:08:13.7300000' AS DateTime2), N'5', CAST(N'2010-08-08T01:01:19.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1190, N'Lease', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:08:32.8933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1191, N'Cash', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:08:48.7033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1192, N'Other', NULL, 1, 20, N'5', CAST(N'2009-12-13T23:09:02.0800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1193, N'Site Plan', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:09:31.5400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1194, N'Title Deed', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:10:16.4733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1195, N'Letter', NULL, 1, 10, N'5', CAST(N'2009-12-13T23:18:01.1000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1196, N'POA (Personal)', NULL, 1, 10, N'5', CAST(N'2009-12-14T02:58:43.6000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1197, N'POA (Company)', NULL, 1, 10, N'5', CAST(N'2009-12-14T02:59:00.0066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1198, N'Other', NULL, 1, 20, N'5', CAST(N'2009-12-14T02:59:22.6233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1199, N'Title Deed', NULL, 1, 10, N'5', CAST(N'2009-12-14T02:59:43.1100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1200, N'Signature Specimen', NULL, 1, 10, N'5', CAST(N'2009-12-14T03:00:31.0866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1201, N'Employment Contract', NULL, 1, 10, N'5', CAST(N'2009-12-14T03:00:50.8000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1202, N'Contract', NULL, 1, 10, N'5', CAST(N'2009-12-14T03:01:06.4533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1203, N'Certificate', NULL, 1, 10, N'5', CAST(N'2009-12-14T03:01:33.2266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1204, N'Declaration', NULL, 1, 10, N'5', CAST(N'2009-12-14T03:02:25.9400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1205, N'Photo', NULL, 1, 10, N'5', CAST(N'2009-12-14T03:03:23.1500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1206, N'Letter', NULL, 1, 10, N'5', CAST(N'2009-12-14T03:04:10.7000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1207, N'Branch of Foreign Co', NULL, 1, 10, N'5', CAST(N'2010-01-05T05:05:19.4000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1208, N'Local Agency', NULL, 1, 10, N'5', CAST(N'2010-01-05T05:05:49.8366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1209, N'Sponsorship', 292, 1, 15, N'5', CAST(N'2010-01-10T04:59:11.3100000' AS DateTime2), N'5', CAST(N'2010-01-10T02:59:39.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1210, N'POA', NULL, 1, 10, N'5', CAST(N'2010-02-14T03:14:29.3966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1211, N'Home (Country)', NULL, 1, 20, N'5', CAST(N'2010-03-03T03:33:23.5033333' AS DateTime2), N'5', CAST(N'2010-07-07T12:44:48.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1212, N'Share Assignment Cnt', NULL, 1, 10, N'5', CAST(N'2010-04-05T12:50:58.0966667' AS DateTime2), N'5', CAST(N'2010-08-08T01:01:40.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1213, N'Al Barsha', NULL, 1, 1, N'5', CAST(N'2010-04-13T09:04:28.8166667' AS DateTime2), N'5', CAST(N'2012-05-07T12:36:30.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1214, N'Al Dhaidh', NULL, 1, 1, N'5', CAST(N'2010-04-13T09:06:59.7900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1215, N'Sehaijan', NULL, 1, 1, N'5', CAST(N'2010-04-13T09:07:23.7566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1216, N'Utility Bill', NULL, 1, 11, N'5', CAST(N'2010-06-30T15:23:52.6233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1217, N'Bahrain', NULL, 1, 2, N'5', CAST(N'2010-07-07T11:21:11.2666667' AS DateTime2), N'5', CAST(N'2010-07-07T11:21:28.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1218, N'Qatar', NULL, 1, 2, N'5', CAST(N'2010-07-07T11:22:44.1866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1219, N'Kuwait', NULL, 1, 2, N'5', CAST(N'2010-07-07T11:22:59.6533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1220, N'Mobile (Country)', NULL, 1, 20, N'5', CAST(N'2010-07-07T12:40:54.5633333' AS DateTime2), N'5', CAST(N'2010-07-07T12:44:00.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1221, N'Back Up (Country)', NULL, 1, 20, N'5', CAST(N'2010-07-07T12:41:47.5466667' AS DateTime2), N'5', CAST(N'2010-07-07T12:42:53.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1222, N'Back Up (UAE)', NULL, 1, 15, N'5', CAST(N'2010-07-07T12:42:03.0633333' AS DateTime2), N'5', CAST(N'2010-07-07T12:44:35.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1223, N'Share Certificate', NULL, 1, 10, N'5', CAST(N'2010-07-07T14:49:47.4933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1224, N'Share Certificate', NULL, 1, 10, N'5', CAST(N'2010-07-07T14:50:56.8366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1225, N'Printing of Books & Scholastic Textbooks', NULL, 1, 10, N'5', CAST(N'2010-07-08T16:51:42.9100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1226, N'Printing of Advertisements, Posters, Calendars, Pe', NULL, 1, 10, N'5', CAST(N'2010-07-08T16:53:17.5333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1227, N'Calculators, Surveying, Writing Machines...Trading', NULL, 1, 10, N'5', CAST(N'2010-07-08T16:55:02.9233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1228, N'Lic. Vocational/?????', NULL, 1, 10, N'5', CAST(N'2010-07-08T16:56:20.7500000' AS DateTime2), N'5', CAST(N'2011-01-24T12:44:01.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1229, N'Germany', NULL, 1, 2, N'5', CAST(N'2010-07-13T10:35:30.5966667' AS DateTime2), N'5', CAST(N'2010-07-13T10:35:44.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1230, N'Spain', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:36:17.7533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1231, N'Germany', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:36:30.5333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1232, N'Australia', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:39:27.9433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1233, N'Cayman Islands', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:40:29.7533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1234, N'Sudan', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:40:52.2333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1235, N'Syria', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:41:05.9433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1236, N'BVI', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:41:15.3533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1237, N'Oman', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:41:24.8266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1238, N'Qatar', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:41:34.3600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1239, N'KSA', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:42:06.8966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1240, N'Morocco', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:43:28.2033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1241, N'Panama', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:43:43.3800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1242, N'South Africa', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:43:58.2266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1243, N'Colombia', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:44:13.0566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1244, N'Brazil', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:44:34.5433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1245, N'Argentine', NULL, 1, 10, N'5', CAST(N'2010-07-13T10:44:50.9200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1246, N'Declaration', NULL, 1, 10, N'5', CAST(N'2010-07-15T09:22:40.3466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1247, N'Resolution, Board', NULL, 1, 10, N'5', CAST(N'2010-07-27T10:40:19.4333333' AS DateTime2), N'5', CAST(N'2010-08-08T12:59:11.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1248, N'Resolution, Shareholders/GA', NULL, 1, 10, N'5', CAST(N'2010-07-27T10:41:01.4200000' AS DateTime2), N'5', CAST(N'2010-08-08T12:59:31.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1249, N'Register', NULL, 1, 10, N'5', CAST(N'2010-08-08T13:09:45.3633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1250, N'Investment', NULL, 1, 1, N'5', CAST(N'2010-08-26T12:25:02.7866667' AS DateTime2), N'5', CAST(N'2010-09-12T11:29:08.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1251, N'Manufacturing', NULL, 1, 1, N'5', CAST(N'2010-08-26T12:25:20.5066667' AS DateTime2), N'5', CAST(N'2010-09-12T11:29:14.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1252, N'Trading', NULL, 1, 1, N'5', CAST(N'2010-08-26T12:25:32.1933333' AS DateTime2), N'5', CAST(N'2010-09-12T11:29:30.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1253, N'Contracting', NULL, 1, 1, N'5', CAST(N'2010-08-26T12:25:47.4600000' AS DateTime2), N'5', CAST(N'2010-09-12T11:29:00.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1254, N'Real Estate', NULL, 1, 1, N'5', CAST(N'2010-08-26T12:26:12.3000000' AS DateTime2), N'5', CAST(N'2010-09-12T11:29:20.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1255, N'Other', NULL, 1, 2, N'5', CAST(N'2010-08-26T12:26:29.8800000' AS DateTime2), N'5', CAST(N'2010-09-12T11:29:40.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1256, N'Services', NULL, 1, 1, N'5', CAST(N'2010-08-26T12:26:48.8333333' AS DateTime2), N'5', CAST(N'2010-09-12T11:29:25.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1257, N'BHD', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:15:43.2766667' AS DateTime2), N'5', CAST(N'2010-09-08T12:15:55.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1258, N'SAR', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:16:37.8066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1259, N'EUR', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:16:53.7466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1260, N'SDP', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:17:27.1033333' AS DateTime2), N'5', CAST(N'2012-02-01T05:33:56.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1261, N'OMR', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:17:58.8833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1262, N'KWD', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:18:39.6966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1263, N'GBP', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:19:18.9933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1264, N'EGP', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:20:11.3033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1265, N'SYP', NULL, 1, 2, N'5', CAST(N'2010-09-08T12:22:39.0500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1266, N'Marketing,Statistics Purchases Economy Consultancy', NULL, 1, 10, N'5', CAST(N'2010-09-12T11:31:17.6766667' AS DateTime2), N'5', CAST(N'2010-09-12T11:32:38.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1267, N'Management & Leasing of Real Estate', NULL, 1, 10, N'5', CAST(N'2010-09-12T11:42:21.1166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1268, N'Private Companies & Establishments Management', NULL, 1, 10, N'5', CAST(N'2010-09-12T11:42:50.5233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1269, N'Commercial Projects Investment', NULL, 1, 10, N'5', CAST(N'2010-09-12T11:43:18.8333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1270, N'Invst., Establishing & Managing Industl Projects', NULL, 1, 10, N'5', CAST(N'2010-09-12T11:44:26.6300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1271, N'Real Estate Projects Investment', NULL, 1, 10, N'5', CAST(N'2010-09-12T11:44:49.3333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1272, N'Investment, Global', NULL, 1, 10, N'5', CAST(N'2010-09-16T09:12:55.5333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1273, N'POA', NULL, 1, 10, N'5', CAST(N'2010-09-16T11:48:09.3866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1274, N'Developing Real Estate', NULL, 1, 10, N'5', CAST(N'2010-09-16T14:54:44.4633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1275, N'Crtf. Commercial Agency', NULL, 1, 11, N'5', CAST(N'2010-09-29T16:22:25.6066667' AS DateTime2), N'5', CAST(N'2011-01-24T12:45:13.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1276, N'Crtf. Trade Mark Rg.', NULL, 1, 11, N'5', CAST(N'2010-09-29T16:22:38.4500000' AS DateTime2), N'5', CAST(N'2011-01-24T12:45:45.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1277, N'Lic. Health/????', NULL, 1, 10, N'5', CAST(N'2010-10-07T15:20:40.2866667' AS DateTime2), N'5', CAST(N'2011-01-24T12:43:12.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1278, N'Al Ain', 978, 1, 1, N'5', CAST(N'2010-11-30T14:22:35.9566667' AS DateTime2), N'5', CAST(N'2010-11-30T02:22:59.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1279, N'Card', NULL, 1, 10, N'5', CAST(N'2010-11-30T17:46:25.7100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1280, N'Chairman', NULL, 1, 1, N'5', CAST(N'2010-12-07T09:50:31.0766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1281, N'Vice Chairman', NULL, 1, 2, N'5', CAST(N'2010-12-07T09:50:45.6200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1282, N'Member, MD', NULL, 1, 3, N'5', CAST(N'2010-12-07T09:51:05.5000000' AS DateTime2), N'5', CAST(N'2010-12-29T06:10:26.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1283, N'Member', NULL, 1, 4, N'5', CAST(N'2010-12-07T09:51:20.4766667' AS DateTime2), N'5', CAST(N'2010-12-29T06:10:45.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1284, N'Advisor', NULL, 1, 5, N'5', CAST(N'2010-12-07T09:51:49.6766667' AS DateTime2), N'5', CAST(N'2010-12-29T06:10:53.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1285, N'Secretary', NULL, 1, 6, N'5', CAST(N'2010-12-07T09:52:34.5900000' AS DateTime2), N'5', CAST(N'2010-12-29T06:10:58.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1286, N'Crtf. Registration/Incorpn', NULL, 1, 11, N'5', CAST(N'2010-12-13T12:29:51.4366667' AS DateTime2), N'5', CAST(N'2011-01-24T12:47:49.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1287, N'Greece', NULL, 1, 2, N'5', CAST(N'2010-12-19T11:35:51.6133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1288, N'Malaysia', NULL, 1, 10, N'5', CAST(N'2010-12-27T17:51:37.6100000' AS DateTime2), N'5', CAST(N'2010-12-27T05:53:52.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1289, N'Malaysia', 978, 1, 10, N'5', CAST(N'2010-12-27T17:55:13.6800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1290, N'Crtf. Classification', NULL, 1, 11, N'5', CAST(N'2011-01-03T09:45:28.6433333' AS DateTime2), N'5', CAST(N'2011-01-24T12:44:56.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1291, N'Crtf. Civil Defense', NULL, 1, 11, N'5', CAST(N'2011-01-05T11:12:08.3466667' AS DateTime2), N'5', CAST(N'2011-01-24T12:44:29.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1292, N'Chairman', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:27:29.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1293, N'Vice Chairman', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:27:49.6833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1294, N'General Manager', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:29:52.6000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1295, N'Manager', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:30:01.8166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1296, N'PRO', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:30:11.5066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1297, N'Board Member', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:30:30.3966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1298, N'Board Secretary', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:30:44.1666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1299, N'Board Advisor', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:30:57.1700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1300, N'Corporate Supervisor', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:31:38.7000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1301, N'Group MD', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:31:51.7666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1302, N'MD', NULL, 1, 1, N'5', CAST(N'2011-01-11T17:32:01.8300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1303, N'Authorized Signatory', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:19:53.4400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1304, N'CFO', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:20:42.6200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1305, N'Legal Advisor', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:21:07.8933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1306, N'Director', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:21:27.7766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1307, N'Senior Staff', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:21:59.1366667' AS DateTime2), N'5', CAST(N'2011-01-11T06:22:52.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1308, N'First Gulf Bank', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:23:15.4833333' AS DateTime2), N'5', CAST(N'2011-01-11T06:24:42.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1309, N'AD Commercial Bank', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:24:14.5966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1310, N'National Bank of AD', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:25:01.8800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1311, N'Mashreq Bank', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:25:15.5833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1312, N'Union National Bank', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:25:29.5600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1313, N'United Arab Bank', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:26:03.4466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1314, N'Department Head', NULL, 1, 1, N'5', CAST(N'2011-01-11T18:30:12.2400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1315, N'Managed by RG', 292, 1, 15, N'5', CAST(N'2011-01-17T09:47:03.7733333' AS DateTime2), N'5', CAST(N'2011-01-17T09:47:23.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1316, N'Singly', NULL, 1, 10, N'5', CAST(N'2011-01-17T17:15:18.0200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1317, N'Jointly', NULL, 1, 10, N'5', CAST(N'2011-01-17T17:15:29.0766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1318, N'Other', NULL, 1, 20, N'5', CAST(N'2011-01-17T17:15:44.0500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1319, N'Turkey', NULL, 1, 2, N'5', CAST(N'2011-01-23T16:52:14.9733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1320, N'Argentine', NULL, 1, 2, N'5', CAST(N'2011-01-23T16:54:00.0666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1321, N'China', NULL, 1, 2, N'5', CAST(N'2011-01-23T16:55:59.1133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1322, N'Brazil', 978, 1, 10, N'5', CAST(N'2011-01-23T17:21:15.6433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1323, N'Spain', 978, 1, 10, N'5', CAST(N'2011-01-23T17:24:06.8700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1324, N'China', 978, 1, 10, N'5', CAST(N'2011-01-23T17:36:53.3400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1325, N'Croatia', 978, 1, 10, N'5', CAST(N'2011-01-23T17:42:45.7100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1326, N'Montenegro', 978, 1, 10, N'5', CAST(N'2011-01-23T17:43:21.3100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1327, N'Seychelles', 978, 1, 10, N'5', CAST(N'2011-01-23T17:44:08.9700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1328, N'Panama', 978, 1, 10, N'5', CAST(N'2011-01-23T17:44:38.9600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1329, N'Colombia', 978, 1, 10, N'5', CAST(N'2011-01-23T17:44:59.9933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1330, N'Netherlands', 978, 1, 10, N'5', CAST(N'2011-01-23T17:45:19.5000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1331, N'Australia', 978, 1, 10, N'5', CAST(N'2011-01-23T17:45:45.6900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1332, N'Argentine', 978, 1, 10, N'5', CAST(N'2011-01-23T17:46:12.4100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1333, N'Mexico', 978, 1, 10, N'5', CAST(N'2011-01-23T17:46:55.4166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1334, N'Bahamas', 978, 1, 10, N'5', CAST(N'2011-01-23T17:47:55.6266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1335, N'UK', 978, 1, 10, N'5', CAST(N'2011-01-23T17:49:14.9033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1336, N'Crtf. Shares', NULL, 1, 11, N'5', CAST(N'2011-01-24T12:46:44.8366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1337, N'Philippines', 978, 1, 10, N'5', CAST(N'2011-01-26T13:26:34.8700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1338, N'Singapore', 978, 1, 10, N'5', CAST(N'2011-02-22T11:34:52.2600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1339, N'Utility Bill', NULL, 1, 10, N'5', CAST(N'2011-02-23T13:10:22.3500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1340, N'Oman', NULL, 1, 2, N'5', CAST(N'2011-03-13T11:43:04.2766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1341, N'ADX', NULL, 1, 1, N'5', CAST(N'2011-03-27T14:38:57.5566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1342, N'DFM', NULL, 1, 1, N'5', CAST(N'2011-03-27T14:42:22.5800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1343, N'Committee Member', NULL, 1, 1, N'5', CAST(N'2011-04-14T17:19:32.9233333' AS DateTime2), N'5', CAST(N'2011-04-14T05:19:42.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1344, N'Lic. Tourism/??????', NULL, 1, 10, N'5', CAST(N'2011-06-08T12:45:33.2066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1345, N'Deputy GM', NULL, 1, 1, N'5', CAST(N'2011-07-06T12:03:10.1333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1346, N'Crtf. Nadafa NOC', NULL, 1, 11, N'5', CAST(N'2011-09-26T09:44:29.1100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1347, N'Lic. Environment/?????', NULL, 1, 10, N'5', CAST(N'2011-09-26T09:45:25.0533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1348, N'LYD', NULL, 1, 2, N'5', CAST(N'2012-01-02T15:00:19.3266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1349, N'Egypt', NULL, 1, 10, N'5', CAST(N'2012-01-04T15:49:47.5833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1350, N'Sweden', NULL, 1, 2, N'5', CAST(N'2012-01-05T10:08:21.0433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1351, N'Crd. Immigration', NULL, 1, 11, N'5', CAST(N'2012-01-09T12:16:48.8500000' AS DateTime2), N'5', CAST(N'2012-01-09T12:17:50.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1352, N'Crd. Labour', NULL, 1, 11, N'5', CAST(N'2012-01-09T12:17:38.4866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1353, N'Health', NULL, 1, 1, N'5', CAST(N'2012-01-11T12:38:17.6833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1354, N'Education', NULL, 1, 1, N'5', CAST(N'2012-01-11T12:38:30.7400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1355, N'Hospitality', NULL, 1, 1, N'5', CAST(N'2012-01-11T12:39:30.4666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1356, N'Kitchen Equipment and Outfit Trading', NULL, 1, 10, N'5', CAST(N'2012-01-12T12:48:39.0133333' AS DateTime2), N'5', CAST(N'2012-01-12T12:50:59.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1357, N'Import', NULL, 1, 10, N'5', CAST(N'2012-01-12T12:48:49.5766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1358, N'Export', NULL, 1, 10, N'5', CAST(N'2012-01-12T12:48:59.6300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1359, N'Readymade Food Catering Contracts (Meal Prepara', NULL, 1, 10, N'5', CAST(N'2012-01-12T12:49:29.9400000' AS DateTime2), N'5', CAST(N'2012-01-12T12:51:08.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1360, N'Fast Food Restaurant and Catering Services', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:13:01.9300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1361, N'Veterinary Clinic', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:13:34.5400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1362, N'Wooden Doors and Windows', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:13:53.5166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1363, N'Fireproof Doors Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:14:13.1800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1364, N'Home Furniture Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:14:34.2200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1365, N'Office Furniture Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:14:55.7966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1366, N'On Shore & Off Shore Oil and Gas Fields and Facili', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:15:19.1333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1367, N'Trading of Canned and Conserved Foodstuff', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:15:36.6100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1368, N'Fresh Foodstuff Trading', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:15:55.5400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1369, N'Selling New Passenger Cars', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:16:15.4566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1370, N'Selling New Buses', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:16:36.0366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1371, N'Trucks and Trailer Vehicles', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:16:52.9166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1372, N'Commercial Agencies', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:17:10.8033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1373, N'Professional Wear Trading', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:17:29.1600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1374, N'Commercial Enterprises Inv., Institution & Managnt', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:17:48.0700000' AS DateTime2), N'5', CAST(N'2012-01-12T05:21:11.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1375, N'Trading of Marine Machines & Equipment', NULL, 1, 10, N'5', CAST(N'2012-01-12T17:21:45.1700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1376, N'E-Guide and Building E-Complexes', NULL, 1, 10, N'5', CAST(N'2012-01-16T17:45:21.1733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1377, N'Fast Food Restaurant', NULL, 1, 10, N'5', CAST(N'2012-01-16T17:45:36.7400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1378, N'Communication & Wireless System; Equipment Install', NULL, 1, 10, N'5', CAST(N'2012-01-16T17:45:54.0533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1379, N'Restaurant Management', NULL, 1, 10, N'5', CAST(N'2012-01-16T17:46:16.4966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1380, N'Catering Services', NULL, 1, 10, N'5', CAST(N'2012-01-16T17:46:40.1600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1381, N'Internet Café’s (access to internet services)', NULL, 1, 10, N'5', CAST(N'2012-01-16T17:46:59.3233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1382, N'Installing & Repairing Cooling System & A/C Contracting Works 4th Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:28:21.0500000' AS DateTime2), N'5', CAST(N'2012-01-19T03:03:38.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1383, N'Ships & Boats Trading', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:33:18.1433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1384, N'Labor Camp Management', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:33:38.7533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1385, N'Real Estate Lease & Management Services', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:33:57.4000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1386, N'Soil Testing Services', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:34:16.9866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1387, N'Building Materials Lab', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:34:35.9666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1388, N'General Maintenance For Buildings', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:34:55.5166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1389, N'Bridges & Tunnels Contracting', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:35:15.1000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1390, N'General Contracting of Civil Constructions', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:35:34.5900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1391, N'Electromechanical Works Projects Contracting', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:35:59.8033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1392, N'Sub Water Networks Contracting Works 4th Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:36:57.7333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1393, N'Installing, Extending & Repairing Alarm Systems', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:37:30.9300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1394, N'Rain Water Drainage Contracting 3rd Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T09:37:58.1800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1395, N'Russia', NULL, 1, 2, N'5', CAST(N'2012-01-19T11:52:46.6033333' AS DateTime2), N'5', CAST(N'2017-10-23T09:53:58.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1396, N'Trading of Marine Means of Transport & Spare Parts', NULL, 1, 10, N'5', CAST(N'2012-01-19T11:54:20.6466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1397, N'Main Water Networks Contracting Works 4th Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T11:54:54.9633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1398, N'Main Sewage Networks Contracting Works 4th Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T11:55:16.1400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1399, N'Communications Networks Contracting Works 5th Grad', NULL, 1, 10, N'5', CAST(N'2012-01-19T11:56:16.2500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1400, N'Factories Equipments, Machines & Spare Parts Tradg', NULL, 1, 10, N'5', CAST(N'2012-01-19T11:57:07.9366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1401, N'Maintenance & Repair of Heavy Lifting & Handling Equipments', NULL, 1, 10, N'5', CAST(N'2012-01-19T14:58:08.8800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1402, N'Maintenance & Repair of Light Lifting & Handling Equipments', NULL, 1, 10, N'5', CAST(N'2012-01-19T14:58:28.0966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1403, N'Power Transmitting & Distribution Networks Contracting Work 4th Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T14:59:22.0733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1404, N'Main Roads & Streets Contracting & Related Works Thereof 3rd Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T14:59:41.2366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1405, N'Sub Sewage Networks/Homes Connections Contracting. 4th Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T15:00:05.2400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1406, N'Civil Works for Water Purification Stations Fourth Grade', NULL, 1, 10, N'5', CAST(N'2012-01-19T15:00:22.6933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1407, N'Towing & Transporting Broken Down Cars (Without Repairs)', NULL, 1, 10, N'5', CAST(N'2012-01-19T15:00:42.7700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1408, N'Private Money Investment', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:34:01.3000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1409, N'Computer & Data Processing Requisites Trading', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:34:35.7733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1410, N'Electronic Apparatuses & Equipments Repairing', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:35:00.7733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1411, N'On Shore & Off Shore Oil & Gas Fields Services', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:35:32.0466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1412, N'Computer Trading', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:35:48.6400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1413, N'Ready Software Trading', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:36:06.1833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1414, N'Land Freight Services For Goods', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:36:21.3700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1415, N'Air Freight Services For Goods', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:36:36.3266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1416, N'Marine Freight Services for Goods', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:36:51.7466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1417, N'Trading of Marine Machines and Equipment', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:37:09.9900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1418, N'Trade in Military Uniform', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:37:24.1966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1419, N'Organizing & Conducting Tourist Trips', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:37:46.0733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1420, N'Travel Tickets Sales Office', NULL, 1, 10, N'5', CAST(N'2012-01-22T11:38:03.4333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1421, N'Agricultural Enterprises Investment, Institution & Management', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:23:43.0600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1422, N'Cleaning Building & Houses', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:24:07.7133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1423, N'Real Estate Enterprises Investment, Development, Institution & Management', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:24:26.0266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1424, N'Buying, Selling & Dividing Plots & Real Estates', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:24:46.7066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1425, N'IT Consulting', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:25:05.0900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1426, N'Periodicals & Commercial Magazines Publication', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:25:25.6100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1427, N'Aquarium Fish & Accessory Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:25:50.7700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1428, N'Fodder Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:26:08.1233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1429, N'Dive Gear Equipment Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:27:51.7166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1430, N'Television Programs & Series Production', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:28:09.1266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1431, N'Deluxe Hotel Apartments', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:28:25.4933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1432, N'Constructing & Maintaining Parks & Landscape Design & Planning Activities', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:28:46.2233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1433, N'Irrigation Networks Contracting 3rd Grade', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:29:12.4233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1434, N'Afforestation Contracting 3rd Grade', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:30:32.6100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1435, N'Leveling Sites', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:31:00.4566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1436, N'Main Sewage Networks Contracting Works', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:31:29.2466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1437, N'Consultancy & Studies on Feasibility', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:31:46.9900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1438, N'Water Desalination Equipments & Machinery & Outfits Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:32:06.7066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1439, N'Trading of Pipes & Tubes', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:32:25.8500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1440, N'Air Conditioning & Refrigeration System Spare Parts Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:32:55.1766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1441, N'Pumps an Accessory Thereof Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:33:12.7633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1442, N'Trading of Security Systems Equipment', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:33:29.0066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1443, N'Trade of Lightning Equipment & Accessories', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:33:49.0700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1444, N'Pipe under Sea Level Installation & Repairing by Welding', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:34:09.2466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1445, N'Wall paper Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:35:16.8200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1446, N'Décor Materials & Partitions Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:35:41.0100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1447, N'The Implementation of the Work Interior Design ( Décor)', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:36:09.7633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1448, N'Restaurant – 3rd Grade', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:42:37.5100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1449, N'Cafeteria', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:45:56.1700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1450, N'Manual Bakery', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:46:38.7500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1451, N'Watches Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:47:00.1133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1452, N'Antiques Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:47:41.0266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1453, N'Precious Stones, Jewellery & Trinketry Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:48:09.1533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1454, N'Gifts Trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:48:25.1366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1455, N'Repairing Gold & Jewellery', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:48:43.4633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1456, N'Commercial Broker', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:49:30.8766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1457, N'Theme Park', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:49:47.0166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1458, N'TV Stations – Satellite Channels', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:50:05.6200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1459, N'All kinds of watches trading', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:50:22.2766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1460, N'Kitchen Cabinets & Fixtures Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-29T10:50:38.5466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1461, N'Seaports Contracting', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:13:00.6100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1462, N'General Transportation', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:13:18.2600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1463, N'Precast Building Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:13:38.4466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1464, N'Concrete Blocks Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:13:58.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1465, N'Interlock Tiles Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:14:17.2400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1466, N'Safety Glass Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:14:34.0133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1467, N'Reflective & Insulant Glass Production', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:16:43.0433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1468, N'Double Glass Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:20:05.8433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1469, N'Steel Structures Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:20:24.2133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1470, N'Establishment Management Services', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:20:41.3800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1471, N'Cinema Movies Shows', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:20:57.7733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1472, N'Construction Equipment & Machinery Trading', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:21:12.8166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1473, N'Handling, Loading & Lifting Equipment Trading', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:21:28.8766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1474, N'Lifts, Escalators & Spare Parts Trading', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:21:45.4100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1475, N'Pumps, Engines, Valves & Spare Parts Trading', NULL, 1, 10, N'5', CAST(N'2012-01-30T10:22:01.2700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1476, N'Data Formatting', NULL, 1, 10, N'5', CAST(N'2012-01-31T17:06:10.9333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1477, N'Data Collection From One or More Sources', NULL, 1, 10, N'5', CAST(N'2012-01-31T17:06:31.7233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1478, N'Storing & Retrieving Data', NULL, 1, 10, N'5', CAST(N'2012-01-31T17:06:53.8800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1479, N'Telecommunication Equipment Trading', NULL, 1, 10, N'5', CAST(N'2012-01-31T17:07:16.4266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1480, N'Computer System Housing Services', NULL, 1, 10, N'5', CAST(N'2012-01-31T17:07:33.0300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1481, N'Specialized Vehicles Workshops', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:16:02.5966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1482, N'Buses, Trucks & Trailer Vehicles Mechanics', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:17:02.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1483, N'Foundation Drilling & Piling Works', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:17:31.2633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1484, N'Administrative Consultancy', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:17:48.8500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1485, N'Commercial Information Services', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:18:03.9466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1486, N'General Trading', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:18:24.4066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1487, N'Radio Programs & Audio Recordings Production', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:18:42.1933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1488, N'Advertisement Design and Production', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:18:57.7066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1489, N'Advertising Signboards Requisites Trading', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:19:13.5333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1490, N'Publicity & Advertising', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:19:35.5233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1491, N'Media Consultant & Studies', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:19:55.9366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1492, N'Fixing Advertisement Boards', NULL, 1, 10, N'5', CAST(N'2012-02-09T12:20:12.7300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1493, N'Management & Operation of Hotel Apartments', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:31:04.3233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1494, N'Management & Operation of Hotels', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:31:19.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1495, N'Ready Mix Concrete Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:31:39.3466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1496, N'All Kinds of Building Projects Contracting', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:31:55.6066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1497, N'Medical Centre', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:32:15.7500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1498, N'Pharmacy', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:32:32.8500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1499, N'Constructional Project Management', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:32:47.9000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1500, N'Hunting, Shooting, Spreading of Wildlife Pasture Land Including related Services Activities', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:33:04.1566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1501, N'Fighting Plant Epidemics', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:33:20.2200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1502, N'Land Reclamation for Agricultural Purposes', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:33:38.3166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1503, N'Natural Plants & Flowers Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:33:56.5200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1504, N'Trade of Palm Trees & Seedling (Nakheel)', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:34:23.5300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1505, N'House Pesticides Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:34:40.9933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1506, N'Tourist Enterprises Investment, Institution & Management', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:35:04.7266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1507, N'Seeds and Grains Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:35:19.6400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1508, N'Chemical Fertilizers Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:35:33.6900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1509, N'Honey Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:35:50.7533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1510, N'Natural Fertilizers & Agricultural Reclamation Material Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:36:08.6133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1511, N'Trucks & Buses Spare Parts Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:36:38.3900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1512, N'Heavy Machines & Equipment Tyres Trading', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:40:04.6066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1513, N'Selling Used Passenger Cars', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:41:00.4066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1514, N'Selling Used Buses, Trucks & Trailers', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:41:22.8066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1515, N'Selling New Buses, Trucks & Trailer Vehicles', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:41:40.0933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1516, N'Selling New Heavy Equipment & Machinery', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:41:57.3933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1517, N'Selling Used Heavy Equipment & Machinery', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:42:12.6700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1518, N'Renting Lifting & Loading Machines & Equipments', NULL, 1, 10, N'5', CAST(N'2012-02-13T17:42:28.7866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1519, N'Hospital Management', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:01:00.2966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1520, N'Building Material Trading', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:01:14.8300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1521, N'Civil Works for Power Generation & Water Desalination Stations', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:01:34.0533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1522, N'Interior Design Engineering Consultancy', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:01:49.8966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1523, N'Funds & Securities Investment (Shares & Bonds)', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:02:08.5633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1524, N'Customer Clearance Services', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:02:27.4000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1525, N'Architectural Engineering Consultancy', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:02:41.2800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1526, N'Education Services Enterprises Investment, Institution & Management', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:02:58.3233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1527, N'Service Duct Connection Drilling', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:03:15.0933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1528, N'Real Estate Agent', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:03:30.3500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1529, N'Real Estate Escrow Agent', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:03:54.6100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1530, N'Establishment Cleaning', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:04:40.0200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1531, N'Valet Parking Services', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:05:16.3966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1532, N'Building Materials Trading', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:05:32.7766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1533, N'Fresh Fruits & Vegetable Trading', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:05:57.4166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1534, N'Fresh Chicken Trading', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:06:25.2233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1535, N'Touristic Resorts Management', NULL, 1, 10, N'5', CAST(N'2012-02-20T17:07:03.3800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1536, N'Kindergarten', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:39:27.0900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1537, N'Public Elementary Education', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:39:59.9400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1538, N'Education Facilities and Management Services', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:40:17.3900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1539, N'Pearl Cultivation', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:40:34.6133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1540, N'Readymade Building Manufacturing', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:40:58.9200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1541, N'Live Poultry Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:41:25.3033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1542, N'Poultry Raising', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:41:41.6266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1543, N'Slaughtering Poultry, Rabbits & Birds', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:42:01.4366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1544, N'Electricity Transmission & Control Apparatus Installation', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:42:22.0166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1545, N'Electromechanical Equipment Installation & Maintenance', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:42:40.3266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1546, N'Air Conditioning, Ventilations & Air Filtration Systems Installation & Maintenance', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:43:06.0800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1547, N'Operating &  Maintenance of Electrical Stations & Pipelines', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:43:26.9666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1548, N'Electromechanical Works Project Contracting', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:43:56.2200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1549, N'Installation & Ignition of Mechanical Equipments', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:44:15.2800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1550, N'Health Services Enterprises Investment, Institution & Management', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:45:34.1766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1551, N'Legal Consultancy', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:45:51.5400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1552, N'Metal & Steel Works', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:46:11.6066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1553, N'Home Furniture & Cabinet Work Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:47:09.1100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1554, N'Sanitary Tools & Fittings Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:47:34.4633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1555, N'Tiles & Marble Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:47:57.9533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1556, N'Steel Construction Contracting', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:48:13.1300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1557, N'Local Shares & Bonds Brokers', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:48:33.1133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1558, N'Debt Collection', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:48:47.3333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1559, N'Financial Investment Consultancies', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:49:08.6233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1560, N'Curtains & Upholstery Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:49:29.5000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1561, N'Carpets Trading Class A', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:49:47.6400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1562, N'Sheets, Linen & Towels Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:50:03.8133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1563, N'Office Furniture Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:50:19.3100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1564, N'Miscellaneous Domestic Equipment & Utensils Trading', NULL, 1, 10, N'5', CAST(N'2012-03-07T13:50:39.5200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1565, N'Crtf. Food Control', NULL, 1, 11, N'5', CAST(N'2012-03-08T16:44:51.1300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1566, N'Railway Construction Contracting', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:23:44.6466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1567, N'Financial Advisors & Financial Analysis', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:24:01.1133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1568, N'Military Equipment Trading', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:24:16.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1569, N'Selling Spare parts & Accessories of Heavy Motor Equipment', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:24:38.3966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1570, N'Interior Decoration', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:24:51.9800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1571, N'Hospital Class A', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:25:07.6666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1572, N'Physical Fitness Club For Women', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:25:24.1266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1573, N'Women Personal Care & Beauty', NULL, 1, 10, N'5', CAST(N'2012-03-20T13:25:42.7000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1574, N'Yemen', NULL, 1, 2, N'5', CAST(N'2012-04-01T13:52:56.2333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1575, N'Wholesale of Precise Electronic Devices Trading', NULL, 1, 10, N'5', CAST(N'2012-04-03T11:23:01.3966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1576, N'Translation (English)', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:29:45.6033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1577, N'Translation (French)', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:30:03.9033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1578, N'Translation (Spanish)', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:30:21.1466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1579, N'Translation (Russian)', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:30:56.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1580, N'Litigation', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:31:31.7100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1581, N'Construction', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:31:54.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1582, N'Real Estate', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:32:11.6133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1583, N'Finance', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:32:30.9166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1584, N'Taxation', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:32:46.6233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1585, N'M&A', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:33:37.5766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1586, N'Mining', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:34:54.2566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1587, N'Energy', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:35:04.7833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1588, N'Private Equity', NULL, 1, 10, N'5', CAST(N'2012-04-22T09:35:37.4900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1589, N'First National Bank (SA)', NULL, 1, 1, N'5', CAST(N'2012-04-24T13:25:14.1333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1590, N'Vacant', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:16:04.2400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1591, N'Other', NULL, 1, 11, N'5', CAST(N'2012-05-07T12:16:36.8500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1592, N'Mortgage Cont.', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:16:56.8666667' AS DateTime2), N'5', CAST(N'2012-05-07T12:27:30.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1593, N'POA', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:17:09.7000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1594, N'Site Plan', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:17:24.4433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1595, N'Title Deed', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:17:34.9366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1596, N'SPA', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:17:52.5100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1597, N'Lease Cont.', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:18:23.5566667' AS DateTime2), N'5', CAST(N'2012-05-07T12:27:21.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1598, N'Certificate', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:18:50.9666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1599, N'Investment Cont.', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:20:28.4400000' AS DateTime2), N'5', CAST(N'2012-05-07T12:27:08.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1600, N'Letter', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:26:45.8733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1601, N'Sub-Tenant', NULL, 1, 10, N'5', CAST(N'2012-05-07T12:29:04.7866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1602, N'Mina Zayed', NULL, 1, 1, N'5', CAST(N'2012-05-07T12:33:06.8266667' AS DateTime2), N'5', CAST(N'2012-05-07T12:33:51.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1603, N'Khalifa Park', NULL, 1, 1, N'5', CAST(N'2012-05-07T12:34:15.8966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1604, N'Al Reef Area', NULL, 1, 1, N'5', CAST(N'2012-05-07T12:34:45.7133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1605, N'Search Certificate', NULL, 1, 10, N'5', CAST(N'2012-05-10T11:00:55.5766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1606, N'Thailand', NULL, 1, 2, N'5', CAST(N'2012-06-12T15:03:43.4966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1607, N'Thailand', NULL, 1, 10, N'5', CAST(N'2012-06-12T15:04:22.1200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1608, N'Thailand', NULL, 1, 10, N'5', CAST(N'2012-06-12T15:05:23.3000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1609, N'Industrial Enterprises Investment, Institution & Managnt', NULL, 1, 10, N'5', CAST(N'2012-06-28T09:46:04.8133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1610, N'Crtf. Economy DB System', NULL, 1, 11, N'5', CAST(N'2012-08-08T14:01:21.2766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1611, N'Croatia', NULL, 1, 10, N'5', CAST(N'2012-09-26T17:11:12.8266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1612, N'Croatia', NULL, 1, 2, N'5', CAST(N'2012-09-26T17:11:35.4933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1613, N'Croatia', NULL, 1, 10, N'5', CAST(N'2012-09-26T17:22:37.1833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1614, N'Dental Clinic', NULL, 1, 10, N'5', CAST(N'2012-10-01T10:51:56.2166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1615, N'Sports Enterprises Investment, Institution & Management', NULL, 1, 10, N'5', CAST(N'2012-10-08T13:32:05.6833333' AS DateTime2), N'5', CAST(N'2012-10-08T05:46:32.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1616, N'Sports Services & Contarcting', NULL, 1, 10, N'5', CAST(N'2012-10-08T13:32:22.6533333' AS DateTime2), N'5', CAST(N'2012-10-08T05:46:41.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1617, N'Men Health Club', NULL, 1, 10, N'5', CAST(N'2012-10-08T13:32:43.6200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1618, N'Buildings General Maintenance', NULL, 1, 10, N'5', CAST(N'2012-10-08T13:33:04.7633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1619, N'Wholesale of Fodder Trading', NULL, 1, 10, N'5', CAST(N'2012-10-08T13:33:21.9033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1620, N'Administrative Consultancy & Studies', NULL, 1, 10, N'5', CAST(N'2012-10-08T13:33:41.6666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1621, N'Consultancy and Studies and Researches in Economics', NULL, 1, 10, N'5', CAST(N'2012-10-08T13:34:00.3366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1622, N'Foundation Excavation And Props Installation', NULL, 1, 10, N'5', CAST(N'2012-10-15T15:38:16.8500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1623, N'Ports Contacting', NULL, 1, 10, N'5', CAST(N'2012-10-15T15:38:34.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1624, N'Forestation Contracting', NULL, 1, 10, N'5', CAST(N'2012-10-15T15:38:52.3966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1625, N'Irrigation Network Contracting', NULL, 1, 10, N'5', CAST(N'2012-10-15T15:39:06.7033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1626, N'Entertainment Enterprises Investment, Institution & Management', NULL, 1, 10, N'5', CAST(N'2012-10-15T15:39:36.0566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1627, N'Eritrean', NULL, 1, 2, N'5', CAST(N'2012-11-06T14:39:39.4100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1628, N'Eritrea', NULL, 1, 10, N'5', CAST(N'2012-11-06T14:40:41.9466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1629, N'Eritrea', NULL, 1, 10, N'5', CAST(N'2012-11-06T14:41:16.3866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1630, N'Sudan', NULL, 1, 10, N'5', CAST(N'2012-11-06T14:41:28.9866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1631, N'Jordan', NULL, 1, 10, N'5', CAST(N'2012-11-06T14:41:38.1266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1632, N'USA', NULL, 1, 10, N'5', CAST(N'2012-11-06T14:41:51.8966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1633, N'Crtf. Industrial Production', NULL, 1, 11, N'5', CAST(N'2012-12-16T10:10:24.6033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1634, N'Pets Accommodating and Bringing Up', NULL, 1, 10, N'5', CAST(N'2013-01-17T16:53:51.3633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1635, N'Real Estate Development Construction', NULL, 1, 10, N'5', CAST(N'2013-01-17T16:54:46.2000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1636, N'Land & Real Estate Purchase & Sale', NULL, 1, 10, N'5', CAST(N'2013-01-17T16:55:29.4766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1637, N'Supervisory Board Member', NULL, 1, 1, N'5', CAST(N'2013-02-03T16:19:00.6366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1638, N'SCR', NULL, 1, 2, N'5', CAST(N'2013-02-04T11:11:41.3100000' AS DateTime2), N'5', CAST(N'2013-02-04T11:16:43.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1639, N'Seychelles', NULL, 1, 10, N'5', CAST(N'2013-02-04T11:17:20.9433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1640, N'Netherlands', NULL, 1, 10, N'5', CAST(N'2013-02-04T11:19:19.0400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1641, N'Al Ajban', NULL, 1, 1, N'5', CAST(N'2013-02-07T15:41:08.7500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1642, N'Abu Dhabi City', NULL, 1, 1, N'5', CAST(N'2013-02-07T15:44:03.2766667' AS DateTime2), N'5', CAST(N'2013-02-07T03:45:04.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1643, N'Mohd BZ City', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:11:22.4266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1644, N'Officers City', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:13:48.2833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1645, N'Rawdat Al Reef', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:14:11.9600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1646, N'Shahama', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:15:19.6666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1647, N'Western Region', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:15:44.7200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1648, N'Zayed Military City', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:16:06.0033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1649, N'Al Jimi', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:16:29.8200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1650, N'Hili', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:16:56.5266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1651, N'Al Saad', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:17:27.9966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1652, N'Jebel Hafeet', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:17:47.7100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1653, N'Al Salamat', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:18:08.2300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1654, N'Al Safouh First', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:18:38.6766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1655, N'Jebel Ali', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:19:05.6633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1656, N'Jumeirah Village 2nd', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:19:37.9966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1657, N'Mirdif', NULL, 1, 1, N'5', CAST(N'2013-02-07T17:20:00.2866667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1658, N'Montenegro', NULL, 1, 10, N'5', CAST(N'2013-02-25T09:28:14.5566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1659, N'Montenegro', NULL, 1, 2, N'5', CAST(N'2013-02-25T09:28:37.9466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1660, N'Al Hayar', NULL, 1, 1, N'5', CAST(N'2013-02-27T17:57:57.5000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1661, N'Bada Bint Saood', NULL, 1, 1, N'5', CAST(N'2013-03-04T09:04:24.4266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1662, N'Business Bay', NULL, 1, 1, N'5', CAST(N'2013-03-04T09:04:49.8533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1663, N'Habhab', NULL, 1, 1, N'5', CAST(N'2013-03-04T09:05:08.3566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1664, N'Libya', NULL, 1, 10, N'5', CAST(N'2013-03-05T12:09:52.1400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1665, N'Kazakistan', NULL, 1, 10, N'5', CAST(N'2013-03-05T12:10:33.7266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1666, N'Comores Isld.', NULL, 1, 10, N'5', CAST(N'2013-03-05T12:11:06.5700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1667, N'Tripoli', 193, 1, 10, N'5', CAST(N'2013-03-05T12:12:03.9400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1668, N'Damascus', 193, 1, 10, N'5', CAST(N'2013-03-05T12:12:45.9800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1669, N'Harhoura', 193, 1, 10, N'5', CAST(N'2013-03-05T12:13:21.4200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1670, N'Rabat', 193, 1, 10, N'5', CAST(N'2013-03-05T12:13:49.6200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1671, N'East Park', NULL, 1, 10, N'5', CAST(N'2013-03-05T12:15:37.7200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1672, N'Skhirat', NULL, 1, 10, N'5', CAST(N'2013-03-05T12:16:30.8266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1673, N'Mahe', 193, 1, 10, N'5', CAST(N'2013-03-05T12:28:05.0833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1674, N'Takamaka', NULL, 1, 10, N'5', CAST(N'2013-03-05T12:28:50.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1675, N'Recruitment Services', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:20:20.9500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1676, N'Upon Request Employees Provision Services', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:20:37.2633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1677, N'Clothes Ironing', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:20:52.5066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1678, N'Clothes Washing', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:21:10.3300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1679, N'The Interior Cleaning Services for Buildings', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:21:27.5666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1680, N'Cleaning the outside (Interface) Buildings', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:22:15.3666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1681, N'Hotels Establishment', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:22:33.6400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1682, N'Restaurant- Second Category', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:22:51.2000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1683, N'Entertainment Parties & Occasions Contracting', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:23:30.2633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1684, N'Arabian Coffee Catering', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:23:46.2500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1685, N'Shymkent', 193, 1, 10, N'5', CAST(N'2013-03-06T10:33:44.3600000' AS DateTime2), N'5', CAST(N'2013-03-06T10:36:24.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1686, N'Abai District', NULL, 1, 10, N'5', CAST(N'2013-03-06T10:37:00.4700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1687, N'Washington State', 193, 1, 10, N'5', CAST(N'2013-03-07T11:45:09.0333333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1688, N'Bellevue', NULL, 1, 10, N'5', CAST(N'2013-03-07T11:45:40.5366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1689, N'Anjouan Isld', 193, 1, 10, N'5', CAST(N'2013-03-10T11:57:32.7166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1690, N'Ndzouani', NULL, 1, 10, N'5', CAST(N'2013-03-10T11:58:40.3200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1691, N'Cold & Hot Beverages', NULL, 1, 10, N'5', CAST(N'2013-03-11T17:18:23.0833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1692, N'Restaurant- First Category', NULL, 1, 10, N'5', CAST(N'2013-03-11T17:18:56.8933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1693, N'Human Resources Consultancy', NULL, 1, 10, N'5', CAST(N'2013-03-11T17:19:20.2700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1694, N'Psychiatric & Neurological Clinic', NULL, 1, 10, N'5', CAST(N'2013-03-11T17:19:46.0633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1695, N'Infrastructure Enterprises Investment, Institution & Management', NULL, 1, 10, N'5', CAST(N'2013-03-11T17:20:20.4600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1696, N'Mazatlan', 193, 1, 10, N'5', CAST(N'2013-03-14T17:46:24.4666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1697, N'Sinaloa', NULL, 1, 10, N'5', CAST(N'2013-03-14T17:46:57.9666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1698, N'Khalifa City CD', NULL, 1, 1, N'5', CAST(N'2013-06-12T13:05:59.0733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1699, N'Somalia', NULL, 1, 2, N'5', CAST(N'2013-07-10T13:24:17.5900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1700, N'Netherlands', NULL, 1, 2, N'5', CAST(N'2013-07-10T13:25:17.0133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1701, N'Serbia', NULL, 1, 10, N'5', CAST(N'2013-07-22T12:54:11.0300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1702, N'Kopaonik', 193, 1, 10, N'5', CAST(N'2013-07-22T12:55:07.8433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1703, N'Serbia', 978, 1, 10, N'5', CAST(N'2013-07-23T10:50:41.2533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1704, N'Belarus', NULL, 1, 10, N'5', CAST(N'2013-08-11T12:21:18.3766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1705, N'Belarus', NULL, 1, 2, N'5', CAST(N'2013-08-11T12:22:57.7966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1706, N'Minsk', 193, 1, 10, N'5', CAST(N'2013-08-11T12:24:34.7966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1707, N'Minsk', NULL, 1, 10, N'5', CAST(N'2013-08-11T12:26:01.0000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1708, N'Full-Service', NULL, 1, 1, N'5', CAST(N'2013-09-26T16:34:11.2566667' AS DateTime2), N'5', CAST(N'2013-09-26T04:42:47.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1709, N'Accountant', NULL, 1, 10, N'5', CAST(N'2013-09-26T16:36:22.0700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1710, N'Chechniya', NULL, 1, 10, N'5', CAST(N'2013-10-02T09:42:15.3600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1711, N'Chechniya', 978, 1, 10, N'5', CAST(N'2013-10-02T09:43:29.6966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1712, N'Grozny', 193, 1, 10, N'5', CAST(N'2013-10-02T09:44:51.9533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1713, N'Leninskiy District', NULL, 1, 10, N'5', CAST(N'2013-10-02T09:46:59.4600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1714, N'Belarus', 978, 1, 10, N'5', CAST(N'2013-12-04T10:33:21.2833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1715, N'Dominican Rep.', NULL, 1, 10, N'5', CAST(N'2013-12-22T09:38:58.1566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1716, N'POA', NULL, 1, 11, N'5', CAST(N'2014-05-14T09:28:23.1133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1717, N'Greece', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:01:07.1133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1718, N'Spain', NULL, 1, 2, N'5', CAST(N'2014-11-25T11:02:08.0033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1719, N'Retail Sale of Tiles & Grounds', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:03:52.4000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1720, N'Retail Sale of Sanitary Ware & Fittings', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:04:16.4166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1721, N'Retail Sale of House Furniture & Cabinet Work', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:04:42.9733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1722, N'Retail Sale of Kitchens & Restaurants Equipment & Outfits', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:05:02.2366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1723, N'Sanitary Ware Trading', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:05:21.7700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1724, N'Tiles & Flooring Materials Trading', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:05:41.5000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1725, N'Home Furniture', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:06:00.9833333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1726, N'Domestic Kitchen & Fixture Trading', NULL, 1, 10, N'5', CAST(N'2014-11-25T11:06:22.3300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1727, N'Flat', NULL, 1, 10, N'5', CAST(N'2014-12-10T16:36:22.3600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1728, N'Wholesale of Computers & Outfit Trading', NULL, 1, 10, N'5', CAST(N'2015-02-22T15:11:36.0966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1729, N'Wholesale of Alarm & Monitor Devices & Equipment Trading', NULL, 1, 10, N'5', CAST(N'2015-02-22T15:11:59.9533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1730, N'Security & Surveillance Equipment & Apparatuses Installation', NULL, 1, 10, N'5', CAST(N'2015-02-22T15:12:23.0500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1731, N'Car Parking & Squares Management & Operation', NULL, 1, 10, N'5', CAST(N'2015-03-09T11:39:21.0233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1732, N'Management & Operation of Public Utilities', NULL, 1, 10, N'5', CAST(N'2015-03-09T11:39:43.7733333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1733, N'Services Management Oversight to the Real Estate', NULL, 1, 10, N'5', CAST(N'2015-03-09T11:40:04.8933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1734, N'Industrial Facilities Cleaning Services', NULL, 1, 10, N'5', CAST(N'2015-03-09T11:40:38.9133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1735, N'Translator', NULL, 1, 10, N'5', CAST(N'2015-03-30T09:18:49.1000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1736, N'Hospitality', NULL, 1, 10, N'5', CAST(N'2015-03-30T09:26:14.0966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1737, N'IP', NULL, 1, 10, N'5', CAST(N'2015-03-30T09:26:29.9133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1738, N'Trust', NULL, 1, 10, N'5', CAST(N'2015-03-30T09:27:21.9033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1739, N'Corporate (Offshore)', NULL, 1, 10, N'5', CAST(N'2015-03-30T09:28:45.3033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1740, N'Corporate (Free Zones)', NULL, 1, 10, N'5', CAST(N'2015-03-30T09:29:06.3000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1741, N'Seattle', NULL, 1, 10, N'5', CAST(N'2015-06-29T14:16:35.6600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1742, N'Santa Marta', 193, 1, 10, N'5', CAST(N'2015-06-29T14:46:05.9600000' AS DateTime2), N'5', CAST(N'2015-06-29T03:43:46.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1743, N'Cartagena', 193, 1, 10, N'5', CAST(N'2015-06-29T14:46:40.5633333' AS DateTime2), N'5', CAST(N'2015-06-29T03:44:19.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1744, N'Begotta', 193, 1, 10, N'5', CAST(N'2015-06-29T14:47:08.2633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1745, N'Serbia', NULL, 1, 2, N'5', CAST(N'2015-08-17T09:42:05.6466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1746, N'Retail Sale of Artificial & Dried Flowers & Plants', NULL, 1, 10, N'5', CAST(N'2015-08-26T16:54:17.4500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1747, N'Retail Sale of Natural Flowers & Plants', NULL, 1, 10, N'5', CAST(N'2015-08-26T16:54:36.7033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1748, N'Retail Sale of Gifts', NULL, 1, 10, N'5', CAST(N'2015-08-26T16:55:01.1000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1749, N'Romania', NULL, 1, 2, N'5', CAST(N'2015-10-05T10:26:57.7533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1750, N'Romania', NULL, 1, 10, N'5', CAST(N'2015-10-05T10:27:33.2666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1751, N'Russia', NULL, 1, 10, N'5', CAST(N'2015-10-05T10:28:14.7566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1752, N'Lebanon', NULL, 1, 10, N'5', CAST(N'2015-10-05T10:28:46.0300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1753, N'Iraq', NULL, 1, 10, N'5', CAST(N'2015-10-05T10:29:01.7566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1754, N'Bahrain', NULL, 1, 10, N'5', CAST(N'2015-10-05T10:30:14.7566667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1755, N'POA', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:48:56.8666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1756, N'Lease', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:49:10.5366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1757, N'Resolution, Board', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:49:41.8433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1758, N'Resolution, GA', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:50:02.4900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1759, N'Other', NULL, 1, 11, N'5', CAST(N'2015-10-26T11:50:26.3133333' AS DateTime2), N'5', CAST(N'2015-10-26T11:51:14.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1760, N'Mortgage Agrnt', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:51:02.0800000' AS DateTime2), N'5', CAST(N'2015-10-26T11:51:37.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1761, N'MOA', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:53:21.2000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1762, N'MOA, Addendum', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:53:54.4966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1763, N'Share Purchase', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:55:37.5766667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1764, N'Certificate', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:55:56.1366667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1765, N'Letter', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:56:16.2466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1766, N'Active', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:57:18.2133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1767, N'Expired', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:57:33.6666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1768, N'Amended', NULL, 1, 10, N'5', CAST(N'2015-10-26T11:57:47.0600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1769, N'Real Estate Valuation', NULL, 1, 10, N'5', CAST(N'2015-12-01T09:26:22.8500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1770, N'CEO', NULL, 1, 1, N'5', CAST(N'2016-03-09T10:35:10.5100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1771, N'Mauritius', 978, 1, 10, N'5', CAST(N'2016-03-28T11:20:06.5500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1772, N'Namibia', NULL, 1, 10, N'5', CAST(N'2016-03-31T11:16:16.0800000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1773, N'Pakistan', NULL, 1, 10, N'5', CAST(N'2016-03-31T11:16:29.8666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1774, N'Windhoek', 193, 1, 10, N'5', CAST(N'2016-03-31T11:17:27.3633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1775, N'Karachi', 193, 1, 10, N'5', CAST(N'2016-03-31T11:18:20.4133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1776, N'Automatic Call Distribution (Call Center)', NULL, 1, 10, N'5', CAST(N'2016-08-08T12:18:54.6500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1777, N'Building of Motor Boats', NULL, 1, 10, N'5', CAST(N'2016-08-08T12:19:19.4300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1778, N'Wholesale of Perfume Trading', NULL, 1, 10, N'5', CAST(N'2016-08-08T12:20:45.7400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1779, N'HRK', NULL, 1, 2, N'5', CAST(N'2016-08-30T15:10:39.4900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1780, N'Air Conditioning, Ventilation, Air Cooling Systems Maintenance, Installation-(First Category)', NULL, 1, 10, N'5', CAST(N'2016-08-30T15:13:12.7900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1781, N'Civil Works of Energy, Generation Construction Station-(First Category)', NULL, 1, 10, N'5', CAST(N'2016-08-30T15:13:51.4000000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1782, N'Electricity Plant & Networks Operation & Maintenance, Power Distribution Networks & Stations Contracting-(First Category)', NULL, 1, 10, N'5', CAST(N'2016-08-30T15:15:10.0066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1783, N'Mechanical Construction-(First Category)', NULL, 1, 10, N'5', CAST(N'2016-08-30T15:16:05.8933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1784, N'Italy', NULL, 1, 10, N'5', CAST(N'2017-09-28T10:02:53.1033333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1785, N'Sardinia Island', 193, 1, 10, N'5', CAST(N'2017-09-28T10:04:38.9166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1786, N'Olbia', NULL, 1, 10, N'5', CAST(N'2017-09-28T10:05:16.3933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1787, N'ADGM-RSC', NULL, 1, 10, N'5', CAST(N'2017-10-17T14:38:19.3100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1788, N'ADGM-LBS', NULL, 1, 10, N'5', CAST(N'2017-10-17T14:38:49.4100000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1789, N'St. Kitts & Nevis', NULL, 1, 2, N'5', CAST(N'2017-10-23T09:52:25.6700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1790, N'France', NULL, 1, 2, N'5', CAST(N'2017-10-23T09:54:35.0166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1791, N'Panama', NULL, 1, 2, N'5', CAST(N'2017-10-23T09:56:04.3300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1792, N'Italy', NULL, 1, 2, N'5', CAST(N'2017-10-23T09:56:57.1266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1793, N'Algeria', NULL, 1, 10, N'5', CAST(N'2018-12-12T11:06:39.9200000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1794, N'Algeria', NULL, 1, 2, N'5', CAST(N'2018-12-12T11:07:23.6700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1795, N'Algeria', NULL, 1, 10, N'5', CAST(N'2018-12-12T11:07:53.3466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1796, N'Certf. Incorporation', NULL, 1, 10, N'5', CAST(N'2020-09-23T09:21:01.8066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1797, N'Certf. Incumbency', NULL, 1, 10, N'5', CAST(N'2020-09-23T09:21:24.6166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1798, N'Free Zone LLC', NULL, 1, 10, N'5', CAST(N'2020-09-23T09:23:23.7600000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1799, N'Free Zone Est.', NULL, 1, 10, N'5', CAST(N'2020-09-23T09:23:45.9400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1800, N'Crtf. Incorporation', NULL, 1, 11, N'5', CAST(N'2020-09-23T09:24:56.9066667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1801, N'Crtf. Incumbency', NULL, 1, 11, N'5', CAST(N'2020-09-23T09:25:16.6966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1802, N'Special Purpose Vehicle', NULL, 1, 10, N'5', CAST(N'2020-09-23T09:33:11.4900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1803, N'Manufacture of Basic Precious and Other Non-Ferrous Metals', NULL, 1, 10, N'5', CAST(N'2020-09-23T09:35:32.1133333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1804, N'Al Samaliyah Island', NULL, 1, 1, N'5', CAST(N'2021-10-11T10:49:10.3500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1805, N'Ethiopia', NULL, 1, 10, N'5', CAST(N'2022-02-11T11:41:41.5233333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1806, N'Ethiopia', NULL, 1, 10, N'5', CAST(N'2022-02-11T11:42:19.7900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1807, N'Ethiopia', NULL, 1, 10, N'5', CAST(N'2022-02-11T11:43:06.1900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1808, N'Ethiopia', 978, 1, 10, N'5', CAST(N'2022-02-11T11:48:31.9666667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1809, N'Switzerland', 978, 1, 10, N'5', CAST(N'2022-02-11T11:54:02.2633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1810, N'Italy', 978, 1, 10, N'5', CAST(N'2022-02-11T11:54:44.5400000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1811, N'Greece', 978, 1, 10, N'5', CAST(N'2022-02-11T12:03:16.1266667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1812, N'Cyprus', 978, 1, 10, N'5', CAST(N'2022-02-11T12:03:52.6633333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1813, N'Azerbaijan', 978, 1, 10, N'5', CAST(N'2022-02-11T12:09:35.4500000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1814, N'Russia', 978, 1, 10, N'5', CAST(N'2022-02-11T12:10:12.8433333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1815, N'Al Jarf (Hizam Al Ghabat)', NULL, 1, 1, N'5', CAST(N'2023-02-16T14:57:26.9400000' AS DateTime2), N'5', CAST(N'2023-02-16T02:58:04.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1816, N'CHF', NULL, 1, 2, N'5', CAST(N'2023-02-24T10:53:31.0933333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1817, N'COP', NULL, 1, 2, N'5', CAST(N'2023-02-24T10:55:03.7966667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1818, N'Pakistan', 978, 1, 10, N'5', CAST(N'2023-03-13T12:42:06.9900000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1819, N'Al Saadiyat', NULL, 1, 1, N'5', CAST(N'2023-03-27T15:12:41.6166667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1820, N'Kazakhstan', NULL, 1, 2, N'5', CAST(N'2023-06-13T11:39:00.9700000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1821, N'KZT', NULL, 1, 2, N'5', CAST(N'2023-06-13T12:25:28.0466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1822, N'Tax', NULL, 1, 12, N'5', CAST(N'2023-06-26T12:22:50.6033333' AS DateTime2), N'5', CAST(N'2023-06-26T12:26:27.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1823, N'VAT', NULL, 1, 12, N'5', CAST(N'2023-06-26T12:26:44.9300000' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1824, N'Tax', NULL, 1, 12, N'5', CAST(N'2023-06-26T12:32:50.0666667' AS DateTime2), N'5', CAST(N'2023-06-26T12:34:50.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1825, N'First Abu Dhabi Bank FAB', NULL, 1, 1, N'5', CAST(N'2025-05-16T17:34:21.2466667' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[DynamicLists] ([DynamicListIDC], [DynamicListIDN], [DynamicListItemName], [ParentDynamicListIDN], [Active], [Rank], [CreatedBy], [CreatedAt], [ModifiedBy], [ModifiedAt], [IsDeleted], [DeletedBy], [DeletedAt]) VALUES (N'DL', 1826, N'Dubai Islamic Bank DIB', NULL, 1, 1, N'5', CAST(N'2025-05-16T17:34:51.1533333' AS DateTime2), NULL, NULL, 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[DynamicLists] OFF
GO
