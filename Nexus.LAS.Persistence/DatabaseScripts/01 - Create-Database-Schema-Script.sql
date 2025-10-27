USE [NEXUS-RG-LAS-Production-DB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[ProfilePicture] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[CompanyIdn] [int] IDENTITY(1,1) NOT NULL,
	[CompanyIdc] [nvarchar](50) NOT NULL,
	[CompanyCode] [nvarchar](50) NOT NULL,
	[IncorporationDate] [datetime2](7) NULL,
	[CompanyEnglishName] [nvarchar](100) NOT NULL,
	[CompanyArabicName] [nvarchar](100) NOT NULL,
	[CompanyShortName] [nvarchar](50) NOT NULL,
	[CompanyTypeIdn] [int] NULL,
	[CompanyClassIdn] [int] NULL,
	[GroupCompanyIdn] [int] NULL,
	[RelevantCompanyIdn] [int] NULL,
	[LegalTypeIdn] [int] NULL,
	[CciNumber] [nvarchar](50) NULL,
	[CciIssueDate] [datetime2](7) NULL,
	[CciExpiryDate] [datetime2](7) NULL,
	[CciExpiryActiveReminder] [bit] NULL,
	[PlaceOfRegistrationMainIdn] [int] NULL,
	[PlaceOfRegistrationSubIdn] [int] NULL,
	[CapitalAmount] [decimal](18, 2) NULL,
	[TotalShares] [bigint] NULL,
	[NumberOfPartners] [int] NULL,
	[UpdateDate] [datetime2](7) NULL,
	[UpdateDescription] [nvarchar](50) NULL,
	[Persons_IDN] [int] NULL,
	[CompanyStatus] [int] NOT NULL,
	[Private] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[CompanyIdn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesAccountSignatory]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesAccountSignatory](
	[CompaniesAccountSignatoryIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesAccountSignatoryIDC] [nvarchar](50) NOT NULL,
	[CompaniesBankAccount_IDN] [int] NOT NULL,
	[AccountSignatoryPerson_IDN] [int] NOT NULL,
	[AccountSignatoryRule] [int] NOT NULL,
	[FromAmount] [bigint] NOT NULL,
	[ToAmount] [bigint] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[AccountSignatoryDate] [datetime2](7) NULL,
	[CessationDate] [datetime2](7) NULL,
	[AccountSignatoryActive] [bit] NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesAccountSignatory] PRIMARY KEY CLUSTERED 
(
	[CompaniesAccountSignatoryIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesActivities]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesActivities](
	[CompaniesActivityIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesActivityIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[Activity] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesActivities] PRIMARY KEY CLUSTERED 
(
	[CompaniesActivityIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesAddresses]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesAddresses](
	[CompaniesAddressIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesAddressIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[AddressPrimary] [bit] NOT NULL,
	[AddressLine1] [nvarchar](50) NOT NULL,
	[AddressLine2] [nvarchar](50) NOT NULL,
	[AddressLine3] [nvarchar](50) NOT NULL,
	[POBoxumber] [nvarchar](50) NOT NULL,
	[POBoxCity] [int] NULL,
	[POBoxCountry] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesAddresses] PRIMARY KEY CLUSTERED 
(
	[CompaniesAddressIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesAuthorizedSignatories]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesAuthorizedSignatories](
	[CompaniesAuthorizedSignatoryIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesAuthorizedSignatoryIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[Persons_IDN] [int] NULL,
	[POAType] [nvarchar](50) NOT NULL,
	[POATypeDetails] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesAuthorizedSignatories] PRIMARY KEY CLUSTERED 
(
	[CompaniesAuthorizedSignatoryIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesBankAccount]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesBankAccount](
	[CompaniesBankAccountIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesBankAccountIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[BankName] [nvarchar](100) NOT NULL,
	[AccountNumber] [nvarchar](50) NOT NULL,
	[Note] [nvarchar](max) NOT NULL,
	[BankAccountDate] [datetime2](7) NOT NULL,
	[BankAccountActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesBankAccount] PRIMARY KEY CLUSTERED 
(
	[CompaniesBankAccountIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesBoardMembers]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesBoardMembers](
	[CompaniesBoardMemberIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesBoardMemberIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[Person_IDN] [int] NOT NULL,
	[BoardMemberPosition] [int] NOT NULL,
	[MemberAppointmentDate] [datetime2](7) NOT NULL,
	[MemberCessationDate] [datetime2](7) NULL,
	[BoardMemberActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesBoardMembers] PRIMARY KEY CLUSTERED 
(
	[CompaniesBoardMemberIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesBoards]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesBoards](
	[CompaniesBoardIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesBoardIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[BoardDate] [datetime2](7) NOT NULL,
	[BoardActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesBoards] PRIMARY KEY CLUSTERED 
(
	[CompaniesBoardIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesCapitals]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesCapitals](
	[CompaniesCapitalIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesCapitalIdc] [nvarchar](max) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[CompaniesCapitalDate] [datetime2](7) NULL,
	[CompaniesCapitalAmount] [float] NULL,
	[NominalValueOfShare] [float] NULL,
	[ClassOfShares] [nvarchar](50) NOT NULL,
	[CompaniesCapitalNumberOfShares] [bigint] NULL,
	[CompaniesCapitalAuthorized] [float] NULL,
	[CompaniesCapitalPaid] [float] NULL,
	[CompaniesCapitalIssuedShares] [bigint] NULL,
	[CompaniesCapitalCurrency] [int] NOT NULL,
	[CompaniesCapitalActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesCapitals] PRIMARY KEY CLUSTERED 
(
	[CompaniesCapitalIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesChamberOfCommerces]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesChamberOfCommerces](
	[CompaniesChamberOfCommerceIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesChamberOfCommerceIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[CCINumber] [nvarchar](50) NOT NULL,
	[CCIIssueDate] [datetime2](7) NOT NULL,
	[CCIExpiryDate] [datetime2](7) NULL,
	[CCIExpiryActiveReminder] [bit] NOT NULL,
	[CCIUsername] [nvarchar](50) NULL,
	[CCIPassword] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesChamberOfCommerces] PRIMARY KEY CLUSTERED 
(
	[CompaniesChamberOfCommerceIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesContracts]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesContracts](
	[CompaniesContractIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesContractIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[ContractType] [int] NULL,
	[DocumentDate] [datetime2](7) NULL,
	[CommencementDate] [datetime2](7) NOT NULL,
	[ContractExpiryDate] [datetime2](7) NULL,
	[ContractExpiryActiveReminder] [bit] NULL,
	[ContractDescription] [nvarchar](max) NULL,
	[ContractStatus] [int] NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesContracts] PRIMARY KEY CLUSTERED 
(
	[CompaniesContractIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesEmails]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesEmails](
	[CompaniesEmailIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesEmailIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[EmailPrimary] [bit] NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesEmails] PRIMARY KEY CLUSTERED 
(
	[CompaniesEmailIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesLeaseContractRegisters]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesLeaseContractRegisters](
	[CompaniesLeaseContracts_IDN] [int] IDENTITY(1,1) NOT NULL,
	[LeaseRegisters_IDC] [nvarchar](50) NOT NULL,
	[LeaseRegisters_IDN] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesLeaseContractRegisters] PRIMARY KEY CLUSTERED 
(
	[CompaniesLeaseContracts_IDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesLeaseContracts]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesLeaseContracts](
	[CompaniesLeaseContractIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesLeaseContractIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[CommencementDate] [datetime2](7) NULL,
	[LeaseContractExpiryDate] [datetime2](7) NULL,
	[LeaseContractExpiryActiveReminder] [bit] NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesLeaseContracts] PRIMARY KEY CLUSTERED 
(
	[CompaniesLeaseContractIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesLicenses]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesLicenses](
	[CompaniesLicenseIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesLicenseIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[LicensePrimary] [bit] NOT NULL,
	[LicenseStatus] [int] NOT NULL,
	[LicenseClassification] [int] NOT NULL,
	[LicenseNumber] [nvarchar](50) NOT NULL,
	[LicenseIssueDate] [datetime2](7) NOT NULL,
	[LicenseExpiryDate] [datetime2](7) NULL,
	[LicenseExpiryActiveReminder] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesLicenses] PRIMARY KEY CLUSTERED 
(
	[CompaniesLicenseIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesOtherContracts]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesOtherContracts](
	[CompaniesOtherContractIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesOtherContractIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[ContractDate] [datetime2](7) NULL,
	[ContractDescription] [nvarchar](4000) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesOtherContracts] PRIMARY KEY CLUSTERED 
(
	[CompaniesOtherContractIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesPersonInCharges]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesPersonInCharges](
	[CompaniesPersonInChargeIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesPersonInChargeIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[Persons_IDN] [int] NOT NULL,
	[Designation] [int] NOT NULL,
	[AuthorityRule] [int] NULL,
	[Notes] [nvarchar](4000) NULL,
	[PersonInChargeDate] [datetime2](7) NULL,
	[CessationDate] [datetime2](7) NULL,
	[PersonInChargeActive] [bit] NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesPersonInCharges] PRIMARY KEY CLUSTERED 
(
	[CompaniesPersonInChargeIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesPhones]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesPhones](
	[CompaniesPhoneIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesPhoneIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NULL,
	[PhonePrimary] [bit] NULL,
	[PhoneType] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](14) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesPhones] PRIMARY KEY CLUSTERED 
(
	[CompaniesPhoneIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesShareHolders]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesShareHolders](
	[CompaniesShareHolderIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesShareHolderIDC] [nvarchar](50) NOT NULL,
	[Registers_IDC] [nvarchar](50) NOT NULL,
	[Registers_IDN] [int] NOT NULL,
	[ShareHolderNumbersOfShares] [bigint] NOT NULL,
	[ShareHolderDate] [datetime2](7) NULL,
	[ShareHolderCessationDate] [datetime2](7) NULL,
	[ShareHolderActive] [bit] NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesShareHolders] PRIMARY KEY CLUSTERED 
(
	[CompaniesShareHolderIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesShareHoldersGroups]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesShareHoldersGroups](
	[CompaniesShareHoldersGroupIDN] [int] IDENTITY(1,1) NOT NULL,
	[CompaniesShareHoldersGroupIDC] [nvarchar](50) NOT NULL,
	[Companies_IDN] [int] NOT NULL,
	[ShareHolderGroupDate] [datetime2](7) NOT NULL,
	[ShareHolderGroupActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CompaniesShareHoldersGroups] PRIMARY KEY CLUSTERED 
(
	[CompaniesShareHoldersGroupIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryId] [int] NOT NULL,
	[CountryName] [nvarchar](500) NULL,
	[FIPS104] [nvarchar](50) NULL,
	[ISO2] [nvarchar](50) NULL,
	[ISO3] [nvarchar](50) NULL,
	[ISON] [nvarchar](50) NULL,
	[Internet] [nvarchar](50) NULL,
	[Capital] [nvarchar](500) NULL,
	[MapReference] [nvarchar](1000) NULL,
	[NationalitySingular] [nvarchar](500) NULL,
	[NationalityPlural] [nvarchar](500) NULL,
	[Currency] [nvarchar](100) NULL,
	[CurrencyCode] [nvarchar](50) NULL,
	[Population] [nvarchar](50) NULL,
	[Title] [nvarchar](500) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currencies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Entity] [nvarchar](100) NOT NULL,
	[Currency] [nvarchar](100) NOT NULL,
	[AlphabeticCode] [nvarchar](3) NOT NULL,
	[NumericCode] [nvarchar](3) NULL,
	[MinorUnit] [nvarchar](1) NULL,
	[IsFundYesNo] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Currencies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentReletedRegister]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentReletedRegister](
	[Document_IDC] [nvarchar](50) NOT NULL,
	[Document_IDN] [int] IDENTITY(1,1) NOT NULL,
	[Registers_IDC] [nvarchar](50) NOT NULL,
	[Registers_IDN] [int] NOT NULL,
	[Owner] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_DocumentReletedRegister] PRIMARY KEY CLUSTERED 
(
	[Document_IDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[DocumentIDC] [nvarchar](50) NOT NULL,
	[DocumentIDN] [int] IDENTITY(1,1) NOT NULL,
	[SharepointFilename] [nvarchar](max) NOT NULL,
	[DocumentPath] [nvarchar](max) NOT NULL,
	[DocumentINDateReceived] [datetime2](7) NULL,
	[DocumentINDescription] [nvarchar](50) NOT NULL,
	[DocumentINReceivedFrom] [nvarchar](50) NOT NULL,
	[DocumentINReason] [nvarchar](50) NOT NULL,
	[DocumentOutDateCollected] [nvarchar](50) NOT NULL,
	[DocumentOutCollectedBy] [nvarchar](50) NOT NULL,
	[DocumentOutReason] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[DocumentIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentTrackings]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentTrackings](
	[DocumentTrackingIDN] [int] IDENTITY(1,1) NOT NULL,
	[DocumentTrackingIDC] [nvarchar](50) NOT NULL,
	[DocumentTrackingCode] [nvarchar](50) NOT NULL,
	[ReferenceNumber] [nvarchar](50) NOT NULL,
	[Persons_IDN] [int] NOT NULL,
	[Registers_IDC] [nvarchar](50) NOT NULL,
	[Registers_IDN] [int] NOT NULL,
	[Description] [nvarchar](4000) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_DocumentTrackings] PRIMARY KEY CLUSTERED 
(
	[DocumentTrackingIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentTrackingsActions]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentTrackingsActions](
	[DocumentTrackingsActionIDN] [int] IDENTITY(1,1) NOT NULL,
	[DocumentTrackingsActionIDC] [nvarchar](50) NOT NULL,
	[DocumentTrackings_IDN] [int] NOT NULL,
	[ActionType] [nvarchar](50) NOT NULL,
	[ActionDate] [datetime2](7) NOT NULL,
	[ActionDescription] [nvarchar](4000) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_DocumentTrackingsActions] PRIMARY KEY CLUSTERED 
(
	[DocumentTrackingsActionIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DynamicLists]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DynamicLists](
	[DynamicListIDC] [nvarchar](50) NOT NULL,
	[DynamicListIDN] [int] IDENTITY(1,1) NOT NULL,
	[MainListID] [int] NULL,
	[MenuValue] [nvarchar](max) NULL,
	[LinkedCategory] [nvarchar](max) NULL,
	[MenuCategory] [nvarchar](max) NULL,
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
/****** Object:  Table [dbo].[FPCs]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FPCs](
	[FPCIDC] [nvarchar](50) NOT NULL,
	[FPCIDN] [int] IDENTITY(1,1) NOT NULL,
	[FPCCode] [nvarchar](50) NOT NULL,
	[Registers_IDC] [nvarchar](50) NOT NULL,
	[Registers_IDN] [int] NOT NULL,
	[FPCStatus] [int] NOT NULL,
	[Private] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_FPCs] PRIMARY KEY CLUSTERED 
(
	[FPCIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FPCsODs]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FPCsODs](
	[FPCsODIDC] [nvarchar](50) NOT NULL,
	[FPCsODIDN] [int] IDENTITY(1,1) NOT NULL,
	[FPCs_IDN] [int] NOT NULL,
	[DocType] [int] NOT NULL,
	[Description] [nvarchar](4000) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_FPCsODs] PRIMARY KEY CLUSTERED 
(
	[FPCsODIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FPCsODsActions]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FPCsODsActions](
	[FPCsODsActionIDC] [nvarchar](50) NOT NULL,
	[FPCsODsActionIDN] [int] IDENTITY(1,1) NOT NULL,
	[FPCsODs_IDN] [int] NOT NULL,
	[ActionType] [int] NOT NULL,
	[ActionDate] [datetime2](7) NOT NULL,
	[ActionDescription] [nvarchar](4000) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_FPCsODsActions] PRIMARY KEY CLUSTERED 
(
	[FPCsODsActionIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupsMenus]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupsMenus](
	[GroupID] [int] NOT NULL,
	[MenuID] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Access] [bit] NOT NULL,
	[CanInsert] [bit] NOT NULL,
	[CanUpdate] [bit] NOT NULL,
	[CanDelete] [bit] NOT NULL,
	[Admin] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_GroupsMenus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LawFirmCounsels]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LawFirmCounsels](
	[LawFirmCounselIDN] [int] IDENTITY(1,1) NOT NULL,
	[LawFirmCounselIDC] [nvarchar](max) NOT NULL,
	[LawFirmId] [int] NOT NULL,
	[CounselName] [nvarchar](max) NOT NULL,
	[CounselLevel] [int] NOT NULL,
	[Rate] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_LawFirmCounsels] PRIMARY KEY CLUSTERED 
(
	[LawFirmCounselIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LawFirms]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LawFirms](
	[LawFirmIDN] [int] IDENTITY(1,1) NOT NULL,
	[LawFirmIDC] [nvarchar](50) NOT NULL,
	[LawFirmCode] [nvarchar](50) NOT NULL,
	[LawFirmEnglishName] [nvarchar](100) NOT NULL,
	[LawFirmArabicName] [nvarchar](100) NOT NULL,
	[LawFirmShortName] [nvarchar](50) NOT NULL,
	[LawFirmStatus] [int] NOT NULL,
	[LawFirmLASDate] [datetime2](7) NULL,
	[LawFirmEstYear] [int] NULL,
	[LawFirmWebsite] [nvarchar](50) NULL,
	[Private] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_LawFirms] PRIMARY KEY CLUSTERED 
(
	[LawFirmIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LawFirmsAffiliates]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LawFirmsAffiliates](
	[LawFirmsAffiliateIDN] [int] IDENTITY(1,1) NOT NULL,
	[LawFirmsAffiliateIDC] [nvarchar](50) NOT NULL,
	[LawFirms_IDN] [int] NULL,
	[AffiliateName] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_LawFirmsAffiliates] PRIMARY KEY CLUSTERED 
(
	[LawFirmsAffiliateIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LawFirmsBranches]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LawFirmsBranches](
	[LawFirmsBranchIDN] [int] IDENTITY(1,1) NOT NULL,
	[LawFirmsBranchIDC] [nvarchar](50) NOT NULL,
	[LawFirms_IDN] [int] NULL,
	[BranchName] [nvarchar](50) NULL,
	[Country] [int] NULL,
	[City] [nvarchar](50) NULL,
	[Phone1] [nvarchar](50) NULL,
	[Phone2] [nvarchar](50) NULL,
	[Phone3] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Email1] [nvarchar](50) NULL,
	[Email2] [nvarchar](50) NULL,
	[BranchPrimary] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_LawFirmsBranches] PRIMARY KEY CLUSTERED 
(
	[LawFirmsBranchIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LawFirmsExpertises]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LawFirmsExpertises](
	[LawFirmsExpertiseIDN] [int] IDENTITY(1,1) NOT NULL,
	[LawFirmsExpertiseIDC] [nvarchar](50) NOT NULL,
	[LawFirms_IDN] [int] NOT NULL,
	[ExpertiseName] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_LawFirmsExpertises] PRIMARY KEY CLUSTERED 
(
	[LawFirmsExpertiseIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LawFirmsPersons]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LawFirmsPersons](
	[StaffID] [int] IDENTITY(1,1) NOT NULL,
	[LawFirms_IDN] [int] NOT NULL,
	[StaffLevel] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Practice] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](100) NULL,
	[StaffStatus] [bit] NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_LawFirmsPersons] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Path] [nvarchar](50) NULL,
	[Rank] [int] NULL,
	[Description] [nvarchar](50) NULL,
	[IconClass] [nvarchar](max) NULL,
	[InDashboard] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Numbers]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Numbers](
	[NumberValue] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Numbers] PRIMARY KEY CLUSTERED 
(
	[NumberValue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[PersonIDC] [nvarchar](max) NOT NULL,
	[PersonIDN] [int] IDENTITY(1,1) NOT NULL,
	[PersonCode] [nvarchar](max) NOT NULL,
	[PersonEnglishName] [nvarchar](200) NULL,
	[PersonArabicName] [nvarchar](200) NULL,
	[PersonShortName] [nvarchar](100) NULL,
	[Website] [nvarchar](max) NULL,
	[PersonStatus] [int] NOT NULL,
	[Private] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[PersonIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonsAddresses]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonsAddresses](
	[PersonsAddressIDC] [nvarchar](max) NULL,
	[PersonsAddressIDN] [int] IDENTITY(1,1) NOT NULL,
	[Persons_IDN] [int] NOT NULL,
	[AddressPrimary] [bit] NOT NULL,
	[AddressLine1] [nvarchar](max) NOT NULL,
	[AddressLine2] [nvarchar](max) NULL,
	[AddressLine3] [nvarchar](max) NULL,
	[POBoxumber] [nvarchar](max) NULL,
	[POBoxCity] [int] NULL,
	[POBoxCountry] [int] NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_PersonsAddresses] PRIMARY KEY CLUSTERED 
(
	[PersonsAddressIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonsCapacities]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonsCapacities](
	[PersonsCapacityIDC] [nvarchar](450) NOT NULL,
	[PersonsCapacityIDN] [int] IDENTITY(1,1) NOT NULL,
	[Persons_IDN] [int] NOT NULL,
	[CapacityName] [nvarchar](max) NOT NULL,
	[CapacityOther] [nvarchar](max) NULL,
	[CapacityHourRate] [float] NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_PersonsCapacities] PRIMARY KEY CLUSTERED 
(
	[PersonsCapacityIDC] ASC,
	[PersonsCapacityIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonsEmails]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonsEmails](
	[PersonsEmailIDC] [nvarchar](max) NULL,
	[PersonsEmailIDN] [int] IDENTITY(1,1) NOT NULL,
	[Persons_IDN] [int] NOT NULL,
	[EmailPrimary] [bit] NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_PersonsEmails] PRIMARY KEY CLUSTERED 
(
	[PersonsEmailIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonsIDDetails]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonsIDDetails](
	[PersonsIDDetailIDC] [nvarchar](max) NOT NULL,
	[PersonsIDDetailIDN] [int] IDENTITY(1,1) NOT NULL,
	[Persons_IDN] [int] NULL,
	[IDPrimary] [bit] NULL,
	[IDType] [int] NULL,
	[IDNationality] [int] NULL,
	[IDPlaceOfIssue] [int] NULL,
	[IDNumber] [nvarchar](max) NULL,
	[IDIssueDate] [datetime2](7) NULL,
	[IDExpiryDate] [datetime2](7) NULL,
	[IDExpiryActiveReminder] [bit] NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_PersonsIDDetails] PRIMARY KEY CLUSTERED 
(
	[PersonsIDDetailIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonsOtherDocuments]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonsOtherDocuments](
	[PersonsOtherDocumentIDC] [nvarchar](max) NULL,
	[PersonsOtherDocumentIDN] [int] IDENTITY(1,1) NOT NULL,
	[Persons_IDN] [int] NOT NULL,
	[DocumentType] [int] NULL,
	[DocumentDescription] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_PersonsOtherDocuments] PRIMARY KEY CLUSTERED 
(
	[PersonsOtherDocumentIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonsPhones]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonsPhones](
	[PersonsPhoneIDC] [nvarchar](max) NULL,
	[PersonsPhoneIDN] [int] IDENTITY(1,1) NOT NULL,
	[Persons_IDN] [int] NULL,
	[PhonePrimary] [bit] NULL,
	[PhoneType] [int] NULL,
	[PhoneNumber] [nvarchar](14) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_PersonsPhones] PRIMARY KEY CLUSTERED 
(
	[PersonsPhoneIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Properties]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Properties](
	[PropertyIDC] [nvarchar](max) NOT NULL,
	[PropertyIDN] [int] IDENTITY(1,1) NOT NULL,
	[PropertyCode] [nvarchar](max) NOT NULL,
	[PropertiesTypeOfTitle] [int] NOT NULL,
	[PropertiesGrantor] [bit] NULL,
	[PropertiesGrantorAddress] [nvarchar](max) NULL,
	[PropertiesGrantorTitleCommencementDate] [datetime2](7) NULL,
	[PropertiesGrantorTitleExpiryDate] [datetime2](7) NULL,
	[PropertiesGrantorTitleExpiryActiveReminder] [bit] NULL,
	[PropertiesGrantorDescription] [nvarchar](max) NULL,
	[PropertiesLocationCountryIdn] [int] NULL,
	[PropertiesLocationCityIdn] [int] NULL,
	[PropertiesLocationAreaIdn] [int] NULL,
	[PropertiesLocationDetails] [nvarchar](max) NULL,
	[PropertiesType] [int] NULL,
	[PropertiesPurpose] [int] NULL,
	[PropertiesStatus] [nvarchar](max) NULL,
	[Private] [bit] NOT NULL,
	[PropertiesPlot] [nvarchar](max) NULL,
	[FArea] [bigint] NULL,
	[MArea] [bigint] NULL,
	[PropertyFArea] [bigint] NULL,
	[PropertyMArea] [bigint] NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Properties] PRIMARY KEY CLUSTERED 
(
	[PropertyIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertiesOwners]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertiesOwners](
	[PropertiesOwnerIDC] [nvarchar](max) NOT NULL,
	[PropertiesOwnerIDN] [int] IDENTITY(1,1) NOT NULL,
	[Properties_IDN] [int] NOT NULL,
	[Registers_IDC] [nvarchar](max) NOT NULL,
	[Registers_IDN] [int] NOT NULL,
	[Relation] [int] NULL,
	[OwnStartDate] [datetime2](7) NULL,
	[OwnFinishDate] [datetime2](7) NULL,
	[OwnActive] [bit] NULL,
	[Remarks] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_PropertiesOwners] PRIMARY KEY CLUSTERED 
(
	[PropertiesOwnerIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertiesStatus]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertiesStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Property_IDN] [int] NULL,
	[Property_Code] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_PropertiesStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyDocuments]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyDocuments](
	[PropertyDocumentsIdc] [nvarchar](max) NOT NULL,
	[PropertyDocumentsIdn] [int] IDENTITY(1,1) NOT NULL,
	[Property_IDN] [int] NULL,
	[DocumentType] [int] NULL,
	[DocumentPlaceOfIssue] [nvarchar](max) NULL,
	[DocumentIssueDate] [datetime2](7) NULL,
	[DocumentExpiryDate] [datetime2](7) NULL,
	[DocumentExpiryActiveReminder] [bit] NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_PropertyDocuments] PRIMARY KEY CLUSTERED 
(
	[PropertyDocumentsIdn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyLinks]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyLinks](
	[PropertyLinksIdc] [nvarchar](max) NOT NULL,
	[PropertyLinksIdn] [int] IDENTITY(1,1) NOT NULL,
	[Registers_IDC] [nvarchar](max) NOT NULL,
	[Registers_IDN] [int] NOT NULL,
	[PropertyLinksValue] [int] NOT NULL,
	[PropertyLinksRemarks] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_PropertyLinks] PRIMARY KEY CLUSTERED 
(
	[PropertyLinksIdn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RefreshToken]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefreshToken](
	[ApplicationUserId] [nvarchar](450) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Token] [nvarchar](max) NOT NULL,
	[ExpiresOn] [datetime2](7) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[RevokedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_RefreshToken] PRIMARY KEY CLUSTERED 
(
	[ApplicationUserId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistersCodes]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistersCodes](
	[Code] [nvarchar](450) NOT NULL,
	[CodeCounter] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_RegistersCodes] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistersNotes]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistersNotes](
	[RegistersNoteIDC] [nvarchar](450) NOT NULL,
	[RegistersNoteIDN] [int] IDENTITY(1,1) NOT NULL,
	[Registers_IDC] [nvarchar](max) NOT NULL,
	[Registers_IDN] [int] NOT NULL,
	[RegistersNotes] [nvarchar](max) NOT NULL,
	[NoteDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_RegistersNotes] PRIMARY KEY CLUSTERED 
(
	[RegistersNoteIDC] ASC,
	[RegistersNoteIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFiles]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFiles](
	[FileID] [int] IDENTITY(1,1) NOT NULL,
	[Registers_IDC] [nvarchar](max) NOT NULL,
	[Registers_IDN] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ContentType] [nvarchar](max) NULL,
	[Data] [varbinary](max) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_tblFiles] PRIMARY KEY CLUSTERED 
(
	[FileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransactionIDC] [nvarchar](max) NOT NULL,
	[TransactionIDN] [int] IDENTITY(1,1) NOT NULL,
	[TransactionDate] [datetime2](7) NULL,
	[TransactionCode] [nvarchar](max) NOT NULL,
	[TransactionSubjectType] [int] NULL,
	[TransactionSubjectDescription] [nvarchar](max) NULL,
	[TransactionStatus] [int] NOT NULL,
	[Private] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransactionIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionsActions]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionsActions](
	[TransactionsActionIDC] [nvarchar](max) NOT NULL,
	[TransactionsActionIDN] [int] IDENTITY(1,1) NOT NULL,
	[Transactions_IDN] [int] NOT NULL,
	[Persons_IDN] [int] NOT NULL,
	[Time] [int] NULL,
	[Description] [nvarchar](max) NOT NULL,
	[DueDate] [datetime2](7) NOT NULL,
	[ClosedDate] [datetime2](7) NULL,
	[ActionStatus] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_TransactionsActions] PRIMARY KEY CLUSTERED 
(
	[TransactionsActionIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionsInvoices]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionsInvoices](
	[TransactionsInvoiceIDC] [nvarchar](max) NOT NULL,
	[TransactionsInvoiceIDN] [int] IDENTITY(1,1) NOT NULL,
	[Transactions_IDN] [int] NOT NULL,
	[LawFirms_IDN] [int] NOT NULL,
	[Invoice] [nvarchar](max) NULL,
	[InvoiceDate] [datetime2](7) NULL,
	[Amount] [bigint] NULL,
	[Paid] [bigint] NULL,
	[Currency] [int] NULL,
	[Note] [nvarchar](max) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_TransactionsInvoices] PRIMARY KEY CLUSTERED 
(
	[TransactionsInvoiceIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionsOTFs]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionsOTFs](
	[TransactionsOTFIDC] [nvarchar](max) NOT NULL,
	[TransactionsOTFIDN] [int] IDENTITY(1,1) NOT NULL,
	[Transactions_IDN] [int] NOT NULL,
	[OTFRegisters_IDC] [nvarchar](max) NOT NULL,
	[OTFRegisters_IDN] [int] NOT NULL,
	[id] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_TransactionsOTFs] PRIMARY KEY CLUSTERED 
(
	[TransactionsOTFIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionsRegisters]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionsRegisters](
	[TransactionsRegisterIDC] [nvarchar](max) NOT NULL,
	[TransactionsRegisterIDN] [int] IDENTITY(1,1) NOT NULL,
	[Transactions_IDN] [int] NOT NULL,
	[Registers_IDC] [nvarchar](max) NOT NULL,
	[Registers_IDN] [int] NOT NULL,
	[PrimaryRegister] [bit] NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_TransactionsRegisters] PRIMARY KEY CLUSTERED 
(
	[TransactionsRegisterIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroups]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroups](
	[UserId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_UserGroups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 27/10/2025 11:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[LoginName] [nvarchar](max) NULL,
	[NTLogin] [nvarchar](max) NULL,
	[Persons_IDN] [int] NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Properties] ADD  DEFAULT ((0)) FOR [PropertiesTypeOfTitle]
GO
ALTER TABLE [dbo].[Properties] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Transactions] ADD  DEFAULT ((0)) FOR [TransactionStatus]
GO
ALTER TABLE [dbo].[TransactionsInvoices] ADD  DEFAULT (N'') FOR [Note]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH NOCHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH NOCHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CompaniesBoardMembers]  WITH CHECK ADD  CONSTRAINT [FK_CompaniesBoardMembers_Companies_Companies_IDN] FOREIGN KEY([Companies_IDN])
REFERENCES [dbo].[Companies] ([CompanyIdn])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompaniesBoardMembers] CHECK CONSTRAINT [FK_CompaniesBoardMembers_Companies_Companies_IDN]
GO
ALTER TABLE [dbo].[CompaniesBoardMembers]  WITH CHECK ADD  CONSTRAINT [FK_CompaniesBoardMembers_Persons_Person_IDN] FOREIGN KEY([Person_IDN])
REFERENCES [dbo].[Persons] ([PersonIDN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompaniesBoardMembers] CHECK CONSTRAINT [FK_CompaniesBoardMembers_Persons_Person_IDN]
GO
ALTER TABLE [dbo].[CompaniesPersonInCharges]  WITH CHECK ADD  CONSTRAINT [FK_CompaniesPersonInCharges_Companies_Companies_IDN] FOREIGN KEY([Companies_IDN])
REFERENCES [dbo].[Companies] ([CompanyIdn])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompaniesPersonInCharges] CHECK CONSTRAINT [FK_CompaniesPersonInCharges_Companies_Companies_IDN]
GO
ALTER TABLE [dbo].[CompaniesPersonInCharges]  WITH CHECK ADD  CONSTRAINT [FK_CompaniesPersonInCharges_Persons_Persons_IDN] FOREIGN KEY([Persons_IDN])
REFERENCES [dbo].[Persons] ([PersonIDN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompaniesPersonInCharges] CHECK CONSTRAINT [FK_CompaniesPersonInCharges_Persons_Persons_IDN]
GO
ALTER TABLE [dbo].[CompaniesShareHolders]  WITH CHECK ADD  CONSTRAINT [FK_CompaniesShareHolders_Companies_Companies_IDN] FOREIGN KEY([Companies_IDN])
REFERENCES [dbo].[Companies] ([CompanyIdn])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompaniesShareHolders] CHECK CONSTRAINT [FK_CompaniesShareHolders_Companies_Companies_IDN]
GO
ALTER TABLE [dbo].[DocumentTrackings]  WITH CHECK ADD  CONSTRAINT [FK_DocumentTrackings_Persons_Persons_IDN] FOREIGN KEY([Persons_IDN])
REFERENCES [dbo].[Persons] ([PersonIDN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentTrackings] CHECK CONSTRAINT [FK_DocumentTrackings_Persons_Persons_IDN]
GO
ALTER TABLE [dbo].[GroupsMenus]  WITH NOCHECK ADD  CONSTRAINT [FK_GroupsMenus_Groups_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Groups] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupsMenus] CHECK CONSTRAINT [FK_GroupsMenus_Groups_GroupID]
GO
ALTER TABLE [dbo].[GroupsMenus]  WITH NOCHECK ADD  CONSTRAINT [FK_GroupsMenus_Menus_MenuID] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menus] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupsMenus] CHECK CONSTRAINT [FK_GroupsMenus_Menus_MenuID]
GO
ALTER TABLE [dbo].[Menus]  WITH CHECK ADD  CONSTRAINT [FK_Menus_Menus_ParentID] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Menus] ([id])
GO
ALTER TABLE [dbo].[Menus] CHECK CONSTRAINT [FK_Menus_Menus_ParentID]
GO
ALTER TABLE [dbo].[RefreshToken]  WITH CHECK ADD  CONSTRAINT [FK_RefreshToken_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RefreshToken] CHECK CONSTRAINT [FK_RefreshToken_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[TransactionsActions]  WITH CHECK ADD  CONSTRAINT [FK_TransactionsActions_Persons_Persons_IDN] FOREIGN KEY([Persons_IDN])
REFERENCES [dbo].[Persons] ([PersonIDN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TransactionsActions] CHECK CONSTRAINT [FK_TransactionsActions_Persons_Persons_IDN]
GO
ALTER TABLE [dbo].[TransactionsRegisters]  WITH CHECK ADD  CONSTRAINT [FK_TransactionsRegisters_Transactions_Transactions_IDN] FOREIGN KEY([Transactions_IDN])
REFERENCES [dbo].[Transactions] ([TransactionIDN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TransactionsRegisters] CHECK CONSTRAINT [FK_TransactionsRegisters_Transactions_Transactions_IDN]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Persons_Persons_IDN] FOREIGN KEY([Persons_IDN])
REFERENCES [dbo].[Persons] ([PersonIDN])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Persons_Persons_IDN]
GO
