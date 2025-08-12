USE [RGLAS]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 24/06/2025 10:44:49 ******/
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
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 24/06/2025 10:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currencies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Entity] [nvarchar](100) NOT NULL,
	[Currency] [nvarchar](100) NOT NULL,
	[AlphabeticCode] [char](3) NOT NULL,
	[NumericCode] [char](3) NULL,
	[MinorUnit] [char](1) NULL,
	[IsFundYesNo] [bit] NOT NULL,
 CONSTRAINT [PK_Currencies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DynamicLists]    Script Date: 24/06/2025 10:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DynamicLists](
	[DynamicListIDC] [nvarchar](50) NOT NULL,
	[DynamicListIDN] [int] IDENTITY(1,1) NOT NULL,
	[LinkedCategory] [nvarchar](50) NULL,
	[MainListID] [int] NULL,
	[MenuCategory] [nvarchar](50) NULL,
	[MenuValue] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[Rank] [int] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedBy_Name] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[UpdatedBy_Name] [nvarchar](50) NULL,
	[ModifiedAt] [datetime] NULL,
 CONSTRAINT [PK_DynamicList] PRIMARY KEY CLUSTERED 
(
	[DynamicListIDC] ASC,
	[DynamicListIDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 24/06/2025 10:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedBy_Name] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[UpdatedBy_Name] [nvarchar](50) NULL,
	[ModifiedAt] [datetime] NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupsMenus]    Script Date: 24/06/2025 10:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupsMenus](
	[GroupID] [int] NOT NULL,
	[MenuID] [int] NOT NULL,
	[Access] [int] NULL,
	[CanInsert] [int] NULL,
	[CanUpdate] [int] NULL,
	[CanDelete] [int] NULL,
	[Admin] [int] NULL,
 CONSTRAINT [PK_GroupsMenus] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 24/06/2025 10:44:49 ******/
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
	[CreatedBy] [int] NOT NULL,
	[CreatedBy_Name] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[UpdatedBy_Name] [nvarchar](50) NULL,
	[ModifiedAt] [datetime] NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Numbers]    Script Date: 24/06/2025 10:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Numbers](
	[Number] [int] NOT NULL,
 CONSTRAINT [PK_Numbers] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (1, N'Afghanistan', N'AF', N'AF', N'AFG', N'4', N'AF', N'Kabul ', N'Asia ', N'Afghan', N'Afghans', N'Afghani ', N'AFA', N'26813057', N'Afghanistan')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (2, N'Albania', N'AL', N'AL', N'ALB', N'8', N'AL', N'Tirana ', N'Europe ', N'Albanian', N'Albanians', N'Lek ', N'ALL', N'3510484', N'Albania')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (3, N'Algeria', N'AG', N'DZ', N'DZA', N'12', N'DZ', N'Algiers ', N'Africa ', N'Algerian', N'Algerians', N'Algerian Dinar ', N'DZD', N'31736053', N'Algeria')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (4, N'American Samoa', N'AQ', N'AS', N'ASM', N'16', N'AS', N'Pago Pago ', N'Oceania ', N'American Samoan', N'American Samoans', N'US Dollar', N'USD', N'67084', N'American Samoa')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (5, N'Andorra', N'AN', N'AD', N'AND', N'20', N'AD', N'Andorra la Vella ', N'Europe ', N'Andorran', N'Andorrans', N'Euro', N'EUR', N'67627', N'Andorra')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (6, N'Angola', N'AO', N'AO', N'AGO', N'24', N'AO', N'Luanda ', N'Africa ', N'Angolan', N'Angolans', N'Kwanza ', N'AOA', N'10366031', N'Angola')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (7, N'Anguilla', N'AV', N'AI', N'AIA', N'660', N'AI', N'The Valley ', N'Central America and the Caribbean ', N'Anguillan', N'Anguillans', N'East Caribbean Dollar ', N'XCD', N'12132', N'Anguilla')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (8, N'Antarctica', N'AY', N'AQ', N'ATA', N'10', N'AQ', N'-', N'Antarctic Region ', N'-', N'-', N'', N'', N'0', N'Antarctica')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (9, N'Antigua and Barbuda', N'AC', N'AG', N'ATG', N'28', N'AG', N'Saint Johns ', N'Central America and the Caribbean ', N'Antiguan and Barbudan', N'Antiguans and Barbudans', N'East Caribbean Dollar ', N'XCD', N'66970', N'Antigua and Barbuda')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (10, N'Argentina', N'AR', N'AR', N'ARG', N'32', N'AR', N'Buenos Aires ', N'South America ', N'Argentine', N'Argentines', N'Argentine Peso ', N'ARS', N'37384816', N'Argentina')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (11, N'Armenia', N'AM', N'AM', N'ARM', N'51', N'AM', N'Yerevan ', N'Commonwealth of Independent States ', N'Armenian', N'Armenians', N'Armenian Dram ', N'AMD', N'3336100', N'Armenia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (12, N'Aruba', N'AA', N'AW', N'ABW', N'533', N'AW', N'Oranjestad ', N'Central America and the Caribbean ', N'Aruban', N'Arubans', N'Aruban Guilder', N'AWG', N'70007', N'Aruba')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (13, N'Ashmore and Cartier', N'AT', N'--', N'-- ', N'--', N'--', N'-', N'Southeast Asia ', N'-', N'-', N'', N'', N'0', N'Ashmore and Cartier')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (14, N'Australia', N'AS', N'AU', N'AUS', N'36', N'AU', N'Canberra ', N'Oceania ', N'Australian', N'Australians', N'Australian dollar ', N'AUD', N'19357594', N'Australia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (15, N'Austria', N'AU', N'AT', N'AUT', N'40', N'AT', N'Vienna ', N'Europe ', N'Austrian', N'Austrians', N'Euro', N'EUR', N'8150835', N'Austria')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (16, N'Azerbaijan', N'AJ', N'AZ', N'AZE', N'31', N'AZ', N'Baku (Baki) ', N'Commonwealth of Independent States ', N'Azerbaijani', N'Azerbaijanis', N'Azerbaijani Manat ', N'AZM', N'7771092', N'Azerbaijan')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (17, N'The Bahamas', N'BF', N'BS', N'BHS', N'44', N'BS', N'Nassau ', N'Central America and the Caribbean ', N'Bahamian', N'Bahamians', N'Bahamian Dollar ', N'BSD', N'297852', N'The Bahamas')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (18, N'Bahrain', N'BA', N'BH', N'BHR', N'48', N'BH', N'Manama ', N'Middle East ', N'Bahraini', N'Bahrainis', N'Bahraini Dinar ', N'BHD', N'645361', N'Bahrain')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (19, N'Baker Island', N'FQ', N'--', N'-- ', N'--', N'--', N'-', N'Oceania ', N'-', N'-', N'', N'', N'0', N'Baker Island')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (20, N'Bangladesh', N'BG', N'BD', N'BGD', N'50', N'BD', N'Dhaka ', N'Asia ', N'Bangladeshi', N'Bangladeshis', N'Taka ', N'BDT', N'131269860', N'Bangladesh')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (21, N'Barbados', N'BB', N'BB', N'BRB', N'52', N'BB', N'Bridgetown ', N'Central America and the Caribbean ', N'Barbadian', N'Barbadians', N'Barbados Dollar', N'BBD', N'275330', N'Barbados')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (22, N'Bassas da India', N'BS', N'--', N'-- ', N'--', N'--', N'-', N'Africa ', N'-', N'-', N'', N'', N'0', N'Bassas da India')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (23, N'Belarus', N'BO', N'BY', N'BLR', N'112', N'BY', N'Minsk ', N'Commonwealth of Independent States ', N'Belarusian', N'Belarusians', N'Belarussian Ruble', N'BYR', N'10350194', N'Belarus')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (24, N'Belgium', N'BE', N'BE', N'BEL', N'56', N'BE', N'Brussels ', N'Europe ', N'Belgian', N'Belgians', N'Euro', N'EUR', N'10258762', N'Belgium')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (25, N'Belize', N'BH', N'BZ', N'BLZ', N'84', N'BZ', N'Belmopan ', N'Central America and the Caribbean ', N'Belizean', N'Belizeans', N'Belize Dollar', N'BZD', N'256062', N'Belize')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (26, N'Benin', N'BN', N'BJ', N'BEN', N'204', N'BJ', N'Porto-Novo  ', N'Africa ', N'Beninese', N'Beninese', N'CFA Franc BCEAO', N'XOF', N'6590782', N'Benin')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (27, N'Bermuda', N'BD', N'BM', N'BMU', N'60', N'BM', N'Hamilton ', N'North America ', N'Bermudian', N'Bermudians', N'Bermudian Dollar ', N'BMD', N'63503', N'Bermuda')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (28, N'Bhutan', N'BT', N'BT', N'BTN', N'64', N'BT', N'Thimphu ', N'Asia ', N'Bhutanese', N'Bhutanese', N'Ngultrum', N'BTN', N'2049412', N'Bhutan')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (29, N'Bolivia', N'BL', N'BO', N'BOL', N'68', N'BO', N'La Paz /Sucre ', N'South America ', N'Bolivian', N'Bolivians', N'Boliviano ', N'BOB', N'8300463', N'Bolivia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (30, N'Bosnia and Herzegovina', N'BK', N'BA', N'BIH', N'70', N'BA', N'Sarajevo ', N'Bosnia and Herzegovina, Europe ', N'Bosnian and Herzegovinian', N'Bosnians and Herzegovinians', N'Convertible Marka', N'BAM', N'3922205', N'Bosnia and Herzegovina')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (31, N'Botswana', N'BC', N'BW', N'BWA', N'72', N'BW', N'Gaborone ', N'Africa ', N'Motswana', N'Batswana', N'Pula ', N'BWP', N'1586119', N'Botswana')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (32, N'Bouvet Island', N'BV', N'BV', N'BVT', N'74', N'BV', N'-', N'Antarctic Region ', N'-', N'-', N'Norwegian Krone ', N'NOK', N'0', N'Bouvet Island')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (33, N'Brazil', N'BR', N'BR', N'BRA', N'76', N'BR', N'Brasilia ', N'South America ', N'Brazilian', N'Brazilians', N'Brazilian Real ', N'BRL', N'174468575', N'Brazil')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (34, N'British Indian Ocean Territory', N'IO', N'IO', N'IOT', N'86', N'IO', N'-', N'World ', N'-', N'-', N'US Dollar', N'USD', N'0', N'The British Indian Ocean Territory')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (35, N'British Virgin Islands', N'VI', N'VG', N'VGB', N'92', N'VG', N'Road Town ', N'Central America and the Caribbean ', N'British Virgin Islander', N'British Virgin Islanders', N'US Dollar', N'USD', N'20812', N'The British Virgin Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (36, N'Brunei Darussalam', N'BX', N'BN', N'BRN', N'96', N'BN', N'-', N'-', N'-', N'-', N'Brunei Dollar', N'BND', N'372361', N'Brunei')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (37, N'Bulgaria', N'BU', N'BG', N'BGR', N'100', N'BG', N'Sofia ', N'Europe ', N'Bulgarian', N'Bulgarians', N'Lev ', N'BGN', N'7707495', N'Bulgaria')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (38, N'Burkina Faso', N'UV', N'BF', N'BFA', N'854', N'BF', N'Ouagadougou ', N'Africa ', N'Burkinabe', N'Burkinabe', N'CFA Franc BCEAO', N'XOF', N'12272289', N'Burkina Faso')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (39, N'Burma', N'BM', N'MM', N'MMR', N'104', N'MM', N'Rangoon ', N'Southeast Asia ', N'Burmese', N'Burmese', N'kyat ', N'MMK', N'41994678', N'Burma')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (40, N'Burundi', N'BY', N'BI', N'BDI', N'108', N'BI', N'Bujumbura ', N'Africa ', N'Burundi', N'Burundians', N'Burundi Franc ', N'BIF', N'6223897', N'Burundi')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (41, N'Cambodia', N'CB', N'KH', N'KHM', N'116', N'KH', N'Phnom Penh ', N'Southeast Asia ', N'Cambodian', N'Cambodians', N'Riel ', N'KHR', N'12491501', N'Cambodia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (42, N'Cameroon', N'CM', N'CM', N'CMR', N'120', N'CM', N'Yaounde ', N'Africa ', N'Cameroonian', N'Cameroonians', N'CFA Franc BEAC', N'XAF', N'15803220', N'Cameroon')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (43, N'Canada', N'CA', N'CA', N'CAN', N'124', N'CA', N'Ottawa ', N'North America ', N'Canadian', N'Canadians', N'Canadian Dollar ', N'CAD', N'31592805', N'Canada')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (44, N'Cape Verde', N'CV', N'CV', N'CPV', N'132', N'CV', N'Praia ', N'World ', N'Cape Verdean', N'Cape Verdeans', N'Cape Verdean Escudo ', N'CVE', N'405163', N'Cape Verde')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (45, N'Cayman Islands', N'CJ', N'KY', N'CYM', N'136', N'KY', N'George Town ', N'Central America and the Caribbean ', N'Caymanian', N'Caymanians', N'Cayman Islands Dollar', N'KYD', N'35527', N'The Cayman Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (46, N'Central African Republic', N'CT', N'CF', N'CAF', N'140', N'CF', N'Bangui ', N'Africa ', N'Central African', N'Central Africans', N'CFA Franc BEAC', N'XAF', N'3576884', N'The Central African Republic')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (47, N'Chad', N'CD', N'TD', N'TCD', N'148', N'TD', N'N-Djamena ', N'Africa ', N'Chadian', N'Chadians', N'CFA Franc BEAC', N'XAF', N'8707078', N'Chad')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (48, N'Chile', N'CI', N'CL', N'CHL', N'152', N'CL', N'Santiago ', N'South America ', N'Chilean', N'Chileans', N'Chilean Peso ', N'CLP', N'15328467', N'Chile')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (49, N'China', N'CH', N'CN', N'CHN', N'156', N'CN', N'Beijing ', N'Asia ', N'Chinese', N'Chinese', N'Yuan Renminbi', N'CNY', N'1273111290', N'China')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (50, N'Christmas Island', N'KT', N'CX', N'CXR', N'162', N'CX', N'The Settlement ', N'Southeast Asia ', N'Christmas Island', N'Christmas Islanders', N'Australian Dollar ', N'AUD', N'2771', N'Christmas Island')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (51, N'Clipperton Island', N'IP', N'--', N'-- ', N'--', N'--', N'-', N'World ', N'-', N'-', N'', N'', N'0', N'Clipperton Island')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (52, N'Cocos (Keeling) Islands', N'CK', N'CC', N'CCK', N'166', N'CC', N'West Island ', N'Southeast Asia ', N'Cocos Islander', N'Cocos Islanders', N'Australian Dollar ', N'AUD', N'633', N'The Cocos Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (53, N'Colombia', N'CO', N'CO', N'COL', N'170', N'CO', N'Bogota ', N'South America, Central America and the Caribbean ', N'Colombian', N'Colombians', N'Colombian Peso ', N'COP', N'40349388', N'Colombia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (54, N'Comoros', N'CN', N'KM', N'COM', N'174', N'KM', N'Moroni ', N'Africa ', N'Comoran', N'Comorans', N'Comoro Franc', N'KMF', N'596202', N'Comoros')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (55, N'Congo, Democratic Republic of the', N'CG', N'CD', N'COD', N'180', N'CD', N'Kinshasa ', N'Africa ', N'Congolese', N'Congolese', N'Franc Congolais', N'CDF', N'53624718', N'Democratic Republic of the Congo')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (56, N'Congo, Republic of the', N'CF', N'CG', N'COG', N'178', N'CG', N'Brazzaville ', N'Africa ', N'Congolese', N'Congolese', N'CFA Franc BEAC', N'XAF', N'2894336', N'Republic of the Congo')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (57, N'Cook Islands', N'CW', N'CK', N'COK', N'184', N'CK', N'Avarua ', N'Oceania ', N'Cook Islander', N'Cook Islanders', N'New Zealand Dollar ', N'NZD', N'20611', N'The Cook Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (58, N'Coral Sea Islands', N'CR', N'--', N'-- ', N'--', N'--', N'-', N'Oceania ', N'-', N'-', N'', N'', N'0', N'The Coral Sea Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (59, N'Costa Rica', N'CS', N'CR', N'CRI', N'188', N'CR', N'San Jose ', N'Central America and the Caribbean ', N'Costa Rican', N'Costa Ricans', N'Costa Rican Colon', N'CRC', N'3773057', N'Costa Rica')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (60, N'Cote d-Ivoire', N'IV', N'CI', N'CIV', N'384', N'CI', N'Yamoussoukro', N'Africa ', N'Ivorian', N'Ivorians', N'CFA Franc BCEAO', N'XOF', N'16393221', N'Cote d-Ivoire')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (61, N'Croatia', N'HR', N'HR', N'HRV', N'191', N'HR', N'Zagreb ', N'Europe ', N'Croatian', N'Croats', N'Kuna', N'HRK', N'4334142', N'Croatia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (62, N'Cuba', N'CU', N'CU', N'CUB', N'192', N'CU', N'Havana ', N'Central America and the Caribbean ', N'Cuban', N'Cubans', N'Cuban Peso', N'CUP', N'11184023', N'Cuba')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (63, N'Cyprus', N'CY', N'CY', N'CYP', N'196', N'CY', N'Nicosia ', N'Middle East ', N'Cypriot', N'Cypriots', N'Cyprus Pound', N'CYP', N'762887', N'Cyprus')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (64, N'Czech Republic', N'EZ', N'CZ', N'CZE', N'203', N'CZ', N'Prague ', N'Europe ', N'Czech', N'Czechs', N'Czech Koruna', N'CZK', N'10264212', N'The Czech Republic')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (65, N'Denmark', N'DA', N'DK', N'DNK', N'208', N'DK', N'Copenhagen ', N'Europe ', N'Danish', N'Danes', N'Danish Krone', N'DKK', N'5352815', N'Denmark')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (66, N'Djibouti', N'DJ', N'DJ', N'DJI', N'262', N'DJ', N'Djibouti ', N'Africa ', N'Djiboutian', N'Djiboutians', N'Djibouti Franc', N'DJF', N'460700', N'Djibouti')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (67, N'Dominica', N'DO', N'DM', N'DMA', N'212', N'DM', N'Roseau ', N'Central America and the Caribbean ', N'Dominican', N'Dominicans', N'East Caribbean Dollar', N'XCD', N'70786', N'Dominica')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (68, N'Dominican Republic', N'DR', N'DO', N'DOM', N'214', N'DO', N'Santo Domingo ', N'Central America and the Caribbean ', N'Dominican', N'Dominicans', N'Dominican Peso', N'DOP', N'8581477', N'The Dominican Republic')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (69, N'East Timor', N'TT', N'TL', N'TLS', N'626', N'TP', N'-', N'-', N'-', N'-', N'Timor Escudo', N'TPE', N'1040880', N'East Timor')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (70, N'Ecuador', N'EC', N'EC', N'ECU', N'218', N'EC', N'Quito ', N'South America ', N'Ecuadorian', N'Ecuadorians', N'US Dollar', N'USD', N'13183978', N'Ecuador')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (71, N'Egypt', N'EG', N'EG', N'EGY', N'818', N'EG', N'Cairo ', N'Africa ', N'Egyptian', N'Egyptians', N'Egyptian Pound ', N'EGP', N'69536644', N'Egypt')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (72, N'El Salvador', N'ES', N'SV', N'SLV', N'222', N'SV', N'San Salvador ', N'Central America and the Caribbean ', N'Salvadoran', N'Salvadorans', N'El Salvador Colon', N'SVC', N'6237662', N'El Salvador')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (73, N'Equatorial Guinea', N'EK', N'GQ', N'GNQ', N'226', N'GQ', N'Malabo ', N'Africa ', N'Equatorial Guinean', N'Equatorial Guineans', N'CFA Franc BEAC', N'XAF', N'486060', N'Equatorial Guinea')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (74, N'Eritrea', N'ER', N'ER', N'ERI', N'232', N'ER', N'Asmara ', N'Africa ', N'Eritrean', N'Eritreans', N'Nakfa', N'ERN', N'4298269', N'Eritrea')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (75, N'Estonia', N'EN', N'EE', N'EST', N'233', N'EE', N'Tallinn ', N'Europe ', N'Estonian', N'Estonians', N'Kroon', N'EEK', N'1423316', N'Estonia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (76, N'Ethiopia', N'ET', N'ET', N'ETH', N'231', N'ET', N'Addis Ababa ', N'Africa ', N'Ethiopian', N'Ethiopians', N'Ethiopian Birr', N'ETB', N'65891874', N'Ethiopia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (77, N'Europa Island', N'EU', N'--', N'-- ', N'--', N'--', N'-', N'Africa ', N'-', N'-', N'', N'', N'0', N'Europa Island')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (78, N'Falkland Islands (Islas Malvinas)', N'FK', N'FK', N'FLK', N'238', N'FK', N'Stanley', N'South America', N'Falkland Island', N'Falkland Islanders', N'Falkland Islands Pound', N'FKP', N'2895', N'The Falkland Islands ')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (79, N'Faroe Islands', N'FO', N'FO', N'FRO', N'234', N'FO', N'Torshavn ', N'Europe ', N'Faroese', N'Faroese', N'Danish Krone ', N'DKK', N'45661', N'The Faroe Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (80, N'Fiji', N'FJ', N'FJ', N'FJI', N'242', N'FJ', N'Suva ', N'Oceania ', N'Fijian', N'Fijians', N'Fijian Dollar ', N'FJD', N'844330', N'Fiji')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (81, N'Finland', N'FI', N'FI', N'FIN', N'246', N'FI', N'Helsinki ', N'Europe ', N'Finnish', N'Finns', N'Euro', N'EUR', N'5175783', N'Finland')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (82, N'France', N'FR', N'FR', N'FRA', N'250', N'FR', N'Paris ', N'Europe ', N'Frenchman', N'Frenchmen', N'Euro', N'EUR', N'59551227', N'France')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (83, N'France, Metropolitan', N'--', N'--', N'-- ', N'--', N'FX', N'-', N'-', N'-', N'-', N'Euro', N'EUR', N'0', N'Metropolitan France')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (84, N'French Guiana', N'FG', N'GF', N'GUF', N'254', N'GF', N'Cayenne ', N'South America ', N'French Guianese', N'French Guianese', N'Euro', N'EUR', N'177562', N'French Guiana')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (85, N'French Polynesia', N'FP', N'PF', N'PYF', N'258', N'PF', N'Papeete ', N'Oceania ', N'French Polynesian', N'French Polynesians', N'CFP Franc', N'XPF', N'253506', N'French Polynesia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (86, N'French Southern and Antarctic Lands', N'FS', N'TF', N'ATF', N'260', N'TF', N'-', N'Antarctic Region ', N'-', N'-', N'Euro', N'EUR', N'0', N'The French Southern and Antarctic Lands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (87, N'Gabon', N'GB', N'GA', N'GAB', N'266', N'GA', N'Libreville ', N'Africa ', N'Gabonese', N'Gabonese', N'CFA Franc BEAC', N'XAF', N'1221175', N'Gabon')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (88, N'The Gambia', N'GA', N'GM', N'GMB', N'270', N'GM', N'Banjul ', N'Africa ', N'Gambian', N'Gambians', N'Dalasi', N'GMD', N'1411205', N'The Gambia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (89, N'Gaza Strip', N'GZ', N'--', N'-- ', N'--', N'--', N'-', N'Middle East ', N'-', N'-', N'New Israeli Shekel ', N'ILS', N'1178119', N'The Gaza Strip')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (90, N'Georgia', N'GG', N'GE', N'GEO', N'268', N'GE', N'T-bilisi ', N'Commonwealth of Independent States ', N'Georgian', N'Georgians', N'Lari', N'GEL', N'4989285', N'Georgia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (91, N'Germany', N'GM', N'DE', N'DEU', N'276', N'DE', N'Berlin ', N'Europe ', N'German', N'Germans', N'Euro', N'EUR', N'83029536', N'Deutschland')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (92, N'Ghana', N'GH', N'GH', N'GHA', N'288', N'GH', N'Accra ', N'Africa ', N'Ghanaian', N'Ghanaians', N'Cedi', N'GHC', N'19894014', N'Ghana')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (93, N'Gibraltar', N'GI', N'GI', N'GIB', N'292', N'GI', N'Gibraltar ', N'Europe ', N'Gibraltar', N'Gibraltarians', N'Gibraltar Pound', N'GIP', N'27649', N'Gibraltar')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (94, N'Glorioso Islands', N'GO', N'--', N'-- ', N'--', N'--', N'-', N'Africa ', N'-', N'-', N'', N'', N'0', N'The Glorioso Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (95, N'Greece', N'GR', N'GR', N'GRC', N'300', N'GR', N'Athens ', N'Europe ', N'Greek', N'Greeks', N'Euro', N'EUR', N'10623835', N'Greece')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (96, N'Greenland', N'GL', N'GL', N'GRL', N'304', N'GL', N'Nuuk ', N'Arctic Region ', N'Greenlandic', N'Greenlanders', N'Danish Krone', N'DKK', N'56352', N'Greenland')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (97, N'Grenada', N'GJ', N'GD', N'GRD', N'308', N'GD', N'Saint Georges ', N'Central America and the Caribbean ', N'Grenadian', N'Grenadians', N'East Caribbean Dollar', N'XCD', N'89227', N'Grenada')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (98, N'Guadeloupe', N'GP', N'GP', N'GLP', N'312', N'GP', N'Basse-Terre ', N'Central America and the Caribbean ', N'Guadeloupe', N'Guadeloupians', N'Euro', N'EUR', N'431170', N'Guadeloupe')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (99, N'Guam', N'GQ', N'GU', N'GUM', N'316', N'GU', N'Hagatna', N'Oceania ', N'Guamanian', N'Guamanians', N'US Dollar', N'USD', N'157557', N'Guam')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (100, N'Guatemala', N'GT', N'GT', N'GTM', N'320', N'GT', N'Guatemala ', N'Central America and the Caribbean ', N'Guatemalan', N'Guatemalans', N'Quetzal', N'GTQ', N'12974361', N'Guatemala')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (101, N'Guernsey', N'GK', N'--', N'-- ', N'--', N'GG', N'Saint Peter Port ', N'Europe ', N'Channel Islander', N'Channel Islanders', N'Pound Sterling', N'GBP', N'64342', N'Guernsey')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (102, N'Guinea', N'GV', N'GN', N'GIN', N'324', N'GN', N'Conakry ', N'Africa ', N'Guinean', N'Guineans', N'Guinean Franc ', N'GNF', N'7613870', N'Guinea')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (103, N'Guinea-Bissau', N'PU', N'GW', N'GNB', N'624', N'GW', N'Bissau ', N'Africa ', N'Guinean', N'Guineans', N'CFA Franc BCEAO', N'XOF', N'1315822', N'Guinea-Bissau')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (104, N'Guyana', N'GY', N'GY', N'GUY', N'328', N'GY', N'Georgetown ', N'South America ', N'Guyanese', N'Guyanese', N'Guyana Dollar', N'GYD', N'697181', N'Guyana')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (105, N'Haiti', N'HA', N'HT', N'HTI', N'332', N'HT', N'Port-au-Prince ', N'Central America and the Caribbean ', N'Haitian', N'Haitians', N'Gourde', N'HTG', N'6964549', N'Haiti')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (106, N'Heard Island and McDonald Islands', N'HM', N'HM', N'HMD', N'334', N'HM', N'-', N'Antarctic Region ', N'-', N'-', N'Australian Dollar', N'AUD', N'0', N'The Heard Island and McDonald Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (107, N'Holy See (Vatican City)', N'VT', N'VA', N'VAT', N'336', N'VA', N'Vatican City ', N'Europe ', N'-', N'-', N'Euro', N'EUR', N'890', N'The Vatican City')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (108, N'Honduras', N'HO', N'HN', N'HND', N'340', N'HN', N'Tegucigalpa ', N'Central America and the Caribbean ', N'Honduran', N'Hondurans', N'Lempira', N'HNL', N'6406052', N'Honduras')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (109, N'Hong Kong (SAR)', N'HK', N'HK', N'HKG', N'344', N'HK', N'-', N'Southeast Asia ', N'-', N'-', N'Hong Kong Dollar ', N'HKD', N'0', N'Xianggang ')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (110, N'Howland Island', N'HQ', N'--', N'-- ', N'--', N'--', N'-', N'Oceania ', N'-', N'-', N'', N'', N'7210505', N'Howland Island')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (111, N'Hungary', N'HU', N'HU', N'HUN', N'348', N'HU', N'Budapest ', N'Europe ', N'Hungarian', N'Hungarians', N'Forint', N'HUF', N'10106017', N'Hungary')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (112, N'Iceland', N'IC', N'IS', N'ISL', N'352', N'IS', N'Reykjavik ', N'Arctic Region ', N'Icelandic', N'Icelanders', N'Iceland Krona', N'ISK', N'277906', N'Iceland')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (113, N'India', N'IN', N'IN', N'IND', N'356', N'IN', N'New Delhi ', N'Asia ', N'Indian', N'Indians', N'Indian Rupee ', N'INR', N'1029991145', N'India')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (114, N'Indonesia', N'ID', N'ID', N'IDN', N'360', N'ID', N'Jakarta ', N'Southeast Asia ', N'Indonesian', N'Indonesians', N'Rupiah', N'IDR', N'228437870', N'Indonesia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (115, N'Iran', N'IR', N'IR', N'IRN', N'364', N'IR', N'Tehran ', N'Middle East ', N'Iranian', N'Iranians', N'Iranian Rial', N'IRR', N'66128965', N'Iran')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (116, N'Iraq', N'IZ', N'IQ', N'IRQ', N'368', N'IQ', N'Baghdad ', N'Middle East ', N'Iraqi', N'Iraqis', N'Iraqi Dinar', N'IQD', N'23331985', N'Iraq')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (117, N'Ireland', N'EI', N'IE', N'IRL', N'372', N'IE', N'Dublin ', N'Europe ', N'Irish', N'Irishmen', N'Euro', N'EUR', N'3840838', N'Ireland')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (118, N'Israel', N'IS', N'IL', N'ISR', N'376', N'IL', N'Jerusalem', N'Middle East ', N'Israeli', N'Israelis', N'New Israeli Sheqel', N'ILS', N'5938093', N'Israel')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (119, N'Italy', N'IT', N'IT', N'ITA', N'380', N'IT', N'Rome ', N'Europe ', N'Italian', N'Italians', N'Euro', N'EUR', N'57679825', N'Italia ')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (120, N'Jamaica', N'JM', N'JM', N'JAM', N'388', N'JM', N'Kingston ', N'Central America and the Caribbean ', N'Jamaican', N'Jamaicans', N'Jamaican dollar ', N'JMD', N'2665636', N'Jamaica')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (121, N'Jan Mayen', N'JN', N'--', N'-- ', N'--', N'--', N'-', N'Arctic Region ', N'-', N'-', N'Norway Kroner', N'NOK', N'0', N'Jan Mayen')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (122, N'Japan', N'JA', N'JP', N'JPN', N'392', N'JP', N'Tokyo ', N'Asia ', N'Japanese', N'Japanese', N'Yen ', N'JPY', N'126771662', N'Japan')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (123, N'Jarvis Island', N'DQ', N'--', N'-- ', N'--', N'--', N'-', N'Oceania ', N'-', N'-', N'', N'', N'0', N'Jarvis Island')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (124, N'Jersey', N'JE', N'--', N'-- ', N'--', N'JE', N'Saint Helier ', N'Europe ', N'Channel Islander', N'Channel Islanders', N'Pound Sterling', N'GBP', N'89361', N'Jersey')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (125, N'Johnston Atoll', N'JQ', N'--', N'-- ', N'--', N'--', N'-', N'Oceania ', N'-', N'-', N'', N'', N'0', N'Johnston Atoll')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (126, N'Jordan', N'JO', N'JO', N'JOR', N'400', N'JO', N'Amman ', N'Middle East ', N'Jordanian', N'Jordanians', N'Jordanian Dinar', N'JOD', N'5153378', N'Jordan')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (127, N'Juan de Nova Island', N'JU', N'--', N'-- ', N'--', N'--', N'-', N'Africa ', N'-', N'-', N'', N'', N'0', N'Juan de Nova Island')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (128, N'Kazakhstan', N'KZ', N'KZ', N'KAZ', N'398', N'KZ', N'Astana ', N'Commonwealth of Independent States ', N'Kazakhstani', N'Kazakhstanis', N'Tenge', N'KZT', N'16731303', N'Kazakhstan')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (129, N'Kenya', N'KE', N'KE', N'KEN', N'404', N'KE', N'Nairobi ', N'Africa ', N'Kenyan', N'Kenyans', N'Kenyan shilling ', N'KES', N'30765916', N'Kenya')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (130, N'Kingman Reef', N'KQ', N'--', N'-- ', N'--', N'--', N'-', N'Oceania ', N'-', N'-', N'', N'', N'0', N'Kingman Reef')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (131, N'Kiribati', N'KR', N'KI', N'KIR', N'296', N'KI', N'Tarawa ', N'Oceania ', N'I-Kiribati', N'I-Kiribati', N'Australian dollar ', N'AUD', N'94149', N'Kiribati')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (132, N'Korea, North', N'KN', N'KP', N'PRK', N'408', N'KP', N'P-yongyang ', N'Asia ', N'Korean', N'Koreans', N'North Korean Won', N'KPW', N'21968228', N'North Korea')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (133, N'Korea, South', N'KS', N'KR', N'KOR', N'410', N'KR', N'Seoul ', N'Asia ', N'Korean', N'Koreans', N'Won', N'KRW', N'47904370', N'South Korea')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (134, N'Kuwait', N'KU', N'KW', N'KWT', N'414', N'KW', N'Kuwait ', N'Middle East ', N'Kuwaiti', N'Kuwaitis', N'Kuwaiti Dinar', N'KWD', N'2041961', N'Al Kuwayt')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (135, N'Kyrgyzstan', N'KG', N'KG', N'KGZ', N'417', N'KG', N'Bishkek ', N'Commonwealth of Independent States ', N'Kyrgyzstani', N'Kyrgyzstanis', N'Som', N'KGS', N'4753003', N'Kyrgyzstan')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (136, N'Laos', N'LA', N'LA', N'LAO', N'418', N'LA', N'Vientiane ', N'Southeast Asia ', N'Lao', N'Laos', N'Kip', N'LAK', N'5635967', N'Laos')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (137, N'Latvia', N'LG', N'LV', N'LVA', N'428', N'LV', N'Riga ', N'Europe ', N'Latvian', N'Latvians', N'Latvian Lats', N'LVL', N'2385231', N'Latvia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (138, N'Lebanon', N'LE', N'LB', N'LBN', N'422', N'LB', N'Beirut ', N'Middle East ', N'Lebanese', N'Lebanese', N'Lebanese Pound', N'LBP', N'3627774', N'Lebanon')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (139, N'Lesotho', N'LT', N'LS', N'LSO', N'426', N'LS', N'Maseru ', N'Africa ', N'Basotho', N'Mosotho', N'Loti', N'LSL', N'2177062', N'Lesotho')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (140, N'Liberia', N'LI', N'LR', N'LBR', N'430', N'LR', N'Monrovia ', N'Africa ', N'Liberian', N'Liberians', N'Liberian Dollar', N'LRD', N'3225837', N'Liberia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (141, N'Libya', N'LY', N'LY', N'LBY', N'434', N'LY', N'Tripoli ', N'Africa ', N'Libyan', N'Libyans', N'Libyan Dinar', N'LYD', N'5240599', N'Libya')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (142, N'Liechtenstein', N'LS', N'LI', N'LIE', N'438', N'LI', N'Vaduz ', N'Europe ', N'Liechtenstein', N'Liechtensteiners', N'Swiss Franc', N'CHF', N'32528', N'Liechtenstein')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (143, N'Lithuania', N'LH', N'LT', N'LTU', N'440', N'LT', N'Vilnius ', N'Europe ', N'Lithuanian', N'Lithuanians', N'Lithuanian Litas', N'LTL', N'3610535', N'Lithuania')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (144, N'Luxembourg', N'LU', N'LU', N'LUX', N'442', N'LU', N'Luxembourg ', N'Europe ', N'Luxembourg', N'Luxembourgers', N'Euro', N'EUR', N'442972', N'Luxembourg')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (145, N'Macao', N'MC', N'MO', N'MAC', N'446', N'MO', N'-', N'Southeast Asia ', N'Chinese', N'Chinese', N'Pataca', N'MOP', N'453733', N'Macao')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (146, N'Macedonia, The Former Yugoslav Republic of', N'MK', N'MK', N'MKD', N'807', N'MK', N'Skopje ', N'Europe ', N'Macedonian', N'Macedonians', N'Denar', N'MKD', N'2046209', N'Makedonija')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (147, N'Madagascar', N'MA', N'MG', N'MDG', N'450', N'MG', N'Antananarivo ', N'Africa ', N'Malagasy', N'Malagasy', N'Malagasy Franc', N'MGF', N'15982563', N'Madagascar')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (148, N'Malawi', N'MI', N'MW', N'MWI', N'454', N'MW', N'Lilongwe ', N'Africa ', N'Malawian', N'Malawians', N'Kwacha', N'MWK', N'10548250', N'Malawi')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (149, N'Malaysia', N'MY', N'MY', N'MYS', N'458', N'MY', N'Kuala Lumpur ', N'Southeast Asia ', N'Malaysian', N'Malaysians', N'Malaysian Ringgit', N'MYR', N'22229040', N'Malaysia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (150, N'Maldives', N'MV', N'MV', N'MDV', N'462', N'MV', N'Male ', N'Asia ', N'Maldivian', N'Maldivians', N'Rufiyaa', N'MVR', N'310764', N'Maldives')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (151, N'Mali', N'ML', N'ML', N'MLI', N'466', N'ML', N'Bamako ', N'Africa ', N'Malian', N'Malians', N'CFA Franc BCEAO', N'XOF', N'11008518', N'Mali')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (152, N'Malta', N'MT', N'MT', N'MLT', N'470', N'MT', N'Valletta ', N'Europe ', N'Maltese', N'Maltese', N'Euro', N'EUR', N'394583', N'Malta')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (153, N'Man, Isle of', N'IM', N'--', N'-- ', N'--', N'IM', N'Douglas ', N'Europe ', N'Manxman', N'Manxmen', N'Pound Sterling', N'GBP', N'73489', N'The Isle of Man')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (154, N'Marshall Islands', N'RM', N'MH', N'MHL', N'584', N'MH', N'Majuro ', N'Oceania ', N'Marshallese', N'Marshallese', N'US Dollar', N'USD', N'70822', N'The Marshall Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (155, N'Martinique', N'MB', N'MQ', N'MTQ', N'474', N'MQ', N'Fort-de-France ', N'Central America and the Caribbean ', N'Martiniquais', N'Martiniquais', N'Euro', N'EUR', N'418454', N'Martinique')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (156, N'Mauritania', N'MR', N'MR', N'MRT', N'478', N'MR', N'Nouakchott ', N'Africa ', N'Mauritanian', N'Mauritanians', N'Ouguiya', N'MRO', N'2747312', N'Mauritania')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (157, N'Mauritius', N'MP', N'MU', N'MUS', N'480', N'MU', N'Port Louis ', N'World ', N'Mauritian', N'Mauritians', N'Mauritius Rupee', N'MUR', N'1189825', N'Mauritius')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (158, N'Mayotte', N'MF', N'YT', N'MYT', N'175', N'YT', N'Mamoutzou ', N'Africa ', N'Mahorais', N'Mahorais', N'Euro', N'EUR', N'163366', N'Mayotte')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (159, N'Mexico', N'MX', N'MX', N'MEX', N'484', N'MX', N'Mexico ', N'North America ', N'Mexican', N'Mexicans', N'Mexican Peso', N'MXN', N'101879171', N'Mexico')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (160, N'Micronesia, Federated States of', N'FM', N'FM', N'FSM', N'583', N'FM', N'Palikir ', N'Oceania ', N'Micronesian', N'Micronesians', N'US Dollar', N'USD', N'134597', N'The Federated States of Micronesia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (161, N'Midway Islands', N'MQ', N'--', N'-- ', N'--', N'--', N'-', N'Oceania ', N'-', N'-', N'United States Dollars', N'USD', N'0', N'The Midway Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (162, N'Miscellaneous (French)', N'--', N'--', N'-- ', N'--', N'--', N'-', N'-', N'-', N'-', N'', N'', N'0', N'Miscellaneous (French)')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (163, N'Moldova', N'MD', N'MD', N'MDA', N'498', N'MD', N'Chisinau ', N'Commonwealth of Independent States ', N'Moldovan', N'Moldovans', N'Moldovan Leu', N'MDL', N'4431570', N'Moldova')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (164, N'Monaco', N'MN', N'MC', N'MCO', N'492', N'MC', N'Monaco ', N'Europe ', N'Monegasque', N'Monegasques', N'Euro', N'EUR', N'31842', N'Monaco')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (165, N'Mongolia', N'MG', N'MN', N'MNG', N'496', N'MN', N'Ulaanbaatar ', N'Asia ', N'Mongolian', N'Mongolians', N'Tugrik', N'MNT', N'2654999', N'Mongolia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (166, N'Montenegro', N'--', N'--', N'-- ', N'--', N'--', N'-', N'-', N'-', N'-', N'', N'', N'0', N'Montenegro')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (167, N'Montserrat', N'MH', N'MS', N'MSR', N'500', N'MS', N'Plymouth', N'Central America and the Caribbean ', N'Montserratian', N'Montserratians', N'East Caribbean Dollar', N'XCD', N'7574', N'Montserrat')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (168, N'Morocco', N'MO', N'MA', N'MAR', N'504', N'MA', N'Rabat ', N'Africa ', N'Moroccan', N'Moroccans', N'Moroccan Dirham', N'MAD', N'30645305', N'Morocco')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (169, N'Mozambique', N'MZ', N'MZ', N'MOZ', N'508', N'MZ', N'Maputo ', N'Africa ', N'Mozambican', N'Mozambicans', N'Metical', N'MZM', N'19371057', N'Mozambique')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (170, N'Myanmar', N'--', N'--', N'-- ', N'--', N'--', N'-', N'-', N'-', N'-', N'Kyat', N'MMK', N'0', N'Myanmar')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (171, N'Namibia', N'WA', N'NA', N'NAM', N'516', N'NA', N'Windhoek ', N'Africa ', N'Namibian', N'Namibians', N'Namibian Dollar ', N'NAD', N'1797677', N'Namibia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (172, N'Nauru', N'NR', N'NR', N'NRU', N'520', N'NR', N'-', N'Oceania ', N'Nauruan', N'Nauruans', N'Australian Dollar', N'AUD', N'12088', N'Nauru')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (173, N'Navassa Island', N'BQ', N'--', N'-- ', N'--', N'--', N'-', N'Central America and the Caribbean ', N'-', N'-', N'', N'', N'0', N'Navassa Island')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (174, N'Nepal', N'NP', N'NP', N'NPL', N'524', N'NP', N'Kathmandu ', N'Asia ', N'Nepalese', N'Nepalese', N'Nepalese Rupee', N'NPR', N'25284463', N'Nepal')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (175, N'Netherlands', N'NL', N'NL', N'NLD', N'528', N'NL', N'Amsterdam ', N'Europe ', N'Dutchman', N'Dutchmen', N'Euro', N'EUR', N'15981472', N'The Netherlands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (176, N'Netherlands Antilles', N'NT', N'AN', N'ANT', N'530', N'AN', N'Willemstad ', N'Central America and the Caribbean ', N'Dutch Antillean', N'Dutch Antilleans', N'Netherlands Antillean guilder ', N'ANG', N'212226', N'The Netherlands Antilles')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (177, N'New Caledonia', N'NC', N'NC', N'NCL', N'540', N'NC', N'Noumea ', N'Oceania ', N'New Caledonian', N'New Caledonians', N'CFP Franc', N'XPF', N'204863', N'New Caledonia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (178, N'New Zealand', N'NZ', N'NZ', N'NZL', N'554', N'NZ', N'Wellington ', N'Oceania ', N'New Zealand', N'New Zealanders', N'New Zealand Dollar', N'NZD', N'3864129', N'New Zealand')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (179, N'Nicaragua', N'NU', N'NI', N'NIC', N'558', N'NI', N'Managua ', N'Central America and the Caribbean ', N'Nicaraguan', N'Nicaraguans', N'Cordoba Oro', N'NIO', N'4918393', N'Nicaragua')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (180, N'Niger', N'NG', N'NE', N'NER', N'562', N'NE', N'Niamey ', N'Africa ', N'Nigerien', N'Nigeriens', N'CFA Franc BCEAO', N'XOF', N'10355156', N'Niger')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (181, N'Nigeria', N'NI', N'NG', N'NGA', N'566', N'NG', N'Abuja', N'Africa ', N'Nigerian', N'Nigerians', N'Naira', N'NGN', N'126635626', N'Nigeria')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (182, N'Niue', N'NE', N'NU', N'NIU', N'570', N'NU', N'Alofi ', N'Oceania ', N'Niuean', N'Niueans', N'New Zealand Dollar', N'NZD', N'2124', N'Niue')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (183, N'Norfolk Island', N'NF', N'NF', N'NFK', N'574', N'NF', N'Kingston ', N'Oceania ', N'Norfolk Islander', N'Norfolk Islanders', N'Australian Dollar', N'AUD', N'1879', N'Norfolk Island')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (184, N'Northern Mariana Islands', N'CQ', N'MP', N'MNP', N'580', N'MP', N'Saipan ', N'Oceania ', N'-', N'-', N'US Dollar', N'USD', N'74612', N'The Northern Mariana Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (185, N'Norway', N'NO', N'NO', N'NOR', N'578', N'NO', N'Oslo ', N'Europe ', N'Norwegian', N'Norwegians', N'Norwegian Krone', N'NOK', N'4503440', N'Norway')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (186, N'Oman', N'MU', N'OM', N'OMN', N'512', N'OM', N'Muscat ', N'Middle East ', N'Omani', N'Omanis', N'Rial Omani', N'OMR', N'2622198', N'Oman')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (187, N'Pakistan', N'PK', N'PK', N'PAK', N'586', N'PK', N'Islamabad ', N'Asia ', N'Pakistani', N'Pakistanis', N'Pakistan Rupee', N'PKR', N'144616639', N'Pakistan')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (188, N'Palau', N'PS', N'PW', N'PLW', N'585', N'PW', N'Koror ', N'Oceania ', N'Palauan', N'Palauans', N'US Dollar', N'USD', N'19092', N'Palau')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (189, N'Palmyra Atoll', N'LQ', N'--', N'-- ', N'--', N'--', N'-', N'Oceania ', N'-', N'-', N'', N'', N'0', N'Palmyra Atoll')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (190, N'Panama', N'PM', N'PA', N'PAN', N'591', N'PA', N'Panama ', N'Central America and the Caribbean ', N'Panamanian', N'Panamanians', N'balboa ', N'PAB', N'2845647', N'Panama')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (191, N'Papua New Guinea', N'PP', N'PG', N'PNG', N'598', N'PG', N'Port Moresby ', N'Oceania ', N'Papua New Guinean', N'Papua New Guineans', N'Kina', N'PGK', N'5049055', N'Papua New Guinea')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (192, N'Paracel Islands', N'PF', N'--', N'-- ', N'--', N'--', N'-', N'Southeast Asia ', N'-', N'-', N'', N'', N'0', N'The Paracel Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (193, N'Paraguay', N'PA', N'PY', N'PRY', N'600', N'PY', N'Asuncion ', N'South America ', N'Paraguayan', N'Paraguayans', N'Guarani', N'PYG', N'5734139', N'Paraguay')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (194, N'Peru', N'PE', N'PE', N'PER', N'604', N'PE', N'Lima ', N'South America ', N'Peruvian', N'Peruvians', N'Nuevo Sol', N'PEN', N'27483864', N'Peru')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (195, N'Philippines', N'RP', N'PH', N'PHL', N'608', N'PH', N'Manila ', N'Southeast Asia ', N'Philippine', N'Filipinos', N'Philippine Peso', N'PHP', N'82841518', N'The Philippines')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (196, N'Pitcairn Islands', N'PC', N'PN', N'PCN', N'612', N'PN', N'Adamstown ', N'Oceania ', N'Pitcairn Islander', N'Pitcairn Islanders', N'New Zealand Dollar', N'NZD', N'47', N'The Pitcairn Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (197, N'Poland', N'PL', N'PL', N'POL', N'616', N'PL', N'Warsaw ', N'Europe ', N'Polish', N'Poles', N'Zloty', N'PLN', N'38633912', N'Poland')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (198, N'Portugal', N'PO', N'PT', N'PRT', N'620', N'PT', N'Lisbon ', N'Europe ', N'Portuguese', N'Portuguese', N'Euro', N'EUR', N'10066253', N'Portugal')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (199, N'Puerto Rico', N'RQ', N'PR', N'PRI', N'630', N'PR', N'San Juan ', N'Central America and the Caribbean ', N'Puerto Rican', N'Puerto Ricans', N'US Dollar', N'USD', N'3937316', N'Puerto Rico')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (200, N'Qatar', N'QA', N'QA', N'QAT', N'634', N'QA', N'Doha ', N'Middle East ', N'Qatari', N'Qataris', N'Qatari Rial', N'QAR', N'769152', N'Qatar')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (201, N'R?union', N'RE', N'RE', N'REU', N'638', N'RE', N'Saint-Denis', N'World', N'Reunionese', N'Reunionese', N'Euro', N'EUR', N'732570', N'R?union')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (202, N'Romania', N'RO', N'RO', N'ROU', N'642', N'RO', N'Bucharest ', N'Europe ', N'Romanian', N'Romanians', N'Leu', N'ROL', N'22364022', N'Romania')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (203, N'Russia', N'RS', N'RU', N'RUS', N'643', N'RU', N'Moscow ', N'Asia ', N'Russian', N'Russians', N'Russian Ruble', N'RUB', N'145470197', N'Russia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (204, N'Rwanda', N'RW', N'RW', N'RWA', N'646', N'RW', N'Kigali ', N'Africa ', N'Rwandan', N'Rwandans', N'Rwanda Franc', N'RWF', N'7312756', N'Rwanda')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (205, N'Saint Helena', N'SH', N'SH', N'SHN', N'654', N'SH', N'Jamestown ', N'Africa ', N'Saint Helenian', N'Saint Helenians', N'Saint Helenian Pound ', N'SHP', N'7266', N'Saint Helena')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (206, N'Saint Kitts and Nevis', N'SC', N'KN', N'KNA', N'659', N'KN', N'Basseterre ', N'Central America and the Caribbean ', N'Kittitian and Nevisian', N'Kittitians and Nevisians', N'East Caribbean Dollar ', N'XCD', N'38756', N'Saint Kitts and Nevis')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (207, N'Saint Lucia', N'ST', N'LC', N'LCA', N'662', N'LC', N'Castries ', N'Central America and the Caribbean ', N'Saint Lucian', N'Saint Lucians', N'East Caribbean Dollar ', N'XCD', N'158178', N'Saint Lucia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (208, N'Saint Pierre and Miquelon', N'SB', N'PM', N'SPM', N'666', N'PM', N'Saint-Pierre ', N'North America ', N'Frenchman', N'Frenchmen', N'Euro', N'EUR', N'6928', N'Saint Pierre and Miquelon')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (209, N'Saint Vincent and the Grenadines', N'VC', N'VC', N'VCT', N'670', N'VC', N'Kingstown ', N'Central America and the Caribbean ', N'Saint Vincentian', N'Saint Vincentians', N'East Caribbean Dollar ', N'XCD', N'115942', N'Saint Vincent and the Grenadines')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (210, N'Samoa', N'WS', N'WS', N'WSM', N'882', N'WS', N'Apia ', N'Oceania ', N'Samoan', N'Samoans', N'Tala', N'WST', N'179058', N'Samoa')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (211, N'San Marino', N'SM', N'SM', N'SMR', N'674', N'SM', N'San Marino ', N'Europe ', N'Sammarinese', N'Sammarinese', N'Euro', N'EUR', N'27336', N'San Marino')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (212, N'S?o Tom? and Pr?ncipe', N'TP', N'ST', N'STP', N'678', N'ST', N'Sao Tome', N'Africa', N'Sao Tomean', N'Sao Tomeans', N'Dobra', N'STD', N'165034', N'S?o Tom? and Pr?ncipe')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (213, N'Saudi Arabia', N'SA', N'SA', N'SAU', N'682', N'SA', N'Riyadh ', N'Middle East ', N'Saudi Arabian ', N'Saudis', N'Saudi Riyal', N'SAR', N'22757092', N'Saudi Arabia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (214, N'Senegal', N'SG', N'SN', N'SEN', N'686', N'SN', N'Dakar ', N'Africa ', N'Senegalese', N'Senegalese', N'CFA Franc BCEAO', N'XOF', N'10284929', N'Senegal')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (215, N'Serbia', N'--', N'--', N'-- ', N'--', N'--', N'-', N'-', N'-', N'-', N'', N'', N'0', N'Serbia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (216, N'Serbia and Montenegro', N'--', N'--', N'-- ', N'--', N'--', N'-', N'-', N'-', N'-', N'', N'', N'0', N'Serbia and Montenegro')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (217, N'Seychelles', N'SE', N'SC', N'SYC', N'690', N'SC', N'Victoria ', N'Africa ', N'Seychellois', N'Seychellois', N'Seychelles Rupee', N'SCR', N'79715', N'Seychelles')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (218, N'Sierra Leone', N'SL', N'SL', N'SLE', N'694', N'SL', N'Freetown ', N'Africa ', N'Sierra Leonean', N'Sierra Leoneans', N'Leone', N'SLL', N'5426618', N'Sierra Leone')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (219, N'Singapore', N'SN', N'SG', N'SGP', N'702', N'SG', N'Singapore ', N'Southeast Asia ', N'Singaporeian', N'Singaporeans', N'Singapore Dollar', N'SGD', N'4300419', N'Singapore')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (220, N'Slovakia', N'LO', N'SK', N'SVK', N'703', N'SK', N'Bratislava ', N'Europe ', N'Slovakian', N'Slovaks', N'Euro', N'EUR', N'5414937', N'Slovakia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (221, N'Slovenia', N'SI', N'SI', N'SVN', N'705', N'SI', N'Ljubljana ', N'Europe ', N'Slovenian', N'Slovenes', N'Euro', N'EUR', N'1930132', N'Slovenia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (222, N'Solomon Islands', N'BP', N'SB', N'SLB', N'90', N'SB', N'Honiara ', N'Oceania ', N'Solomon Islander', N'Solomon Islanders', N'Solomon Islands Dollar', N'SBD', N'480442', N'The Solomon Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (223, N'Somalia', N'SO', N'SO', N'SOM', N'706', N'SO', N'Mogadishu ', N'Africa ', N'Somali', N'Somalis', N'Somali Shilling', N'SOS', N'7488773', N'Somalia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (224, N'South Africa', N'SF', N'ZA', N'ZAF', N'710', N'ZA', N'Pretoria', N'Africa ', N'South African', N'South Africans', N'Rand', N'ZAR', N'43586097', N'South Africa')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (225, N'South Georgia and the South Sandwich Islands', N'SX', N'GS', N'SGS', N'239', N'GS', N'-', N'Antarctic Region ', N'-', N'-', N'Pound Sterling', N'GBP', N'0', N'The South Georgia and the South Sandwich Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (226, N'Spain', N'SP', N'ES', N'ESP', N'724', N'ES', N'Madrid ', N'Europe ', N'Spanish', N'Spaniards', N'Euro', N'EUR', N'40037995', N'Spain')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (227, N'Spratly Islands', N'PG', N'--', N'-- ', N'--', N'--', N'-', N'Southeast Asia ', N'-', N'-', N'', N'', N'0', N'The Spratly Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (228, N'Sri Lanka', N'CE', N'LK', N'LKA', N'144', N'LK', N'Colombo', N'Asia ', N'Sri Lankan', N'Sri Lankans', N'Sri Lanka Rupee', N'LKR', N'19408635', N'Sri Lanka')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (229, N'Sudan', N'SU', N'SD', N'SDN', N'736', N'SD', N'Khartoum ', N'Africa ', N'Sudanese', N'Sudanese', N'Sudanese Dinar', N'SDD', N'36080373', N'Sudan')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (230, N'Suriname', N'NS', N'SR', N'SUR', N'740', N'SR', N'Paramaribo ', N'South America ', N'Surinamese', N'Surinamers', N'Suriname Guilder', N'SRG', N'433998', N'Suriname')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (231, N'Svalbard', N'SV', N'SJ', N'SJM', N'744', N'SJ', N'Longyearbyen ', N'Arctic Region ', N'-', N'-', N'Norwegian Krone', N'NOK', N'2332', N'Svalbard')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (232, N'Swaziland', N'WZ', N'SZ', N'SWZ', N'748', N'SZ', N'Mbabane ', N'Africa ', N'Swazi', N'Swazis', N'Lilangeni', N'SZL', N'1104343', N'Swaziland')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (233, N'Sweden', N'SW', N'SE', N'SWE', N'752', N'SE', N'Stockholm ', N'Europe ', N'Swedish', N'Swedes', N'Swedish Krona', N'SEK', N'8875053', N'Sweden')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (234, N'Switzerland', N'SZ', N'CH', N'CHE', N'756', N'CH', N'Bern ', N'Europe ', N'Swiss', N'Swiss', N'Swiss Franc', N'CHF', N'7283274', N'Switzerland')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (235, N'Syria', N'SY', N'SY', N'SYR', N'760', N'SY', N'Damascus ', N'Middle East ', N'Syrian', N'Syrians', N'Syrian Pound', N'SYP', N'16728808', N'Syria')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (236, N'Taiwan', N'TW', N'TW', N'TWN', N'158', N'TW', N'Taipei ', N'Southeast Asia ', N'Taiwanese', N'Taiwanese', N'New Taiwan Dollar', N'TWD', N'22370461', N'Taiwan')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (237, N'Tajikistan', N'TI', N'TJ', N'TJK', N'762', N'TJ', N'Dushanbe ', N'Commonwealth of Independent States ', N'Tajikistani', N'Tajikistanis', N'Somoni', N'TJS', N'6578681', N'Tajikistan')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (238, N'Tanzania', N'TZ', N'TZ', N'TZA', N'834', N'TZ', N'Dar es Salaam', N'Africa ', N'Tanzanian', N'Tanzanians', N'Tanzanian Shilling', N'TZS', N'36232074', N'Tanzania')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (239, N'Thailand', N'TH', N'TH', N'THA', N'764', N'TH', N'Bangkok ', N'Southeast Asia ', N'Thai', N'Thai', N'Baht', N'THB', N'61797751', N'Thailand')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (240, N'Togo', N'TO', N'TG', N'TGO', N'768', N'TG', N'Lome ', N'Africa ', N'Togolese', N'Togolese', N'CFA Franc BCEAO', N'XOF', N'5153088', N'Togo')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (241, N'Tokelau', N'TL', N'TK', N'TKL', N'772', N'TK', N'-', N'Oceania ', N'Tokelauan', N'Tokelauans', N'New Zealand Dollar', N'NZD', N'1445', N'Tokelau')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (242, N'Tonga', N'TN', N'TO', N'TON', N'776', N'TO', N'Nuku-alofa ', N'Oceania ', N'Tongan', N'Tongans', N'Pa-anga', N'TOP', N'104227', N'Tonga')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (243, N'Trinidad and Tobago', N'TD', N'TT', N'TTO', N'780', N'TT', N'Port-of-Spain ', N'Central America and the Caribbean ', N'Trinidadian and Tobagonian', N'Trinidadians and Tobagonians', N'Trinidad and Tobago Dollar', N'TTD', N'1169682', N'Trinidad and Tobago')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (244, N'Tromelin Island', N'TE', N'--', N'-- ', N'--', N'--', N'-', N'Africa ', N'-', N'-', N'', N'', N'0', N'Tromelin Island')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (245, N'Tunisia', N'TS', N'TN', N'TUN', N'788', N'TN', N'Tunis ', N'Africa ', N'Tunisian', N'Tunisians', N'Tunisian Dinar', N'TND', N'9705102', N'Tunisia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (246, N'Turkey', N'TU', N'TR', N'TUR', N'792', N'TR', N'Ankara ', N'Middle East ', N'Turkish', N'Turks', N'Turkish Lira', N'TRL', N'66493970', N'Turkey')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (247, N'Turkmenistan', N'TX', N'TM', N'TKM', N'795', N'TM', N'Ashgabat ', N'Commonwealth of Independent States ', N'Turkmen', N'Turkmens', N'Manat', N'TMM', N'4603244', N'Turkmenistan')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (248, N'Turks and Caicos Islands', N'TK', N'TC', N'TCA', N'796', N'TC', N'Cockburn Town ', N'Central America and the Caribbean ', N'-', N'-', N'US Dollar', N'USD', N'18122', N'The Turks and Caicos Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (249, N'Tuvalu', N'TV', N'TV', N'TUV', N'798', N'TV', N'Funafuti ', N'Oceania ', N'Tuvaluan', N'Tuvaluans', N'Australian Dollar', N'AUD', N'10991', N'Tuvalu')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (250, N'Uganda', N'UG', N'UG', N'UGA', N'800', N'UG', N'Kampala ', N'Africa ', N'Ugandan', N'Ugandans', N'Uganda Shilling', N'UGX', N'23985712', N'Uganda')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (251, N'Ukraine', N'UP', N'UA', N'UKR', N'804', N'UA', N'Kiev ', N'Commonwealth of Independent States ', N'Ukrainian', N'Ukrainians', N'Hryvnia', N'UAH', N'48760474', N'The Ukraine')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (252, N'United Arab Emirates', N'AE', N'AE', N'ARE', N'784', N'AE', N'Abu Dhabi ', N'Middle East ', N'Emirati', N'Emiratis', N'UAE Dirham', N'AED', N'2407460', N'The United Arab Emirates')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (253, N'United Kingdom', N'UK', N'GB', N'GBR', N'826', N'UK', N'London ', N'Europe ', N'British', N'Britons', N'Pound Sterling', N'GBP', N'59647790', N'The United Kingdom')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (254, N'United States', N'US', N'US', N'USA', N'840', N'US', N'Washington, DC ', N'North America ', N'American', N'Americans', N'US Dollar', N'USD', N'278058881', N'The United States')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (255, N'United States Minor Outlying Islands', N'--', N'UM', N'UMI', N'581', N'UM', N'-', N'-', N'-', N'-', N'US Dollar', N'USD', N'0', N'The United States Minor Outlying Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (256, N'Uruguay', N'UY', N'UY', N'URY', N'858', N'UY', N'Montevideo ', N'South America ', N'Uruguayan', N'Uruguayans', N'Peso Uruguayo', N'UYU', N'3360105', N'Uruguay')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (257, N'Uzbekistan', N'UZ', N'UZ', N'UZB', N'860', N'UZ', N'Tashkent', N'Commonwealth of Independent States ', N'Uzbekistani', N'Uzbekistanis', N'Uzbekistan Sum', N'UZS', N'25155064', N'Uzbekistan')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (258, N'Vanuatu', N'NH', N'VU', N'VUT', N'548', N'VU', N'Port-Vila ', N'Oceania ', N'Ni-Vanuatu', N'Ni-Vanuatu', N'Vatu', N'VUV', N'192910', N'Vanuatu')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (259, N'Venezuela', N'VE', N'VE', N'VEN', N'862', N'VE', N'Caracas ', N'South America, Central America and the Caribbean ', N'Venezuelan', N'Venezuelans', N'Bolivar', N'VEB', N'23916810', N'Venezuela')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (260, N'Vietnam', N'VM', N'VN', N'VNM', N'704', N'VN', N'Hanoi ', N'Southeast Asia ', N'Vietnamese', N'Vietnamese', N'Dong', N'VND', N'79939014', N'Vietnam')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (261, N'Virgin Islands', N'VQ', N'VI', N'VIR', N'850', N'VI', N'Charlotte Amalie ', N'Central America and the Caribbean ', N'Virgin Islander', N'Virgin Islanders', N'US Dollar', N'USD', N'122211', N'The Virgin Islands')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (262, N'Virgin Islands (UK)', N'--', N'--', N'-- ', N'--', N'--', N'-', N'-', N'-', N'-', N'US Dollar', N'USD', N'0', N'Virgin Islands (UK)')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (263, N'Virgin Islands (US)', N'--', N'--', N'-- ', N'--', N'--', N'-', N'-', N'-', N'-', N'US Dollar', N'USD', N'0', N'Virgin Islands (US)')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (264, N'Wake Island', N'WQ', N'--', N'-- ', N'--', N'--', N'-', N'Oceania ', N'-', N'-', N'US Dollar', N'USD', N'0', N'Wake Island')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (265, N'Wallis and Futuna', N'WF', N'WF', N'WLF', N'876', N'WF', N'Mata-Utu', N'Oceania ', N'Wallis and Futuna Islander', N'Wallis and Futuna Islanders', N'CFP Franc', N'XPF', N'15435', N'Wallis and Futuna')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (266, N'West Bank', N'WE', N'--', N'-- ', N'--', N'--', N'-', N'Middle East ', N'-', N'-', N'New Israeli Shekel ', N'ILS', N'2090713', N'The West Bank')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (267, N'Western Sahara', N'WI', N'EH', N'ESH', N'732', N'EH', N'-', N'Africa ', N'Sahrawian', N'Sahrawis', N'Moroccan Dirham', N'MAD', N'250559', N'Western Sahara')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (268, N'Western Samoa', N'--', N'--', N'-- ', N'--', N'--', N'-', N'-', N'-', N'-', N'Tala', N'WST', N'0', N'Western Samoa')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (269, N'World', N'--', N'--', N'-- ', N'--', N'--', N'-', N'World, Time Zones ', N'-', N'-', N'', N'', N'1862433264', N'The World')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (270, N'Yemen', N'YM', N'YE', N'YEM', N'887', N'YE', N'Sanaa ', N'Middle East ', N'Yemeni', N'Yemenis', N'Yemeni Rial', N'YER', N'18078035', N'Yemen')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (271, N'Yugoslavia', N'YI', N'YU', N'YUG', N'891', N'YU', N'Belgrade ', N'Europe ', N'Serbian', N'Serbs', N'Yugoslavian Dinar ', N'YUM', N'10677290', N'Yugoslavia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (272, N'Zaire', N'--', N'--', N'-- ', N'--', N'--', N'-', N'-', N'-', N'-', N'', N'', N'0', N'Zaire')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (273, N'Zambia', N'ZA', N'ZM', N'ZWB', N'894', N'ZM', N'Lusaka ', N'Africa ', N'Zambian', N'Zambians', N'Kwacha', N'ZMK', N'9770199', N'Zambia')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (274, N'Zimbabwe', N'ZI', N'ZW', N'ZWE', N'716', N'ZW', N'Harare ', N'Africa ', N'Zimbabwean', N'Zimbabweans', N'Zimbabwe Dollar', N'ZWD', N'11365366', N'Zimbabwe')
GO
INSERT [dbo].[Countries] ([CountryId], [CountryName], [FIPS104], [ISO2], [ISO3], [ISON], [Internet], [Capital], [MapReference], [NationalitySingular], [NationalityPlural], [Currency], [CurrencyCode], [Population], [Title]) VALUES (275, N'Palestinian Territory, Occupied', N'--', N'PS', N'PSE', N'275', N'PS', N'-', N'-', N'-', N'-', N'', N'', N'0', N'Palestine')
GO
SET IDENTITY_INSERT [dbo].[Currencies] ON 
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (1, N'AFGHANISTAN', N'Afghani', N'AFN', N'971', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (2, N'ALBANIA', N'Lek', N'ALL', N'008', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (3, N'ALGERIA', N'Algerian Dinar', N'DZD', N'012', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (4, N'AMERICAN SAMOA', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (5, N'ANDORRA', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (6, N'ANGOLA', N'Kwanza', N'AOA', N'973', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (7, N'ANGUILLA', N'East Caribbean Dollar', N'XCD', N'951', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (8, N'ANTIGUA AND BARBUDA', N'East Caribbean Dollar', N'XCD', N'951', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (9, N'ARGENTINA', N'Argentine Peso', N'ARS', N'032', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (10, N'ARMENIA', N'Armenian Dram', N'AMD', N'051', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (11, N'ARUBA', N'Aruban Florin', N'AWG', N'533', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (12, N'AUSTRALIA', N'Australian Dollar', N'AUD', N'036', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (13, N'AUSTRIA', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (14, N'AZERBAIJAN', N'Azerbaijanian Manat', N'AZN', N'944', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (15, N'BAHAMAS', N'Bahamian Dollar', N'BSD', N'044', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (16, N'BAHRAIN', N'Bahraini Dinar', N'BHD', N'048', N'3', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (17, N'BANGLADESH', N'Taka', N'BDT', N'050', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (18, N'BARBADOS', N'Barbados Dollar', N'BBD', N'052', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (19, N'BELARUS', N'Belarussian Ruble', N'BYR', N'974', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (20, N'BELGIUM', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (21, N'BELIZE', N'Belize Dollar', N'BZD', N'084', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (22, N'BENIN', N'CFA Franc BCEAO', N'XOF', N'952', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (23, N'BERMUDA', N'Bermudian Dollar', N'BMD', N'060', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (24, N'BHUTAN', N'Ngultrum', N'BTN', N'064', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (25, N'BHUTAN', N'Indian Rupee', N'INR', N'356', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (26, N'BOLIVIA, PLURINATIONAL STATE OF', N'Boliviano', N'BOB', N'068', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (27, N'BOLIVIA, PLURINATIONAL STATE OF', N'Mvdol', N'BOV', N'984', N'2', 1)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (28, N'BONAIRE, SINT EUSTATIUS AND SABA', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (29, N'BOSNIA AND HERZEGOVINA', N'Convertible Mark', N'BAM', N'977', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (30, N'BOTSWANA', N'Pula', N'BWP', N'072', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (31, N'BOUVET ISLAND', N'Norwegian Krone', N'NOK', N'578', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (32, N'BRAZIL', N'Brazilian Real', N'BRL', N'986', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (33, N'BRITISH INDIAN OCEAN TERRITORY', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (34, N'BRUNEI DARUSSALAM', N'Brunei Dollar', N'BND', N'096', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (35, N'BULGARIA', N'Bulgarian Lev', N'BGN', N'975', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (36, N'BURKINA FASO', N'CFA Franc BCEAO', N'XOF', N'952', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (37, N'BURUNDI', N'Burundi Franc', N'BIF', N'108', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (38, N'CAMBODIA', N'Riel', N'KHR', N'116', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (39, N'CAMEROON', N'CFA Franc BEAC', N'XAF', N'950', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (40, N'CANADA', N'Canadian Dollar', N'CAD', N'124', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (41, N'CAPE VERDE', N'Cape Verde Escudo', N'CVE', N'132', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (42, N'CAYMAN ISLANDS', N'Cayman Islands Dollar', N'KYD', N'136', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (43, N'CENTRAL AFRICAN REPUBLIC', N'CFA Franc BEAC', N'XAF', N'950', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (44, N'CHAD', N'CFA Franc BEAC', N'XAF', N'950', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (45, N'CHILE', N'Unidades de fomento', N'CLF', N'990', N'0', 1)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (46, N'CHILE', N'Chilean Peso', N'CLP', N'152', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (47, N'CHINA', N'Yuan Renminbi', N'CNY', N'156', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (48, N'CHRISTMAS ISLAND', N'Australian Dollar', N'AUD', N'036', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (49, N'COCOS (KEELING) ISLANDS', N'Australian Dollar', N'AUD', N'036', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (50, N'COLOMBIA', N'Colombian Peso', N'COP', N'170', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (51, N'COLOMBIA', N'Unidad de Valor Real', N'COU', N'970', N'2', 1)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (52, N'COMOROS', N'Comoro Franc', N'KMF', N'174', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (53, N'CONGO', N'CFA Franc BEAC', N'XAF', N'950', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (54, N'CONGO, THE DEMOCRATIC REPUBLIC OF', N'Congolese Franc', N'CDF', N'976', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (55, N'COOK ISLANDS', N'New Zealand Dollar', N'NZD', N'554', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (56, N'COSTA RICA', N'Costa Rican Colon', N'CRC', N'188', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (57, N'CROATIA', N'Croatian Kuna', N'HRK', N'191', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (58, N'CUBA', N'Peso Convertible', N'CUC', N'931', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (59, N'CUBA', N'Cuban Peso', N'CUP', N'192', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (60, N'CURA?AO', N'Netherlands Antillean Guilder', N'ANG', N'532', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (61, N'CYPRUS', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (62, N'CZECH REPUBLIC', N'Czech Koruna', N'CZK', N'203', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (63, N'DENMARK', N'Danish Krone', N'DKK', N'208', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (64, N'DJIBOUTI', N'Djibouti Franc', N'DJF', N'262', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (65, N'DOMINICA', N'East Caribbean Dollar', N'XCD', N'951', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (66, N'DOMINICAN REPUBLIC', N'Dominican Peso', N'DOP', N'214', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (67, N'ECUADOR', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (68, N'EGYPT', N'Egyptian Pound', N'EGP', N'818', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (69, N'EL SALVADOR', N'El Salvador Colon', N'SVC', N'222', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (70, N'EL SALVADOR', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (71, N'EQUATORIAL GUINEA', N'CFA Franc BEAC', N'XAF', N'950', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (72, N'ERITREA', N'Nakfa', N'ERN', N'232', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (73, N'ESTONIA', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (74, N'ETHIOPIA', N'Ethiopian Birr', N'ETB', N'230', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (75, N'EUROPEAN UNION', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (76, N'FALKLAND ISLANDS (MALVINAS)', N'Falkland Islands Pound', N'FKP', N'238', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (77, N'FAROE ISLANDS', N'Danish Krone', N'DKK', N'208', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (78, N'FIJI', N'Fiji Dollar', N'FJD', N'242', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (79, N'FINLAND', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (80, N'FRANCE', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (81, N'FRENCH GUIANA', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (82, N'FRENCH POLYNESIA', N'CFP Franc', N'XPF', N'953', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (83, N'FRENCH SOUTHERN TERRITORIES', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (84, N'GABON', N'CFA Franc BEAC', N'XAF', N'950', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (85, N'GAMBIA', N'Dalasi', N'GMD', N'270', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (86, N'GEORGIA', N'Lari', N'GEL', N'981', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (87, N'GERMANY', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (88, N'GHANA', N'Ghana Cedi', N'GHS', N'936', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (89, N'GIBRALTAR', N'Gibraltar Pound', N'GIP', N'292', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (90, N'GREECE', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (91, N'GREENLAND', N'Danish Krone', N'DKK', N'208', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (92, N'GRENADA', N'East Caribbean Dollar', N'XCD', N'951', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (93, N'GUADELOUPE', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (94, N'GUAM', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (95, N'GUATEMALA', N'Quetzal', N'GTQ', N'320', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (96, N'GUERNSEY', N'Pound Sterling', N'GBP', N'826', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (97, N'GUINEA', N'Guinea Franc', N'GNF', N'324', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (98, N'GUINEA-BISSAU', N'CFA Franc BCEAO', N'XOF', N'952', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (99, N'GUYANA', N'Guyana Dollar', N'GYD', N'328', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (100, N'HAITI', N'Gourde', N'HTG', N'332', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (101, N'HAITI', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (102, N'HEARD ISLAND AND McDONALD ISLANDS', N'Australian Dollar', N'AUD', N'036', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (103, N'HOLY SEE (VATICAN CITY STATE)', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (104, N'HONDURAS', N'Lempira', N'HNL', N'340', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (105, N'HONG KONG', N'Hong Kong Dollar', N'HKD', N'344', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (106, N'HUNGARY', N'Forint', N'HUF', N'348', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (107, N'ICELAND', N'Iceland Krona', N'ISK', N'352', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (108, N'INDIA', N'Indian Rupee', N'INR', N'356', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (109, N'INDONESIA', N'Rupiah', N'IDR', N'360', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (110, N'INTERNATIONAL MONETARY FUND (IMF) ', N'SDR (Special Drawing Right)', N'XDR', N'960', N' ', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (111, N'IRAN, ISLAMIC REPUBLIC OF', N'Iranian Rial', N'IRR', N'364', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (112, N'IRAQ', N'Iraqi Dinar', N'IQD', N'368', N'3', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (113, N'IRELAND', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (114, N'ISLE OF MAN', N'Pound Sterling', N'GBP', N'826', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (115, N'ISRAEL', N'New Israeli Sheqel', N'ILS', N'376', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (116, N'ITALY', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (117, N'JAMAICA', N'Jamaican Dollar', N'JMD', N'388', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (118, N'JAPAN', N'Yen', N'JPY', N'392', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (119, N'JERSEY', N'Pound Sterling', N'GBP', N'826', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (120, N'JORDAN', N'Jordanian Dinar', N'JOD', N'400', N'3', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (121, N'KAZAKHSTAN', N'Tenge', N'KZT', N'398', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (122, N'KENYA', N'Kenyan Shilling', N'KES', N'404', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (123, N'KIRIBATI', N'Australian Dollar', N'AUD', N'036', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (124, N'KOREA, DEMOCRATIC PEOPLE’S REPUBLIC OF', N'North Korean Won', N'KPW', N'408', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (125, N'KOREA, REPUBLIC OF', N'Won', N'KRW', N'410', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (126, N'KUWAIT', N'Kuwaiti Dinar', N'KWD', N'414', N'3', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (127, N'KYRGYZSTAN', N'Som', N'KGS', N'417', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (128, N'LAO PEOPLE’S DEMOCRATIC REPUBLIC', N'Kip', N'LAK', N'418', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (129, N'LATVIA', N'Latvian Lats', N'LVL', N'428', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (130, N'LEBANON', N'Lebanese Pound', N'LBP', N'422', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (131, N'LESOTHO', N'Loti', N'LSL', N'426', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (132, N'LESOTHO', N'Rand', N'ZAR', N'710', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (133, N'LIBERIA', N'Liberian Dollar', N'LRD', N'430', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (134, N'LIBYA', N'Libyan Dinar', N'LYD', N'434', N'3', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (135, N'LIECHTENSTEIN', N'Swiss Franc', N'CHF', N'756', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (136, N'LITHUANIA', N'Lithuanian Litas', N'LTL', N'440', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (137, N'LUXEMBOURG', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (138, N'MACAO', N'Pataca', N'MOP', N'446', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (139, N'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', N'Denar', N'MKD', N'807', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (140, N'MADAGASCAR', N'Malagasy Ariary', N'MGA', N'969', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (141, N'MALAWI', N'Kwacha', N'MWK', N'454', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (142, N'MALAYSIA', N'Malaysian Ringgit', N'MYR', N'458', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (143, N'MALDIVES', N'Rufiyaa', N'MVR', N'462', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (144, N'MALI', N'CFA Franc BCEAO', N'XOF', N'952', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (145, N'MALTA', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (146, N'MARSHALL ISLANDS', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (147, N'MARTINIQUE', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (148, N'MAURITANIA', N'Ouguiya', N'MRO', N'478', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (149, N'MAURITIUS', N'Mauritius Rupee', N'MUR', N'480', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (150, N'MAYOTTE', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (152, N'MEXICO', N'Mexican Peso', N'MXN', N'484', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (153, N'MEXICO', N'Mexican Unidad de Inversion (UDI)', N'MXV', N'979', N'2', 1)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (154, N'MICRONESIA, FEDERATED STATES OF', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (155, N'MOLDOVA, REPUBLIC OF', N'Moldovan Leu', N'MDL', N'498', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (156, N'MONACO', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (157, N'MONGOLIA', N'Tugrik', N'MNT', N'496', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (158, N'MONTENEGRO', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (159, N'MONTSERRAT', N'East Caribbean Dollar', N'XCD', N'951', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (160, N'MOROCCO', N'Moroccan Dirham', N'MAD', N'504', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (161, N'MOZAMBIQUE', N'Mozambique Metical', N'MZN', N'943', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (162, N'MYANMAR', N'Kyat', N'MMK', N'104', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (163, N'NAMIBIA', N'Namibia Dollar', N'NAD', N'516', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (164, N'NAMIBIA', N'Rand', N'ZAR', N'710', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (165, N'NAURU', N'Australian Dollar', N'AUD', N'036', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (166, N'NEPAL', N'Nepalese Rupee', N'NPR', N'524', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (167, N'NETHERLANDS', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (168, N'NEW CALEDONIA', N'CFP Franc', N'XPF', N'953', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (169, N'NEW ZEALAND', N'New Zealand Dollar', N'NZD', N'554', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (170, N'NICARAGUA', N'Cordoba Oro', N'NIO', N'558', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (171, N'NIGER', N'CFA Franc BCEAO', N'XOF', N'952', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (172, N'NIGERIA', N'Naira', N'NGN', N'566', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (173, N'NIUE', N'New Zealand Dollar', N'NZD', N'554', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (174, N'NORFOLK ISLAND', N'Australian Dollar', N'AUD', N'036', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (175, N'NORTHERN MARIANA ISLANDS', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (176, N'NORWAY', N'Norwegian Krone', N'NOK', N'578', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (177, N'OMAN', N'Rial Omani', N'OMR', N'512', N'3', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (178, N'PAKISTAN', N'Pakistan Rupee', N'PKR', N'586', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (179, N'PALAU', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (180, N'PANAMA', N'Balboa', N'PAB', N'590', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (181, N'PANAMA', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (182, N'PAPUA NEW GUINEA', N'Kina', N'PGK', N'598', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (183, N'PARAGUAY', N'Guarani', N'PYG', N'600', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (184, N'PERU', N'Nuevo Sol', N'PEN', N'604', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (185, N'PHILIPPINES', N'Philippine Peso', N'PHP', N'608', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (186, N'PITCAIRN', N'New Zealand Dollar', N'NZD', N'554', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (187, N'POLAND', N'Zloty', N'PLN', N'985', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (188, N'PORTUGAL', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (189, N'PUERTO RICO', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (190, N'QATAR', N'Qatari Rial', N'QAR', N'634', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (191, N'ROMANIA', N'New Romanian Leu', N'RON', N'946', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (192, N'RUSSIAN FEDERATION', N'Russian Ruble', N'RUB', N'643', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (193, N'RWANDA', N'Rwanda Franc', N'RWF', N'646', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (194, N'SAINT BARTH?LEMY', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (195, N'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA', N'Saint Helena Pound', N'SHP', N'654', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (196, N'SAINT KITTS AND NEVIS', N'East Caribbean Dollar', N'XCD', N'951', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (197, N'SAINT LUCIA', N'East Caribbean Dollar', N'XCD', N'951', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (198, N'SAINT MARTIN (FRENCH PART)', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (199, N'SAINT PIERRE AND MIQUELON', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (200, N'SAINT VINCENT AND THE GRENADINES', N'East Caribbean Dollar', N'XCD', N'951', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (201, N'SAMOA', N'Tala', N'WST', N'882', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (202, N'SAN MARINO', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (203, N'SAO TOME AND PRINCIPE', N'Dobra', N'STD', N'678', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (204, N'SAUDI ARABIA', N'Saudi Riyal', N'SAR', N'682', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (205, N'SENEGAL', N'CFA Franc BCEAO', N'XOF', N'952', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (206, N'SERBIA', N'Serbian Dinar', N'RSD', N'941', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (207, N'SEYCHELLES', N'Seychelles Rupee', N'SCR', N'690', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (208, N'SIERRA LEONE', N'Leone', N'SLL', N'694', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (209, N'SINGAPORE', N'Singapore Dollar', N'SGD', N'702', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (210, N'SINT MAARTEN (DUTCH PART)', N'Netherlands Antillean Guilder', N'ANG', N'532', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (212, N'SLOVAKIA', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (213, N'SLOVENIA', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (214, N'SOLOMON ISLANDS', N'Solomon Islands Dollar', N'SBD', N'090', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (215, N'SOMALIA', N'Somali Shilling', N'SOS', N'706', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (216, N'SOUTH AFRICA', N'Rand', N'ZAR', N'710', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (217, N'SOUTH SUDAN', N'South Sudanese Pound', N'SSP', N'728', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (218, N'SPAIN', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (219, N'SRI LANKA', N'Sri Lanka Rupee', N'LKR', N'144', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (220, N'SUDAN', N'Sudanese Pound', N'SDG', N'938', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (221, N'SURINAME', N'Surinam Dollar', N'SRD', N'968', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (222, N'SVALBARD AND JAN MAYEN', N'Norwegian Krone', N'NOK', N'578', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (223, N'SWAZILAND', N'Lilangeni', N'SZL', N'748', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (224, N'SWEDEN', N'Swedish Krona', N'SEK', N'752', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (225, N'SWITZERLAND', N'WIR Euro', N'CHE', N'947', N'2', 1)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (226, N'SWITZERLAND', N'Swiss Franc', N'CHF', N'756', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (227, N'SWITZERLAND', N'WIR Franc', N'CHW', N'948', N'2', 1)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (228, N'SYRIAN ARAB REPUBLIC', N'Syrian Pound', N'SYP', N'760', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (229, N'TAIWAN, PROVINCE OF CHINA', N'New Taiwan Dollar', N'TWD', N'901', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (230, N'TAJIKISTAN', N'Somoni', N'TJS', N'972', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (231, N'TANZANIA, UNITED REPUBLIC OF', N'Tanzanian Shilling', N'TZS', N'834', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (232, N'THAILAND', N'Baht', N'THB', N'764', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (233, N'TIMOR-LESTE', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (234, N'TOGO', N'CFA Franc BCEAO', N'XOF', N'952', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (235, N'TOKELAU', N'New Zealand Dollar', N'NZD', N'554', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (236, N'TONGA', N'Pa’anga', N'TOP', N'776', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (237, N'TRINIDAD AND TOBAGO', N'Trinidad and Tobago Dollar', N'TTD', N'780', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (238, N'TUNISIA', N'Tunisian Dinar', N'TND', N'788', N'3', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (239, N'TURKEY', N'Turkish Lira', N'TRY', N'949', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (240, N'TURKMENISTAN', N'Turkmenistan New Manat', N'TMT', N'934', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (241, N'TURKS AND CAICOS ISLANDS', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (242, N'TUVALU', N'Australian Dollar', N'AUD', N'036', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (243, N'UGANDA', N'Uganda Shilling', N'UGX', N'800', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (244, N'UKRAINE', N'Hryvnia', N'UAH', N'980', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (245, N'UNITED ARAB EMIRATES', N'UAE Dirham', N'AED', N'784', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (246, N'UNITED KINGDOM', N'Pound Sterling', N'GBP', N'826', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (247, N'UNITED STATES', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (248, N'URUGUAY', N'Peso Uruguayo', N'UYU', N'858', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (249, N'UZBEKISTAN', N'Uzbekistan Sum', N'UZS', N'860', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (250, N'VANUATU', N'Vatu', N'VUV', N'548', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (251, N'Vatican City State (HOLY SEE)', N'Euro', N'EUR', N'978', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (252, N'VENEZUELA, BOLIVARIAN REPUBLIC OF', N'Bolivar', N'VEF', N'937', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (253, N'VIET NAM', N'Dong', N'VND', N'704', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (254, N'VIRGIN ISLANDS (BRITISH)', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (255, N'VIRGIN ISLANDS (US)', N'US Dollar', N'USD', N'840', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (256, N'WALLIS AND FUTUNA', N'CFP Franc', N'XPF', N'953', N'0', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (257, N'WESTERN SAHARA', N'Moroccan Dirham', N'MAD', N'504', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (258, N'YEMEN', N'Yemeni Rial', N'YER', N'886', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (259, N'ZAMBIA', N'Zambian Kwacha', N'ZMW', N'967', N'2', 0)
GO
INSERT [dbo].[Currencies] ([ID], [Entity], [Currency], [AlphabeticCode], [NumericCode], [MinorUnit], [IsFundYesNo]) VALUES (260, N'ZIMBABWE', N'Zimbabwe Dollar', N'ZWL', N'932', N'2', 0)
GO
SET IDENTITY_INSERT [dbo].[Currencies] OFF
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 
GO
INSERT [dbo].[Groups] ([id], [GroupName], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (5, N'Administrators', NULL, 3, N'admin', CAST(N'2009-07-14T14:51:53.093' AS DateTime), 3, N'admin', CAST(N'2017-01-18T04:16:08.000' AS DateTime))
GO
INSERT [dbo].[Groups] ([id], [GroupName], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (6, N'LD Staff', N'RG Legal Department Staff', 3, N'admin', CAST(N'2009-08-05T02:28:51.740' AS DateTime), 5, N'Nasr', CAST(N'2023-02-16T03:20:01.000' AS DateTime))
GO
INSERT [dbo].[Groups] ([id], [GroupName], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (7, N'LD PRO', N'PROs of Legal Department', 5, N'Nasr', CAST(N'2009-08-05T02:47:39.237' AS DateTime), 3, N'admin', CAST(N'2017-02-02T04:35:15.000' AS DateTime))
GO
INSERT [dbo].[Groups] ([id], [GroupName], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (17, N'Legal Advisors', N'Legal Advisors', 5, N'Nasr', CAST(N'2010-11-29T10:10:04.657' AS DateTime), 5, N'Nasr', CAST(N'2010-11-29T05:17:32.000' AS DateTime))
GO
INSERT [dbo].[Groups] ([id], [GroupName], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (18, N'Transactions', N'T Files Only', 5, N'Nasr', CAST(N'2012-01-05T11:14:33.533' AS DateTime), 5, N'Nasr', CAST(N'2023-02-16T03:20:30.000' AS DateTime))
GO
INSERT [dbo].[Groups] ([id], [GroupName], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (19, N'Doc Tracking', N'DT', 5, N'Nasr', CAST(N'2017-01-30T16:55:11.737' AS DateTime), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 4, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 9, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 11, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 17, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 19, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 20, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 23, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 27, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 29, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 31, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 50, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 51, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 52, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 53, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 54, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 55, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 56, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 57, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 58, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 59, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 60, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 61, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 62, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 63, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 64, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 65, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 66, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 67, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (5, 69, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 17, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 19, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 23, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 27, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 31, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 50, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 51, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 53, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 54, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 55, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 56, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 58, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 59, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 61, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 64, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 65, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 67, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (6, 69, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 17, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 19, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 23, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 27, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 31, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 50, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 51, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 53, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 55, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 56, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 58, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 61, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 64, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 65, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 67, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (7, 69, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (17, 29, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (17, 64, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (18, 29, 1, 1, 1, 0, 0)
GO
INSERT [dbo].[GroupsMenus] ([GroupID], [MenuID], [Access], [CanInsert], [CanUpdate], [CanDelete], [Admin]) VALUES (18, 64, 1, 1, 1, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Menus] ON 
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (1, NULL, N'Settings', NULL, 1000, N'Groups Description1', 3, N'admin', CAST(N'2009-07-15T13:34:17.590' AS DateTime), 3, N'admin', CAST(N'2009-07-16T09:38:19.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (4, 1, N'Groups', N'../Admin/Groups.aspx', 10, NULL, 3, N'admin', CAST(N'2009-07-15T13:34:17.590' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (9, 1, N'Menus', N'../Admin/Menus.aspx', 50, NULL, 3, N'admin', CAST(N'2009-07-15T13:34:17.590' AS DateTime), 3, N'admin', CAST(N'2009-07-19T11:26:20.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (11, 1, N'Users', N'../Admin/Users.aspx', 20, NULL, 3, N'admin', CAST(N'2009-07-15T13:34:17.590' AS DateTime), 3, N'admin', CAST(N'2009-07-19T11:26:04.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (16, NULL, N'Persons', NULL, 10, NULL, 3, N'admin', CAST(N'2009-07-16T08:30:48.153' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (17, 16, N'All Persons', N'../Persons/AllPersons.aspx', 1, NULL, 3, N'admin', CAST(N'2009-07-16T08:31:03.780' AS DateTime), 5, N'Nasr', CAST(N'2009-08-12T02:21:24.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (18, NULL, N'Law Firms', NULL, 40, NULL, 3, N'admin', CAST(N'2009-07-16T10:37:04.483' AS DateTime), 3, N'admin', CAST(N'2009-07-27T04:58:09.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (19, 18, N'All Law Firms', N'../LawFirms/AllLawFirms.aspx', 1, NULL, 3, N'admin', CAST(N'2009-07-16T10:37:56.607' AS DateTime), 5, N'Nasr', CAST(N'2009-08-12T02:21:32.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (20, 1, N'Dynamic Lists', N'../Admin/DynamicLists.aspx', 30, NULL, 3, N'admin', CAST(N'2009-07-16T12:02:38.030' AS DateTime), 3, N'admin', CAST(N'2009-07-19T11:26:25.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (22, NULL, N'Properties', NULL, 30, N'Propretries', 3, N'admin', CAST(N'2009-07-16T14:50:31.890' AS DateTime), 3, N'admin', CAST(N'2009-08-02T09:15:56.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (23, 22, N'All Properties', N'../Properties/AllProperties.aspx', 1, NULL, 3, N'admin', CAST(N'2009-07-16T14:54:55.217' AS DateTime), 5, N'Nasr', CAST(N'2009-08-12T02:21:39.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (26, NULL, N'Companies', NULL, 20, NULL, 3, N'admin', CAST(N'2009-07-16T17:23:35.937' AS DateTime), 3, N'admin', CAST(N'2009-07-19T11:27:32.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (27, 26, N'All Companies', N'../Companies/AllCompanies.aspx', 1, NULL, 3, N'admin', CAST(N'2009-07-16T17:27:03.403' AS DateTime), 5, N'Nasr', CAST(N'2009-08-12T02:21:46.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (28, NULL, N'Transactions', NULL, 50, NULL, 3, N'admin', CAST(N'2009-07-19T19:16:04.793' AS DateTime), 3, N'admin', CAST(N'2009-08-03T08:23:59.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (29, 28, N'All Transactions', N'../Transactions/AllTransactions.aspx', 1, NULL, 3, N'admin', CAST(N'2009-07-19T19:16:32.403' AS DateTime), 5, N'Nasr', CAST(N'2009-08-12T02:21:56.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (30, NULL, N'FPCs', NULL, 60, NULL, 3, N'admin', CAST(N'2009-08-03T08:22:52.207' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (31, 30, N'All FPCs', N'../FPCs/AllFPCs.aspx', 1, NULL, 3, N'admin', CAST(N'2009-08-03T08:23:19.130' AS DateTime), 5, N'Nasr', CAST(N'2009-08-12T02:21:51.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (50, 16, N'Active Persons', N'../Persons/ActivePersons.aspx', 10, N'Active Persons', 3, N'admin', CAST(N'2009-08-10T21:52:00.143' AS DateTime), 3, N'admin', CAST(N'2009-08-10T09:54:03.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (51, 16, N'Active Public Persons', N'../Persons/ActivePublicPersons.aspx', 10, N'Active Public Persons', 3, N'admin', CAST(N'2009-08-10T22:52:19.980' AS DateTime), 3, N'admin', CAST(N'2009-08-10T10:52:49.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (52, 16, N'Active Private Persons', N'../Persons/ActivePrivatePersons.aspx', 10, N'Active Private Persons', 3, N'admin', CAST(N'2009-08-10T22:58:32.053' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (53, 26, N'Active Companies', N'../Companies/ActiveCompanies.aspx', 20, N'Active Companies', 3, N'admin', CAST(N'2009-08-11T10:22:40.133' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (54, 26, N'Active Private Companies', N'../Companies/ActivePrivateCompanies.aspx', 20, N'Active Private Companies', 3, N'admin', CAST(N'2009-08-11T13:05:40.620' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (55, 26, N'Active Public Companies', N'../Companies/ActivePublicCompanies.aspx', 20, N'Active Public Companies', 3, N'admin', CAST(N'2009-08-11T13:24:20.633' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (56, 22, N'Active Properties', N'../Properties/ActiveProperties.aspx', 15, N'Active Properties', 3, N'admin', CAST(N'2009-08-11T13:29:58.370' AS DateTime), 3, N'admin', CAST(N'2009-08-11T01:46:15.000' AS DateTime))
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (57, 22, N'Active Private Properties', N'../Properties/ActivePrivateProperties.aspx', 20, N'Active Private Properties', 3, N'admin', CAST(N'2009-08-11T13:37:53.170' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (58, 22, N'Active Public Properties', N'../Properties/ActivePublicProperties.aspx', 20, N'Active Public Properties', 3, N'admin', CAST(N'2009-08-11T13:44:42.220' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (59, 18, N'Active LawFirms', N'../LawFirms/ActiveLawFirms.aspx', 15, N'Active LawFirms', 3, N'admin', CAST(N'2009-08-11T13:52:06.610' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (60, 18, N'Active Private LawFirms', N'../LawFirms/ActivePrivateLawFirms.aspx', 20, N'Active Private LawFirms', 3, N'admin', CAST(N'2009-08-11T14:11:56.287' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (61, 18, N'Active Public LawFirms', N'../LawFirms/ActivePublicLawFirms.aspx', 20, N'Active Public LawFirms', 3, N'admin', CAST(N'2009-08-11T14:17:39.610' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (62, 28, N'Active Transactions', N'../Transactions/ActiveTransactions.aspx', 15, N'Active Transactions', 3, N'admin', CAST(N'2009-08-11T14:23:58.717' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (63, 28, N'Active Private Transactions', N'../Transactions/ActivePrivateTransactions.aspx', 20, N'Active Private Transactions', 3, N'admin', CAST(N'2009-08-11T14:28:35.417' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (64, 28, N'Active Public Transactions', N'../Transactions/ActivePublicTransactions.aspx', 20, N'Active Public Transactions', 3, N'admin', CAST(N'2009-08-11T14:40:36.360' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (65, 30, N'Active FPCs', N'../FPCs/ActiveFPCs.aspx', 15, N'Active FPCs', 3, N'admin', CAST(N'2009-08-11T14:51:02.657' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (66, 30, N'Active Private FPCs', N'../FPCs/ActivePrivateFPCs.aspx', 20, N'Active Private FPCs', 3, N'admin', CAST(N'2009-08-11T14:55:00.810' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (67, 30, N'Active Public FPCs', N'../FPCs/ActivePublicFPCs.aspx', 20, N'Active Public FPCs', 3, N'admin', CAST(N'2009-08-11T15:01:09.037' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (68, NULL, N'Doc Tracking', N'../DocumentTracking/AllDocumentTrackings.aspx', 70, N'Document Tracking', 3, N'admin', CAST(N'2017-01-18T16:15:13.920' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (69, 68, N'All Documents', N'../DocumentTracking/AllDocumentTrackings.aspx', 1, N'Documents Tracking', 3, N'admin', CAST(N'2017-01-18T16:15:56.947' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Menus] ([id], [ParentID], [Name], [Path], [Rank], [Description], [CreatedBy],  [CreatedAt], [ModifiedBy],  [ModifiedAt]) VALUES (70, 26, N'Tax Registration', NULL, 10, NULL, 5, N'Nasr', CAST(N'2023-06-26T12:19:07.030' AS DateTime), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (8)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (9)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (10)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (11)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (12)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (13)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (14)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (15)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (16)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (17)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (18)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (19)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (20)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (21)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (22)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (23)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (24)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (25)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (26)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (27)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (28)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (29)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (30)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (31)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (32)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (33)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (34)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (35)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (36)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (37)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (38)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (39)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (40)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (41)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (42)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (43)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (44)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (45)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (46)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (47)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (48)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (49)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (50)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (51)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (52)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (53)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (54)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (55)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (56)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (57)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (58)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (59)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (60)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (61)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (62)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (63)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (64)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (65)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (66)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (67)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (68)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (69)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (70)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (71)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (72)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (73)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (74)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (75)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (76)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (77)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (78)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (79)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (80)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (81)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (82)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (83)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (84)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (85)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (86)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (87)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (88)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (89)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (90)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (91)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (92)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (93)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (94)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (95)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (96)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (97)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (98)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (99)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (100)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (101)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (102)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (103)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (104)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (105)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (106)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (107)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (108)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (109)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (110)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (111)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (112)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (113)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (114)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (115)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (116)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (117)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (118)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (119)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (120)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (121)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (122)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (123)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (124)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (125)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (126)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (127)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (128)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (129)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (130)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (131)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (132)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (133)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (134)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (135)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (136)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (137)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (138)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (139)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (140)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (141)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (142)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (143)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (144)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (145)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (146)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (147)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (148)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (149)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (150)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (151)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (152)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (153)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (154)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (155)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (156)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (157)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (158)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (159)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (160)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (161)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (162)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (163)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (164)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (165)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (166)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (167)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (168)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (169)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (170)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (171)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (172)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (173)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (174)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (175)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (176)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (177)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (178)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (179)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (180)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (181)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (182)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (183)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (184)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (185)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (186)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (187)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (188)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (189)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (190)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (191)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (192)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (193)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (194)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (195)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (196)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (197)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (198)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (199)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (200)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (201)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (202)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (203)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (204)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (205)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (206)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (207)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (208)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (209)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (210)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (211)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (212)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (213)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (214)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (215)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (216)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (217)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (218)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (219)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (220)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (221)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (222)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (223)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (224)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (225)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (226)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (227)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (228)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (229)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (230)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (231)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (232)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (233)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (234)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (235)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (236)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (237)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (238)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (239)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (240)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (241)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (242)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (243)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (244)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (245)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (246)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (247)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (248)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (249)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (250)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (251)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (252)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (253)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (254)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (255)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (256)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (257)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (258)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (259)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (260)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (261)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (262)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (263)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (264)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (265)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (266)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (267)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (268)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (269)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (270)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (271)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (272)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (273)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (274)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (275)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (276)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (277)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (278)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (279)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (280)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (281)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (282)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (283)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (284)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (285)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (286)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (287)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (288)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (289)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (290)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (291)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (292)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (293)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (294)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (295)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (296)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (297)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (298)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (299)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (300)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (301)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (302)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (303)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (304)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (305)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (306)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (307)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (308)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (309)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (310)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (311)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (312)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (313)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (314)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (315)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (316)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (317)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (318)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (319)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (320)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (321)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (322)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (323)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (324)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (325)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (326)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (327)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (328)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (329)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (330)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (331)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (332)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (333)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (334)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (335)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (336)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (337)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (338)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (339)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (340)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (341)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (342)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (343)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (344)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (345)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (346)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (347)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (348)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (349)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (350)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (351)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (352)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (353)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (354)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (355)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (356)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (357)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (358)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (359)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (360)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (361)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (362)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (363)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (364)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (365)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (366)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (367)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (368)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (369)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (370)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (371)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (372)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (373)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (374)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (375)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (376)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (377)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (378)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (379)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (380)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (381)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (382)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (383)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (384)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (385)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (386)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (387)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (388)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (389)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (390)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (391)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (392)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (393)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (394)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (395)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (396)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (397)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (398)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (399)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (400)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (401)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (402)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (403)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (404)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (405)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (406)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (407)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (408)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (409)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (410)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (411)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (412)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (413)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (414)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (415)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (416)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (417)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (418)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (419)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (420)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (421)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (422)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (423)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (424)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (425)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (426)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (427)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (428)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (429)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (430)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (431)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (432)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (433)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (434)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (435)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (436)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (437)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (438)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (439)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (440)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (441)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (442)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (443)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (444)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (445)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (446)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (447)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (448)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (449)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (450)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (451)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (452)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (453)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (454)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (455)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (456)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (457)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (458)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (459)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (460)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (461)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (462)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (463)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (464)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (465)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (466)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (467)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (468)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (469)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (470)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (471)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (472)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (473)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (474)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (475)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (476)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (477)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (478)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (479)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (480)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (481)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (482)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (483)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (484)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (485)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (486)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (487)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (488)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (489)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (490)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (491)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (492)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (493)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (494)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (495)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (496)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (497)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (498)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (499)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (500)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (501)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (502)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (503)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (504)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (505)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (506)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (507)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (508)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (509)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (510)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (511)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (512)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (513)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (514)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (515)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (516)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (517)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (518)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (519)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (520)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (521)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (522)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (523)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (524)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (525)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (526)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (527)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (528)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (529)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (530)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (531)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (532)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (533)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (534)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (535)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (536)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (537)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (538)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (539)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (540)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (541)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (542)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (543)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (544)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (545)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (546)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (547)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (548)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (549)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (550)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (551)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (552)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (553)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (554)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (555)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (556)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (557)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (558)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (559)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (560)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (561)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (562)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (563)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (564)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (565)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (566)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (567)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (568)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (569)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (570)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (571)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (572)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (573)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (574)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (575)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (576)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (577)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (578)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (579)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (580)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (581)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (582)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (583)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (584)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (585)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (586)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (587)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (588)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (589)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (590)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (591)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (592)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (593)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (594)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (595)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (596)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (597)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (598)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (599)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (600)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (601)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (602)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (603)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (604)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (605)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (606)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (607)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (608)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (609)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (610)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (611)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (612)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (613)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (614)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (615)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (616)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (617)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (618)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (619)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (620)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (621)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (622)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (623)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (624)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (625)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (626)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (627)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (628)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (629)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (630)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (631)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (632)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (633)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (634)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (635)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (636)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (637)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (638)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (639)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (640)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (641)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (642)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (643)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (644)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (645)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (646)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (647)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (648)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (649)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (650)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (651)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (652)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (653)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (654)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (655)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (656)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (657)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (658)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (659)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (660)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (661)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (662)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (663)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (664)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (665)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (666)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (667)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (668)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (669)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (670)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (671)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (672)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (673)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (674)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (675)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (676)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (677)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (678)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (679)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (680)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (681)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (682)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (683)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (684)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (685)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (686)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (687)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (688)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (689)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (690)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (691)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (692)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (693)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (694)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (695)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (696)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (697)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (698)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (699)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (700)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (701)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (702)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (703)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (704)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (705)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (706)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (707)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (708)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (709)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (710)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (711)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (712)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (713)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (714)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (715)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (716)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (717)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (718)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (719)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (720)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (721)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (722)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (723)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (724)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (725)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (726)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (727)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (728)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (729)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (730)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (731)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (732)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (733)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (734)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (735)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (736)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (737)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (738)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (739)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (740)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (741)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (742)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (743)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (744)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (745)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (746)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (747)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (748)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (749)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (750)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (751)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (752)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (753)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (754)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (755)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (756)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (757)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (758)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (759)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (760)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (761)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (762)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (763)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (764)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (765)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (766)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (767)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (768)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (769)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (770)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (771)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (772)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (773)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (774)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (775)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (776)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (777)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (778)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (779)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (780)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (781)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (782)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (783)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (784)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (785)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (786)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (787)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (788)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (789)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (790)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (791)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (792)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (793)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (794)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (795)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (796)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (797)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (798)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (799)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (800)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (801)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (802)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (803)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (804)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (805)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (806)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (807)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (808)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (809)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (810)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (811)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (812)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (813)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (814)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (815)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (816)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (817)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (818)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (819)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (820)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (821)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (822)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (823)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (824)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (825)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (826)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (827)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (828)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (829)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (830)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (831)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (832)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (833)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (834)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (835)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (836)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (837)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (838)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (839)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (840)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (841)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (842)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (843)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (844)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (845)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (846)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (847)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (848)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (849)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (850)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (851)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (852)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (853)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (854)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (855)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (856)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (857)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (858)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (859)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (860)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (861)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (862)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (863)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (864)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (865)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (866)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (867)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (868)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (869)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (870)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (871)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (872)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (873)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (874)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (875)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (876)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (877)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (878)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (879)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (880)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (881)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (882)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (883)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (884)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (885)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (886)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (887)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (888)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (889)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (890)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (891)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (892)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (893)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (894)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (895)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (896)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (897)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (898)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (899)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (900)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (901)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (902)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (903)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (904)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (905)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (906)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (907)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (908)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (909)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (910)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (911)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (912)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (913)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (914)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (915)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (916)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (917)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (918)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (919)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (920)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (921)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (922)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (923)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (924)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (925)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (926)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (927)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (928)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (929)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (930)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (931)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (932)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (933)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (934)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (935)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (936)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (937)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (938)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (939)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (940)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (941)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (942)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (943)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (944)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (945)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (946)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (947)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (948)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (949)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (950)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (951)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (952)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (953)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (954)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (955)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (956)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (957)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (958)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (959)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (960)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (961)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (962)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (963)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (964)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (965)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (966)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (967)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (968)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (969)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (970)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (971)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (972)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (973)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (974)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (975)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (976)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (977)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (978)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (979)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (980)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (981)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (982)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (983)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (984)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (985)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (986)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (987)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (988)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (989)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (990)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (991)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (992)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (993)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (994)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (995)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (996)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (997)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (998)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (999)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1000)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1001)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1002)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1003)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1004)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1005)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1006)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1007)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1008)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1009)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1010)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1011)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1012)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1013)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1014)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1015)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1016)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1017)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1018)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1019)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1020)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1021)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1022)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1023)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1024)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1025)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1026)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1027)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1028)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1029)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1030)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1031)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1032)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1033)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1034)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1035)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1036)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1037)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1038)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1039)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1040)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1041)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1042)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1043)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1044)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1045)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1046)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1047)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1048)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1049)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1050)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1051)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1052)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1053)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1054)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1055)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1056)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1057)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1058)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1059)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1060)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1061)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1062)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1063)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1064)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1065)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1066)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1067)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1068)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1069)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1070)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1071)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1072)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1073)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1074)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1075)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1076)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1077)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1078)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1079)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1080)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1081)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1082)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1083)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1084)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1085)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1086)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1087)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1088)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1089)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1090)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1091)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1092)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1093)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1094)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1095)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1096)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1097)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1098)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1099)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1100)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1101)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1102)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1103)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1104)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1105)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1106)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1107)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1108)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1109)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1110)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1111)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1112)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1113)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1114)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1115)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1116)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1117)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1118)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1119)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1120)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1121)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1122)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1123)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1124)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1125)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1126)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1127)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1128)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1129)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1130)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1131)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1132)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1133)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1134)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1135)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1136)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1137)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1138)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1139)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1140)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1141)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1142)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1143)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1144)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1145)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1146)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1147)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1148)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1149)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1150)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1151)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1152)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1153)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1154)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1155)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1156)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1157)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1158)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1159)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1160)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1161)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1162)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1163)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1164)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1165)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1166)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1167)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1168)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1169)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1170)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1171)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1172)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1173)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1174)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1175)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1176)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1177)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1178)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1179)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1180)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1181)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1182)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1183)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1184)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1185)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1186)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1187)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1188)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1189)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1190)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1191)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1192)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1193)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1194)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1195)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1196)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1197)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1198)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1199)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1200)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1201)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1202)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1203)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1204)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1205)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1206)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1207)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1208)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1209)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1210)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1211)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1212)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1213)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1214)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1215)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1216)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1217)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1218)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1219)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1220)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1221)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1222)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1223)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1224)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1225)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1226)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1227)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1228)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1229)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1230)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1231)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1232)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1233)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1234)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1235)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1236)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1237)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1238)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1239)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1240)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1241)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1242)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1243)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1244)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1245)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1246)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1247)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1248)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1249)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1250)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1251)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1252)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1253)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1254)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1255)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1256)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1257)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1258)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1259)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1260)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1261)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1262)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1263)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1264)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1265)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1266)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1267)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1268)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1269)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1270)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1271)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1272)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1273)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1274)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1275)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1276)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1277)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1278)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1279)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1280)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1281)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1282)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1283)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1284)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1285)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1286)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1287)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1288)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1289)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1290)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1291)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1292)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1293)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1294)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1295)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1296)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1297)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1298)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1299)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1300)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1301)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1302)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1303)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1304)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1305)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1306)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1307)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1308)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1309)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1310)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1311)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1312)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1313)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1314)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1315)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1316)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1317)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1318)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1319)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1320)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1321)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1322)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1323)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1324)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1325)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1326)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1327)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1328)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1329)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1330)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1331)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1332)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1333)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1334)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1335)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1336)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1337)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1338)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1339)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1340)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1341)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1342)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1343)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1344)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1345)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1346)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1347)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1348)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1349)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1350)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1351)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1352)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1353)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1354)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1355)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1356)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1357)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1358)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1359)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1360)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1361)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1362)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1363)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1364)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1365)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1366)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1367)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1368)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1369)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1370)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1371)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1372)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1373)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1374)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1375)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1376)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1377)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1378)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1379)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1380)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1381)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1382)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1383)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1384)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1385)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1386)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1387)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1388)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1389)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1390)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1391)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1392)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1393)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1394)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1395)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1396)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1397)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1398)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1399)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1400)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1401)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1402)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1403)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1404)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1405)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1406)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1407)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1408)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1409)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1410)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1411)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1412)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1413)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1414)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1415)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1416)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1417)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1418)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1419)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1420)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1421)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1422)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1423)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1424)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1425)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1426)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1427)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1428)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1429)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1430)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1431)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1432)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1433)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1434)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1435)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1436)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1437)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1438)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1439)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1440)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1441)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1442)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1443)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1444)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1445)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1446)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1447)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1448)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1449)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1450)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1451)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1452)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1453)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1454)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1455)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1456)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1457)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1458)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1459)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1460)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1461)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1462)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1463)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1464)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1465)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1466)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1467)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1468)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1469)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1470)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1471)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1472)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1473)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1474)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1475)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1476)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1477)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1478)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1479)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1480)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1481)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1482)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1483)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1484)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1485)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1486)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1487)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1488)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1489)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1490)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1491)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1492)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1493)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1494)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1495)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1496)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1497)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1498)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1499)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1500)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1501)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1502)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1503)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1504)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1505)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1506)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1507)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1508)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1509)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1510)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1511)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1512)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1513)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1514)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1515)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1516)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1517)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1518)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1519)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1520)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1521)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1522)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1523)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1524)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1525)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1526)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1527)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1528)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1529)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1530)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1531)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1532)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1533)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1534)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1535)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1536)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1537)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1538)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1539)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1540)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1541)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1542)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1543)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1544)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1545)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1546)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1547)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1548)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1549)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1550)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1551)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1552)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1553)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1554)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1555)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1556)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1557)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1558)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1559)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1560)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1561)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1562)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1563)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1564)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1565)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1566)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1567)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1568)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1569)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1570)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1571)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1572)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1573)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1574)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1575)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1576)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1577)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1578)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1579)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1580)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1581)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1582)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1583)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1584)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1585)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1586)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1587)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1588)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1589)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1590)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1591)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1592)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1593)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1594)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1595)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1596)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1597)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1598)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1599)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1600)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1601)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1602)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1603)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1604)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1605)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1606)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1607)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1608)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1609)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1610)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1611)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1612)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1613)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1614)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1615)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1616)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1617)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1618)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1619)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1620)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1621)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1622)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1623)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1624)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1625)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1626)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1627)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1628)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1629)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1630)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1631)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1632)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1633)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1634)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1635)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1636)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1637)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1638)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1639)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1640)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1641)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1642)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1643)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1644)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1645)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1646)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1647)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1648)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1649)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1650)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1651)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1652)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1653)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1654)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1655)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1656)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1657)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1658)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1659)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1660)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1661)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1662)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1663)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1664)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1665)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1666)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1667)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1668)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1669)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1670)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1671)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1672)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1673)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1674)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1675)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1676)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1677)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1678)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1679)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1680)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1681)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1682)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1683)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1684)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1685)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1686)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1687)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1688)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1689)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1690)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1691)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1692)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1693)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1694)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1695)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1696)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1697)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1698)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1699)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1700)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1701)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1702)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1703)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1704)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1705)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1706)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1707)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1708)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1709)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1710)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1711)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1712)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1713)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1714)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1715)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1716)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1717)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1718)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1719)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1720)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1721)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1722)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1723)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1724)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1725)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1726)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1727)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1728)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1729)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1730)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1731)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1732)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1733)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1734)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1735)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1736)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1737)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1738)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1739)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1740)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1741)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1742)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1743)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1744)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1745)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1746)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1747)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1748)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1749)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1750)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1751)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1752)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1753)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1754)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1755)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1756)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1757)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1758)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1759)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1760)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1761)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1762)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1763)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1764)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1765)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1766)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1767)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1768)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1769)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1770)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1771)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1772)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1773)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1774)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1775)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1776)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1777)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1778)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1779)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1780)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1781)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1782)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1783)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1784)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1785)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1786)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1787)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1788)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1789)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1790)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1791)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1792)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1793)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1794)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1795)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1796)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1797)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1798)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1799)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1800)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1801)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1802)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1803)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1804)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1805)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1806)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1807)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1808)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1809)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1810)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1811)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1812)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1813)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1814)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1815)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1816)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1817)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1818)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1819)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1820)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1821)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1822)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1823)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1824)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1825)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1826)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1827)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1828)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1829)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1830)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1831)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1832)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1833)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1834)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1835)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1836)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1837)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1838)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1839)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1840)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1841)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1842)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1843)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1844)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1845)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1846)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1847)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1848)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1849)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1850)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1851)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1852)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1853)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1854)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1855)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1856)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1857)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1858)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1859)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1860)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1861)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1862)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1863)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1864)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1865)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1866)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1867)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1868)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1869)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1870)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1871)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1872)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1873)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1874)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1875)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1876)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1877)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1878)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1879)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1880)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1881)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1882)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1883)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1884)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1885)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1886)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1887)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1888)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1889)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1890)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1891)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1892)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1893)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1894)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1895)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1896)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1897)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1898)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1899)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1900)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1901)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1902)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1903)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1904)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1905)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1906)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1907)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1908)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1909)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1910)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1911)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1912)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1913)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1914)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1915)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1916)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1917)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1918)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1919)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1920)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1921)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1922)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1923)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1924)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1925)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1926)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1927)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1928)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1929)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1930)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1931)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1932)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1933)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1934)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1935)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1936)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1937)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1938)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1939)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1940)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1941)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1942)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1943)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1944)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1945)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1946)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1947)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1948)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1949)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1950)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1951)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1952)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1953)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1954)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1955)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1956)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1957)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1958)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1959)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1960)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1961)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1962)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1963)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1964)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1965)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1966)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1967)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1968)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1969)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1970)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1971)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1972)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1973)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1974)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1975)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1976)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1977)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1978)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1979)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1980)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1981)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1982)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1983)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1984)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1985)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1986)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1987)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1988)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1989)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1990)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1991)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1992)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1993)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1994)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1995)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1996)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1997)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1998)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (1999)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2000)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2001)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2002)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2003)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2004)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2005)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2006)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2007)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2008)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2009)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2010)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2011)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2012)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2013)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2014)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2015)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2016)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2017)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2018)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2019)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2020)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2021)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2022)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2023)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2024)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2025)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2026)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2027)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2028)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2029)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2030)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2031)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2032)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2033)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2034)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2035)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2036)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2037)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2038)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2039)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2040)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2041)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2042)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2043)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2044)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2045)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2046)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2047)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2048)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2049)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2050)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2051)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2052)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2053)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2054)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2055)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2056)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2057)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2058)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2059)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2060)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2061)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2062)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2063)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2064)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2065)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2066)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2067)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2068)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2069)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2070)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2071)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2072)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2073)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2074)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2075)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2076)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2077)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2078)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2079)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2080)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2081)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2082)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2083)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2084)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2085)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2086)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2087)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2088)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2089)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2090)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2091)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2092)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2093)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2094)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2095)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2096)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2097)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2098)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2099)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2100)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2101)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2102)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2103)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2104)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2105)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2106)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2107)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2108)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2109)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2110)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2111)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2112)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2113)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2114)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2115)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2116)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2117)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2118)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2119)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2120)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2121)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2122)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2123)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2124)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2125)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2126)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2127)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2128)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2129)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2130)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2131)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2132)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2133)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2134)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2135)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2136)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2137)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2138)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2139)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2140)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2141)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2142)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2143)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2144)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2145)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2146)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2147)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2148)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2149)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2150)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2151)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2152)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2153)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2154)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2155)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2156)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2157)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2158)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2159)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2160)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2161)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2162)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2163)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2164)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2165)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2166)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2167)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2168)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2169)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2170)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2171)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2172)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2173)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2174)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2175)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2176)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2177)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2178)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2179)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2180)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2181)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2182)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2183)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2184)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2185)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2186)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2187)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2188)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2189)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2190)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2191)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2192)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2193)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2194)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2195)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2196)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2197)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2198)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2199)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2200)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2201)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2202)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2203)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2204)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2205)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2206)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2207)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2208)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2209)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2210)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2211)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2212)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2213)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2214)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2215)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2216)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2217)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2218)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2219)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2220)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2221)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2222)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2223)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2224)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2225)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2226)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2227)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2228)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2229)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2230)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2231)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2232)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2233)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2234)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2235)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2236)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2237)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2238)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2239)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2240)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2241)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2242)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2243)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2244)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2245)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2246)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2247)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2248)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2249)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2250)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2251)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2252)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2253)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2254)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2255)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2256)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2257)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2258)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2259)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2260)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2261)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2262)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2263)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2264)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2265)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2266)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2267)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2268)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2269)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2270)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2271)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2272)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2273)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2274)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2275)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2276)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2277)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2278)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2279)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2280)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2281)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2282)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2283)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2284)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2285)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2286)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2287)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2288)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2289)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2290)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2291)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2292)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2293)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2294)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2295)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2296)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2297)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2298)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2299)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2300)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2301)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2302)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2303)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2304)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2305)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2306)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2307)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2308)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2309)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2310)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2311)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2312)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2313)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2314)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2315)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2316)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2317)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2318)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2319)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2320)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2321)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2322)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2323)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2324)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2325)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2326)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2327)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2328)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2329)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2330)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2331)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2332)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2333)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2334)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2335)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2336)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2337)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2338)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2339)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2340)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2341)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2342)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2343)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2344)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2345)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2346)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2347)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2348)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2349)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2350)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2351)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2352)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2353)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2354)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2355)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2356)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2357)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2358)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2359)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2360)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2361)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2362)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2363)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2364)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2365)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2366)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2367)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2368)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2369)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2370)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2371)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2372)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2373)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2374)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2375)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2376)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2377)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2378)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2379)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2380)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2381)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2382)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2383)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2384)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2385)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2386)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2387)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2388)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2389)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2390)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2391)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2392)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2393)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2394)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2395)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2396)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2397)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2398)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2399)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2400)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2401)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2402)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2403)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2404)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2405)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2406)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2407)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2408)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2409)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2410)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2411)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2412)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2413)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2414)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2415)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2416)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2417)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2418)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2419)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2420)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2421)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2422)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2423)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2424)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2425)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2426)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2427)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2428)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2429)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2430)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2431)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2432)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2433)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2434)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2435)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2436)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2437)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2438)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2439)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2440)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2441)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2442)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2443)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2444)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2445)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2446)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2447)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2448)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2449)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2450)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2451)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2452)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2453)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2454)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2455)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2456)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2457)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2458)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2459)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2460)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2461)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2462)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2463)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2464)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2465)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2466)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2467)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2468)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2469)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2470)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2471)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2472)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2473)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2474)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2475)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2476)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2477)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2478)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2479)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2480)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2481)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2482)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2483)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2484)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2485)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2486)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2487)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2488)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2489)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2490)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2491)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2492)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2493)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2494)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2495)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2496)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2497)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2498)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2499)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2500)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2501)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2502)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2503)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2504)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2505)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2506)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2507)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2508)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2509)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2510)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2511)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2512)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2513)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2514)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2515)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2516)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2517)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2518)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2519)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2520)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2521)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2522)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2523)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2524)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2525)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2526)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2527)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2528)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2529)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2530)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2531)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2532)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2533)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2534)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2535)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2536)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2537)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2538)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2539)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2540)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2541)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2542)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2543)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2544)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2545)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2546)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2547)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2548)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2549)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2550)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2551)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2552)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2553)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2554)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2555)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2556)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2557)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2558)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2559)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2560)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2561)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2562)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2563)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2564)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2565)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2566)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2567)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2568)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2569)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2570)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2571)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2572)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2573)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2574)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2575)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2576)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2577)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2578)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2579)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2580)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2581)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2582)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2583)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2584)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2585)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2586)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2587)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2588)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2589)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2590)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2591)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2592)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2593)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2594)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2595)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2596)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2597)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2598)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2599)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2600)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2601)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2602)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2603)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2604)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2605)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2606)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2607)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2608)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2609)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2610)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2611)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2612)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2613)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2614)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2615)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2616)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2617)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2618)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2619)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2620)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2621)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2622)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2623)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2624)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2625)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2626)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2627)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2628)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2629)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2630)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2631)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2632)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2633)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2634)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2635)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2636)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2637)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2638)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2639)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2640)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2641)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2642)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2643)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2644)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2645)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2646)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2647)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2648)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2649)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2650)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2651)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2652)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2653)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2654)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2655)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2656)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2657)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2658)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2659)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2660)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2661)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2662)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2663)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2664)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2665)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2666)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2667)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2668)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2669)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2670)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2671)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2672)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2673)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2674)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2675)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2676)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2677)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2678)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2679)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2680)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2681)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2682)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2683)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2684)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2685)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2686)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2687)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2688)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2689)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2690)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2691)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2692)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2693)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2694)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2695)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2696)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2697)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2698)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2699)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2700)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2701)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2702)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2703)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2704)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2705)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2706)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2707)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2708)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2709)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2710)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2711)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2712)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2713)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2714)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2715)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2716)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2717)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2718)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2719)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2720)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2721)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2722)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2723)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2724)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2725)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2726)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2727)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2728)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2729)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2730)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2731)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2732)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2733)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2734)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2735)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2736)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2737)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2738)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2739)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2740)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2741)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2742)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2743)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2744)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2745)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2746)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2747)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2748)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2749)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2750)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2751)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2752)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2753)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2754)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2755)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2756)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2757)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2758)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2759)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2760)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2761)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2762)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2763)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2764)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2765)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2766)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2767)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2768)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2769)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2770)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2771)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2772)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2773)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2774)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2775)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2776)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2777)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2778)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2779)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2780)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2781)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2782)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2783)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2784)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2785)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2786)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2787)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2788)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2789)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2790)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2791)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2792)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2793)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2794)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2795)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2796)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2797)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2798)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2799)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2800)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2801)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2802)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2803)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2804)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2805)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2806)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2807)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2808)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2809)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2810)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2811)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2812)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2813)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2814)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2815)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2816)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2817)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2818)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2819)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2820)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2821)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2822)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2823)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2824)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2825)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2826)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2827)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2828)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2829)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2830)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2831)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2832)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2833)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2834)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2835)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2836)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2837)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2838)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2839)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2840)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2841)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2842)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2843)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2844)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2845)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2846)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2847)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2848)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2849)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2850)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2851)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2852)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2853)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2854)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2855)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2856)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2857)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2858)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2859)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2860)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2861)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2862)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2863)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2864)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2865)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2866)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2867)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2868)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2869)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2870)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2871)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2872)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2873)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2874)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2875)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2876)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2877)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2878)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2879)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2880)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2881)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2882)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2883)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2884)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2885)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2886)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2887)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2888)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2889)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2890)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2891)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2892)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2893)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2894)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2895)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2896)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2897)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2898)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2899)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2900)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2901)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2902)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2903)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2904)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2905)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2906)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2907)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2908)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2909)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2910)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2911)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2912)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2913)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2914)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2915)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2916)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2917)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2918)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2919)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2920)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2921)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2922)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2923)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2924)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2925)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2926)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2927)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2928)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2929)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2930)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2931)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2932)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2933)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2934)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2935)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2936)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2937)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2938)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2939)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2940)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2941)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2942)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2943)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2944)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2945)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2946)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2947)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2948)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2949)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2950)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2951)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2952)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2953)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2954)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2955)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2956)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2957)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2958)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2959)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2960)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2961)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2962)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2963)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2964)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2965)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2966)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2967)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2968)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2969)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2970)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2971)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2972)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2973)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2974)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2975)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2976)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2977)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2978)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2979)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2980)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2981)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2982)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2983)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2984)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2985)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2986)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2987)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2988)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2989)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2990)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2991)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2992)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2993)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2994)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2995)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2996)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2997)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2998)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (2999)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3000)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3001)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3002)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3003)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3004)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3005)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3006)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3007)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3008)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3009)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3010)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3011)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3012)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3013)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3014)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3015)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3016)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3017)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3018)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3019)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3020)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3021)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3022)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3023)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3024)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3025)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3026)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3027)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3028)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3029)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3030)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3031)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3032)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3033)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3034)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3035)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3036)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3037)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3038)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3039)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3040)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3041)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3042)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3043)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3044)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3045)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3046)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3047)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3048)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3049)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3050)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3051)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3052)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3053)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3054)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3055)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3056)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3057)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3058)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3059)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3060)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3061)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3062)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3063)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3064)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3065)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3066)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3067)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3068)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3069)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3070)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3071)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3072)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3073)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3074)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3075)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3076)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3077)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3078)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3079)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3080)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3081)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3082)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3083)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3084)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3085)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3086)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3087)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3088)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3089)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3090)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3091)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3092)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3093)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3094)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3095)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3096)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3097)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3098)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3099)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3100)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3101)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3102)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3103)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3104)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3105)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3106)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3107)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3108)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3109)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3110)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3111)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3112)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3113)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3114)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3115)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3116)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3117)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3118)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3119)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3120)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3121)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3122)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3123)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3124)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3125)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3126)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3127)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3128)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3129)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3130)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3131)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3132)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3133)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3134)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3135)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3136)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3137)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3138)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3139)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3140)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3141)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3142)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3143)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3144)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3145)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3146)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3147)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3148)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3149)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3150)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3151)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3152)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3153)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3154)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3155)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3156)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3157)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3158)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3159)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3160)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3161)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3162)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3163)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3164)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3165)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3166)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3167)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3168)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3169)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3170)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3171)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3172)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3173)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3174)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3175)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3176)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3177)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3178)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3179)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3180)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3181)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3182)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3183)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3184)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3185)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3186)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3187)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3188)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3189)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3190)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3191)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3192)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3193)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3194)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3195)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3196)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3197)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3198)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3199)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3200)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3201)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3202)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3203)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3204)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3205)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3206)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3207)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3208)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3209)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3210)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3211)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3212)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3213)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3214)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3215)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3216)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3217)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3218)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3219)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3220)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3221)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3222)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3223)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3224)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3225)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3226)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3227)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3228)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3229)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3230)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3231)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3232)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3233)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3234)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3235)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3236)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3237)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3238)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3239)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3240)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3241)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3242)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3243)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3244)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3245)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3246)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3247)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3248)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3249)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3250)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3251)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3252)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3253)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3254)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3255)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3256)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3257)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3258)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3259)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3260)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3261)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3262)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3263)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3264)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3265)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3266)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3267)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3268)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3269)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3270)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3271)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3272)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3273)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3274)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3275)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3276)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3277)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3278)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3279)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3280)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3281)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3282)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3283)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3284)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3285)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3286)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3287)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3288)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3289)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3290)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3291)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3292)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3293)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3294)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3295)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3296)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3297)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3298)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3299)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3300)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3301)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3302)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3303)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3304)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3305)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3306)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3307)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3308)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3309)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3310)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3311)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3312)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3313)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3314)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3315)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3316)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3317)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3318)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3319)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3320)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3321)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3322)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3323)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3324)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3325)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3326)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3327)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3328)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3329)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3330)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3331)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3332)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3333)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3334)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3335)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3336)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3337)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3338)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3339)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3340)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3341)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3342)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3343)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3344)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3345)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3346)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3347)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3348)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3349)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3350)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3351)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3352)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3353)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3354)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3355)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3356)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3357)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3358)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3359)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3360)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3361)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3362)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3363)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3364)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3365)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3366)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3367)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3368)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3369)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3370)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3371)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3372)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3373)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3374)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3375)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3376)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3377)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3378)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3379)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3380)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3381)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3382)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3383)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3384)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3385)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3386)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3387)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3388)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3389)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3390)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3391)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3392)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3393)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3394)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3395)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3396)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3397)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3398)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3399)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3400)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3401)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3402)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3403)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3404)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3405)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3406)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3407)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3408)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3409)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3410)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3411)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3412)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3413)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3414)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3415)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3416)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3417)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3418)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3419)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3420)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3421)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3422)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3423)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3424)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3425)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3426)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3427)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3428)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3429)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3430)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3431)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3432)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3433)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3434)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3435)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3436)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3437)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3438)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3439)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3440)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3441)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3442)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3443)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3444)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3445)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3446)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3447)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3448)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3449)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3450)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3451)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3452)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3453)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3454)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3455)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3456)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3457)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3458)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3459)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3460)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3461)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3462)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3463)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3464)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3465)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3466)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3467)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3468)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3469)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3470)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3471)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3472)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3473)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3474)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3475)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3476)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3477)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3478)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3479)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3480)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3481)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3482)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3483)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3484)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3485)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3486)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3487)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3488)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3489)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3490)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3491)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3492)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3493)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3494)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3495)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3496)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3497)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3498)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3499)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3500)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3501)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3502)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3503)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3504)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3505)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3506)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3507)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3508)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3509)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3510)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3511)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3512)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3513)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3514)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3515)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3516)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3517)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3518)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3519)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3520)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3521)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3522)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3523)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3524)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3525)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3526)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3527)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3528)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3529)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3530)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3531)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3532)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3533)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3534)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3535)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3536)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3537)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3538)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3539)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3540)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3541)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3542)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3543)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3544)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3545)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3546)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3547)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3548)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3549)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3550)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3551)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3552)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3553)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3554)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3555)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3556)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3557)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3558)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3559)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3560)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3561)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3562)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3563)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3564)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3565)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3566)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3567)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3568)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3569)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3570)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3571)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3572)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3573)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3574)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3575)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3576)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3577)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3578)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3579)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3580)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3581)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3582)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3583)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3584)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3585)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3586)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3587)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3588)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3589)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3590)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3591)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3592)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3593)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3594)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3595)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3596)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3597)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3598)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3599)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3600)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3601)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3602)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3603)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3604)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3605)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3606)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3607)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3608)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3609)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3610)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3611)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3612)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3613)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3614)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3615)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3616)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3617)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3618)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3619)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3620)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3621)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3622)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3623)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3624)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3625)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3626)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3627)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3628)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3629)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3630)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3631)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3632)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3633)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3634)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3635)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3636)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3637)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3638)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3639)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3640)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3641)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3642)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3643)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3644)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3645)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3646)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3647)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3648)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3649)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3650)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3651)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3652)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3653)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3654)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3655)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3656)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3657)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3658)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3659)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3660)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3661)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3662)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3663)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3664)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3665)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3666)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3667)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3668)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3669)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3670)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3671)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3672)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3673)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3674)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3675)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3676)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3677)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3678)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3679)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3680)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3681)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3682)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3683)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3684)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3685)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3686)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3687)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3688)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3689)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3690)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3691)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3692)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3693)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3694)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3695)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3696)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3697)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3698)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3699)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3700)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3701)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3702)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3703)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3704)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3705)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3706)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3707)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3708)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3709)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3710)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3711)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3712)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3713)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3714)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3715)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3716)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3717)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3718)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3719)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3720)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3721)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3722)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3723)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3724)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3725)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3726)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3727)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3728)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3729)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3730)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3731)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3732)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3733)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3734)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3735)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3736)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3737)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3738)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3739)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3740)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3741)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3742)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3743)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3744)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3745)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3746)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3747)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3748)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3749)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3750)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3751)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3752)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3753)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3754)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3755)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3756)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3757)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3758)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3759)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3760)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3761)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3762)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3763)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3764)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3765)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3766)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3767)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3768)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3769)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3770)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3771)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3772)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3773)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3774)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3775)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3776)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3777)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3778)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3779)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3780)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3781)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3782)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3783)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3784)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3785)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3786)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3787)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3788)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3789)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3790)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3791)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3792)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3793)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3794)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3795)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3796)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3797)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3798)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3799)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3800)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3801)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3802)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3803)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3804)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3805)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3806)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3807)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3808)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3809)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3810)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3811)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3812)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3813)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3814)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3815)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3816)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3817)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3818)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3819)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3820)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3821)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3822)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3823)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3824)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3825)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3826)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3827)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3828)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3829)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3830)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3831)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3832)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3833)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3834)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3835)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3836)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3837)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3838)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3839)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3840)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3841)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3842)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3843)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3844)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3845)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3846)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3847)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3848)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3849)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3850)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3851)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3852)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3853)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3854)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3855)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3856)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3857)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3858)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3859)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3860)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3861)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3862)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3863)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3864)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3865)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3866)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3867)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3868)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3869)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3870)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3871)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3872)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3873)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3874)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3875)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3876)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3877)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3878)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3879)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3880)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3881)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3882)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3883)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3884)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3885)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3886)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3887)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3888)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3889)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3890)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3891)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3892)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3893)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3894)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3895)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3896)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3897)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3898)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3899)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3900)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3901)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3902)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3903)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3904)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3905)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3906)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3907)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3908)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3909)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3910)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3911)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3912)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3913)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3914)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3915)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3916)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3917)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3918)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3919)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3920)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3921)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3922)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3923)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3924)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3925)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3926)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3927)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3928)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3929)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3930)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3931)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3932)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3933)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3934)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3935)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3936)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3937)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3938)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3939)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3940)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3941)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3942)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3943)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3944)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3945)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3946)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3947)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3948)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3949)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3950)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3951)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3952)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3953)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3954)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3955)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3956)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3957)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3958)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3959)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3960)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3961)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3962)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3963)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3964)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3965)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3966)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3967)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3968)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3969)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3970)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3971)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3972)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3973)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3974)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3975)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3976)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3977)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3978)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3979)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3980)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3981)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3982)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3983)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3984)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3985)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3986)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3987)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3988)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3989)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3990)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3991)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3992)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3993)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3994)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3995)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3996)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3997)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3998)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (3999)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4000)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4001)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4002)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4003)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4004)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4005)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4006)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4007)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4008)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4009)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4010)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4011)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4012)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4013)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4014)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4015)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4016)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4017)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4018)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4019)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4020)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4021)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4022)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4023)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4024)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4025)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4026)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4027)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4028)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4029)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4030)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4031)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4032)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4033)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4034)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4035)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4036)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4037)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4038)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4039)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4040)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4041)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4042)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4043)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4044)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4045)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4046)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4047)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4048)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4049)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4050)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4051)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4052)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4053)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4054)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4055)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4056)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4057)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4058)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4059)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4060)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4061)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4062)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4063)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4064)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4065)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4066)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4067)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4068)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4069)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4070)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4071)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4072)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4073)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4074)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4075)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4076)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4077)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4078)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4079)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4080)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4081)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4082)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4083)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4084)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4085)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4086)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4087)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4088)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4089)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4090)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4091)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4092)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4093)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4094)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4095)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4096)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4097)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4098)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4099)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4100)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4101)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4102)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4103)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4104)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4105)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4106)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4107)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4108)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4109)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4110)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4111)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4112)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4113)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4114)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4115)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4116)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4117)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4118)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4119)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4120)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4121)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4122)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4123)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4124)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4125)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4126)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4127)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4128)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4129)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4130)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4131)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4132)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4133)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4134)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4135)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4136)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4137)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4138)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4139)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4140)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4141)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4142)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4143)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4144)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4145)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4146)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4147)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4148)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4149)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4150)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4151)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4152)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4153)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4154)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4155)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4156)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4157)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4158)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4159)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4160)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4161)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4162)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4163)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4164)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4165)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4166)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4167)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4168)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4169)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4170)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4171)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4172)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4173)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4174)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4175)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4176)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4177)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4178)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4179)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4180)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4181)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4182)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4183)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4184)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4185)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4186)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4187)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4188)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4189)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4190)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4191)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4192)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4193)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4194)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4195)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4196)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4197)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4198)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4199)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4200)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4201)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4202)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4203)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4204)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4205)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4206)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4207)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4208)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4209)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4210)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4211)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4212)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4213)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4214)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4215)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4216)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4217)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4218)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4219)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4220)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4221)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4222)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4223)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4224)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4225)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4226)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4227)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4228)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4229)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4230)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4231)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4232)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4233)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4234)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4235)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4236)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4237)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4238)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4239)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4240)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4241)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4242)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4243)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4244)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4245)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4246)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4247)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4248)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4249)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4250)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4251)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4252)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4253)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4254)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4255)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4256)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4257)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4258)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4259)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4260)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4261)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4262)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4263)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4264)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4265)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4266)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4267)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4268)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4269)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4270)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4271)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4272)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4273)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4274)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4275)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4276)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4277)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4278)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4279)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4280)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4281)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4282)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4283)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4284)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4285)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4286)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4287)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4288)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4289)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4290)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4291)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4292)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4293)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4294)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4295)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4296)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4297)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4298)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4299)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4300)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4301)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4302)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4303)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4304)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4305)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4306)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4307)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4308)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4309)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4310)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4311)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4312)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4313)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4314)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4315)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4316)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4317)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4318)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4319)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4320)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4321)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4322)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4323)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4324)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4325)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4326)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4327)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4328)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4329)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4330)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4331)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4332)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4333)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4334)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4335)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4336)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4337)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4338)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4339)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4340)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4341)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4342)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4343)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4344)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4345)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4346)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4347)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4348)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4349)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4350)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4351)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4352)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4353)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4354)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4355)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4356)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4357)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4358)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4359)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4360)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4361)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4362)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4363)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4364)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4365)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4366)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4367)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4368)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4369)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4370)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4371)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4372)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4373)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4374)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4375)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4376)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4377)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4378)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4379)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4380)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4381)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4382)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4383)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4384)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4385)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4386)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4387)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4388)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4389)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4390)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4391)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4392)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4393)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4394)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4395)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4396)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4397)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4398)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4399)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4400)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4401)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4402)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4403)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4404)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4405)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4406)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4407)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4408)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4409)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4410)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4411)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4412)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4413)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4414)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4415)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4416)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4417)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4418)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4419)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4420)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4421)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4422)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4423)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4424)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4425)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4426)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4427)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4428)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4429)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4430)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4431)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4432)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4433)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4434)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4435)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4436)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4437)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4438)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4439)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4440)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4441)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4442)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4443)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4444)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4445)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4446)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4447)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4448)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4449)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4450)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4451)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4452)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4453)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4454)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4455)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4456)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4457)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4458)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4459)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4460)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4461)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4462)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4463)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4464)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4465)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4466)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4467)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4468)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4469)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4470)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4471)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4472)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4473)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4474)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4475)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4476)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4477)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4478)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4479)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4480)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4481)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4482)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4483)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4484)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4485)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4486)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4487)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4488)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4489)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4490)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4491)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4492)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4493)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4494)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4495)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4496)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4497)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4498)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4499)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4500)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4501)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4502)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4503)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4504)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4505)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4506)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4507)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4508)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4509)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4510)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4511)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4512)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4513)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4514)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4515)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4516)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4517)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4518)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4519)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4520)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4521)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4522)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4523)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4524)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4525)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4526)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4527)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4528)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4529)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4530)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4531)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4532)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4533)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4534)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4535)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4536)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4537)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4538)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4539)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4540)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4541)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4542)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4543)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4544)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4545)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4546)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4547)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4548)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4549)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4550)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4551)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4552)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4553)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4554)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4555)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4556)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4557)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4558)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4559)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4560)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4561)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4562)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4563)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4564)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4565)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4566)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4567)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4568)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4569)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4570)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4571)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4572)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4573)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4574)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4575)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4576)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4577)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4578)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4579)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4580)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4581)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4582)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4583)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4584)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4585)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4586)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4587)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4588)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4589)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4590)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4591)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4592)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4593)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4594)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4595)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4596)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4597)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4598)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4599)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4600)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4601)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4602)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4603)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4604)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4605)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4606)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4607)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4608)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4609)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4610)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4611)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4612)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4613)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4614)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4615)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4616)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4617)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4618)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4619)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4620)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4621)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4622)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4623)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4624)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4625)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4626)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4627)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4628)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4629)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4630)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4631)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4632)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4633)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4634)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4635)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4636)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4637)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4638)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4639)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4640)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4641)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4642)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4643)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4644)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4645)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4646)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4647)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4648)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4649)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4650)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4651)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4652)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4653)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4654)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4655)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4656)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4657)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4658)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4659)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4660)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4661)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4662)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4663)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4664)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4665)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4666)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4667)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4668)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4669)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4670)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4671)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4672)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4673)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4674)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4675)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4676)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4677)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4678)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4679)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4680)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4681)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4682)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4683)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4684)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4685)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4686)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4687)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4688)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4689)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4690)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4691)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4692)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4693)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4694)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4695)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4696)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4697)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4698)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4699)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4700)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4701)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4702)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4703)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4704)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4705)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4706)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4707)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4708)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4709)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4710)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4711)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4712)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4713)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4714)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4715)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4716)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4717)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4718)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4719)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4720)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4721)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4722)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4723)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4724)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4725)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4726)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4727)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4728)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4729)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4730)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4731)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4732)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4733)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4734)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4735)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4736)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4737)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4738)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4739)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4740)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4741)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4742)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4743)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4744)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4745)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4746)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4747)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4748)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4749)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4750)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4751)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4752)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4753)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4754)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4755)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4756)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4757)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4758)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4759)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4760)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4761)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4762)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4763)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4764)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4765)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4766)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4767)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4768)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4769)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4770)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4771)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4772)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4773)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4774)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4775)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4776)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4777)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4778)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4779)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4780)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4781)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4782)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4783)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4784)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4785)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4786)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4787)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4788)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4789)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4790)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4791)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4792)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4793)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4794)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4795)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4796)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4797)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4798)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4799)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4800)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4801)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4802)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4803)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4804)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4805)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4806)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4807)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4808)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4809)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4810)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4811)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4812)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4813)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4814)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4815)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4816)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4817)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4818)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4819)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4820)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4821)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4822)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4823)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4824)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4825)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4826)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4827)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4828)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4829)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4830)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4831)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4832)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4833)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4834)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4835)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4836)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4837)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4838)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4839)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4840)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4841)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4842)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4843)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4844)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4845)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4846)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4847)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4848)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4849)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4850)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4851)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4852)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4853)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4854)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4855)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4856)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4857)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4858)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4859)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4860)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4861)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4862)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4863)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4864)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4865)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4866)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4867)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4868)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4869)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4870)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4871)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4872)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4873)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4874)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4875)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4876)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4877)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4878)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4879)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4880)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4881)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4882)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4883)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4884)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4885)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4886)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4887)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4888)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4889)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4890)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4891)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4892)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4893)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4894)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4895)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4896)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4897)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4898)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4899)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4900)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4901)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4902)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4903)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4904)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4905)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4906)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4907)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4908)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4909)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4910)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4911)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4912)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4913)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4914)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4915)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4916)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4917)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4918)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4919)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4920)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4921)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4922)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4923)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4924)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4925)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4926)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4927)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4928)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4929)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4930)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4931)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4932)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4933)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4934)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4935)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4936)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4937)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4938)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4939)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4940)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4941)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4942)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4943)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4944)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4945)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4946)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4947)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4948)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4949)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4950)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4951)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4952)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4953)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4954)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4955)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4956)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4957)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4958)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4959)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4960)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4961)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4962)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4963)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4964)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4965)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4966)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4967)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4968)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4969)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4970)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4971)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4972)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4973)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4974)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4975)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4976)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4977)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4978)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4979)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4980)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4981)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4982)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4983)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4984)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4985)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4986)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4987)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4988)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4989)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4990)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4991)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4992)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4993)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4994)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4995)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4996)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4997)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4998)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (4999)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5000)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5001)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5002)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5003)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5004)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5005)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5006)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5007)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5008)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5009)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5010)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5011)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5012)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5013)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5014)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5015)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5016)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5017)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5018)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5019)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5020)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5021)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5022)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5023)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5024)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5025)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5026)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5027)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5028)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5029)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5030)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5031)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5032)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5033)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5034)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5035)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5036)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5037)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5038)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5039)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5040)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5041)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5042)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5043)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5044)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5045)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5046)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5047)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5048)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5049)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5050)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5051)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5052)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5053)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5054)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5055)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5056)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5057)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5058)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5059)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5060)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5061)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5062)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5063)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5064)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5065)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5066)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5067)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5068)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5069)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5070)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5071)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5072)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5073)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5074)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5075)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5076)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5077)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5078)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5079)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5080)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5081)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5082)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5083)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5084)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5085)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5086)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5087)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5088)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5089)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5090)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5091)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5092)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5093)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5094)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5095)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5096)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5097)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5098)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5099)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5100)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5101)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5102)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5103)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5104)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5105)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5106)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5107)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5108)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5109)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5110)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5111)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5112)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5113)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5114)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5115)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5116)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5117)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5118)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5119)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5120)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5121)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5122)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5123)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5124)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5125)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5126)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5127)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5128)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5129)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5130)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5131)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5132)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5133)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5134)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5135)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5136)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5137)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5138)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5139)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5140)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5141)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5142)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5143)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5144)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5145)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5146)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5147)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5148)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5149)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5150)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5151)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5152)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5153)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5154)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5155)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5156)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5157)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5158)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5159)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5160)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5161)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5162)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5163)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5164)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5165)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5166)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5167)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5168)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5169)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5170)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5171)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5172)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5173)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5174)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5175)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5176)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5177)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5178)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5179)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5180)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5181)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5182)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5183)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5184)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5185)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5186)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5187)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5188)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5189)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5190)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5191)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5192)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5193)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5194)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5195)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5196)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5197)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5198)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5199)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5200)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5201)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5202)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5203)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5204)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5205)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5206)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5207)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5208)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5209)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5210)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5211)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5212)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5213)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5214)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5215)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5216)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5217)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5218)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5219)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5220)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5221)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5222)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5223)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5224)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5225)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5226)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5227)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5228)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5229)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5230)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5231)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5232)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5233)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5234)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5235)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5236)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5237)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5238)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5239)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5240)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5241)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5242)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5243)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5244)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5245)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5246)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5247)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5248)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5249)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5250)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5251)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5252)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5253)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5254)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5255)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5256)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5257)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5258)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5259)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5260)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5261)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5262)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5263)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5264)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5265)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5266)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5267)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5268)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5269)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5270)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5271)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5272)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5273)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5274)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5275)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5276)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5277)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5278)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5279)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5280)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5281)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5282)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5283)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5284)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5285)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5286)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5287)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5288)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5289)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5290)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5291)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5292)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5293)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5294)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5295)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5296)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5297)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5298)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5299)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5300)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5301)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5302)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5303)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5304)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5305)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5306)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5307)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5308)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5309)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5310)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5311)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5312)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5313)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5314)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5315)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5316)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5317)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5318)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5319)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5320)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5321)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5322)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5323)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5324)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5325)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5326)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5327)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5328)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5329)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5330)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5331)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5332)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5333)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5334)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5335)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5336)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5337)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5338)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5339)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5340)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5341)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5342)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5343)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5344)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5345)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5346)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5347)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5348)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5349)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5350)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5351)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5352)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5353)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5354)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5355)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5356)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5357)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5358)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5359)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5360)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5361)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5362)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5363)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5364)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5365)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5366)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5367)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5368)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5369)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5370)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5371)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5372)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5373)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5374)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5375)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5376)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5377)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5378)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5379)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5380)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5381)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5382)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5383)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5384)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5385)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5386)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5387)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5388)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5389)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5390)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5391)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5392)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5393)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5394)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5395)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5396)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5397)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5398)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5399)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5400)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5401)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5402)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5403)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5404)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5405)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5406)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5407)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5408)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5409)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5410)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5411)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5412)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5413)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5414)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5415)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5416)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5417)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5418)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5419)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5420)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5421)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5422)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5423)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5424)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5425)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5426)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5427)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5428)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5429)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5430)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5431)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5432)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5433)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5434)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5435)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5436)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5437)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5438)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5439)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5440)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5441)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5442)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5443)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5444)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5445)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5446)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5447)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5448)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5449)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5450)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5451)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5452)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5453)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5454)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5455)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5456)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5457)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5458)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5459)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5460)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5461)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5462)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5463)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5464)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5465)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5466)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5467)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5468)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5469)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5470)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5471)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5472)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5473)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5474)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5475)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5476)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5477)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5478)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5479)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5480)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5481)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5482)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5483)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5484)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5485)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5486)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5487)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5488)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5489)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5490)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5491)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5492)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5493)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5494)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5495)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5496)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5497)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5498)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5499)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5500)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5501)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5502)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5503)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5504)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5505)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5506)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5507)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5508)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5509)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5510)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5511)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5512)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5513)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5514)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5515)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5516)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5517)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5518)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5519)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5520)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5521)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5522)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5523)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5524)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5525)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5526)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5527)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5528)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5529)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5530)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5531)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5532)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5533)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5534)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5535)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5536)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5537)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5538)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5539)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5540)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5541)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5542)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5543)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5544)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5545)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5546)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5547)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5548)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5549)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5550)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5551)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5552)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5553)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5554)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5555)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5556)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5557)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5558)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5559)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5560)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5561)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5562)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5563)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5564)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5565)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5566)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5567)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5568)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5569)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5570)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5571)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5572)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5573)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5574)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5575)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5576)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5577)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5578)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5579)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5580)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5581)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5582)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5583)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5584)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5585)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5586)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5587)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5588)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5589)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5590)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5591)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5592)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5593)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5594)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5595)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5596)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5597)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5598)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5599)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5600)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5601)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5602)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5603)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5604)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5605)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5606)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5607)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5608)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5609)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5610)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5611)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5612)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5613)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5614)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5615)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5616)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5617)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5618)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5619)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5620)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5621)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5622)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5623)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5624)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5625)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5626)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5627)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5628)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5629)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5630)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5631)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5632)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5633)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5634)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5635)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5636)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5637)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5638)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5639)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5640)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5641)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5642)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5643)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5644)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5645)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5646)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5647)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5648)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5649)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5650)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5651)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5652)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5653)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5654)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5655)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5656)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5657)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5658)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5659)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5660)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5661)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5662)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5663)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5664)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5665)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5666)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5667)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5668)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5669)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5670)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5671)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5672)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5673)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5674)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5675)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5676)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5677)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5678)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5679)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5680)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5681)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5682)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5683)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5684)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5685)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5686)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5687)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5688)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5689)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5690)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5691)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5692)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5693)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5694)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5695)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5696)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5697)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5698)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5699)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5700)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5701)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5702)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5703)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5704)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5705)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5706)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5707)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5708)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5709)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5710)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5711)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5712)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5713)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5714)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5715)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5716)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5717)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5718)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5719)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5720)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5721)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5722)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5723)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5724)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5725)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5726)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5727)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5728)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5729)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5730)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5731)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5732)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5733)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5734)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5735)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5736)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5737)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5738)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5739)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5740)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5741)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5742)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5743)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5744)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5745)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5746)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5747)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5748)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5749)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5750)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5751)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5752)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5753)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5754)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5755)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5756)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5757)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5758)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5759)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5760)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5761)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5762)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5763)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5764)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5765)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5766)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5767)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5768)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5769)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5770)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5771)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5772)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5773)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5774)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5775)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5776)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5777)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5778)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5779)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5780)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5781)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5782)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5783)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5784)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5785)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5786)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5787)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5788)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5789)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5790)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5791)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5792)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5793)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5794)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5795)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5796)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5797)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5798)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5799)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5800)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5801)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5802)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5803)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5804)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5805)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5806)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5807)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5808)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5809)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5810)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5811)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5812)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5813)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5814)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5815)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5816)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5817)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5818)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5819)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5820)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5821)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5822)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5823)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5824)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5825)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5826)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5827)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5828)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5829)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5830)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5831)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5832)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5833)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5834)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5835)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5836)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5837)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5838)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5839)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5840)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5841)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5842)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5843)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5844)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5845)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5846)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5847)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5848)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5849)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5850)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5851)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5852)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5853)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5854)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5855)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5856)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5857)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5858)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5859)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5860)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5861)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5862)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5863)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5864)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5865)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5866)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5867)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5868)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5869)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5870)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5871)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5872)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5873)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5874)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5875)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5876)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5877)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5878)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5879)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5880)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5881)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5882)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5883)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5884)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5885)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5886)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5887)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5888)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5889)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5890)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5891)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5892)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5893)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5894)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5895)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5896)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5897)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5898)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5899)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5900)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5901)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5902)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5903)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5904)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5905)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5906)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5907)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5908)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5909)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5910)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5911)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5912)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5913)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5914)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5915)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5916)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5917)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5918)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5919)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5920)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5921)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5922)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5923)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5924)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5925)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5926)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5927)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5928)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5929)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5930)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5931)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5932)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5933)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5934)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5935)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5936)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5937)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5938)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5939)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5940)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5941)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5942)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5943)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5944)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5945)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5946)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5947)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5948)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5949)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5950)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5951)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5952)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5953)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5954)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5955)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5956)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5957)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5958)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5959)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5960)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5961)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5962)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5963)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5964)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5965)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5966)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5967)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5968)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5969)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5970)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5971)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5972)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5973)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5974)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5975)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5976)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5977)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5978)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5979)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5980)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5981)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5982)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5983)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5984)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5985)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5986)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5987)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5988)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5989)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5990)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5991)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5992)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5993)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5994)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5995)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5996)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5997)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5998)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (5999)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6000)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6001)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6002)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6003)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6004)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6005)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6006)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6007)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6008)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6009)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6010)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6011)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6012)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6013)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6014)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6015)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6016)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6017)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6018)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6019)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6020)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6021)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6022)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6023)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6024)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6025)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6026)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6027)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6028)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6029)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6030)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6031)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6032)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6033)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6034)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6035)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6036)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6037)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6038)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6039)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6040)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6041)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6042)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6043)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6044)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6045)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6046)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6047)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6048)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6049)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6050)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6051)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6052)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6053)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6054)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6055)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6056)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6057)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6058)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6059)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6060)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6061)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6062)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6063)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6064)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6065)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6066)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6067)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6068)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6069)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6070)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6071)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6072)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6073)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6074)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6075)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6076)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6077)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6078)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6079)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6080)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6081)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6082)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6083)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6084)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6085)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6086)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6087)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6088)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6089)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6090)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6091)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6092)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6093)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6094)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6095)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6096)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6097)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6098)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6099)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6100)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6101)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6102)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6103)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6104)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6105)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6106)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6107)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6108)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6109)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6110)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6111)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6112)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6113)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6114)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6115)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6116)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6117)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6118)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6119)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6120)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6121)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6122)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6123)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6124)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6125)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6126)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6127)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6128)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6129)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6130)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6131)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6132)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6133)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6134)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6135)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6136)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6137)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6138)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6139)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6140)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6141)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6142)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6143)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6144)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6145)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6146)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6147)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6148)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6149)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6150)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6151)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6152)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6153)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6154)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6155)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6156)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6157)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6158)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6159)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6160)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6161)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6162)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6163)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6164)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6165)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6166)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6167)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6168)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6169)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6170)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6171)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6172)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6173)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6174)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6175)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6176)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6177)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6178)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6179)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6180)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6181)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6182)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6183)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6184)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6185)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6186)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6187)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6188)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6189)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6190)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6191)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6192)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6193)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6194)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6195)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6196)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6197)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6198)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6199)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6200)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6201)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6202)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6203)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6204)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6205)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6206)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6207)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6208)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6209)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6210)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6211)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6212)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6213)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6214)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6215)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6216)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6217)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6218)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6219)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6220)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6221)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6222)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6223)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6224)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6225)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6226)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6227)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6228)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6229)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6230)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6231)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6232)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6233)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6234)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6235)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6236)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6237)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6238)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6239)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6240)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6241)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6242)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6243)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6244)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6245)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6246)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6247)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6248)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6249)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6250)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6251)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6252)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6253)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6254)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6255)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6256)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6257)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6258)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6259)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6260)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6261)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6262)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6263)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6264)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6265)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6266)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6267)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6268)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6269)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6270)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6271)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6272)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6273)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6274)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6275)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6276)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6277)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6278)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6279)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6280)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6281)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6282)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6283)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6284)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6285)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6286)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6287)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6288)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6289)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6290)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6291)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6292)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6293)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6294)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6295)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6296)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6297)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6298)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6299)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6300)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6301)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6302)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6303)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6304)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6305)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6306)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6307)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6308)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6309)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6310)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6311)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6312)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6313)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6314)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6315)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6316)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6317)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6318)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6319)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6320)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6321)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6322)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6323)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6324)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6325)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6326)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6327)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6328)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6329)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6330)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6331)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6332)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6333)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6334)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6335)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6336)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6337)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6338)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6339)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6340)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6341)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6342)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6343)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6344)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6345)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6346)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6347)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6348)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6349)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6350)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6351)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6352)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6353)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6354)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6355)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6356)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6357)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6358)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6359)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6360)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6361)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6362)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6363)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6364)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6365)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6366)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6367)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6368)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6369)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6370)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6371)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6372)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6373)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6374)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6375)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6376)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6377)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6378)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6379)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6380)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6381)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6382)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6383)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6384)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6385)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6386)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6387)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6388)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6389)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6390)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6391)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6392)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6393)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6394)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6395)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6396)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6397)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6398)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6399)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6400)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6401)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6402)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6403)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6404)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6405)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6406)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6407)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6408)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6409)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6410)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6411)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6412)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6413)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6414)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6415)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6416)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6417)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6418)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6419)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6420)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6421)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6422)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6423)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6424)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6425)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6426)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6427)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6428)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6429)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6430)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6431)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6432)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6433)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6434)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6435)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6436)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6437)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6438)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6439)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6440)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6441)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6442)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6443)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6444)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6445)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6446)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6447)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6448)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6449)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6450)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6451)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6452)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6453)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6454)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6455)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6456)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6457)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6458)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6459)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6460)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6461)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6462)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6463)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6464)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6465)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6466)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6467)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6468)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6469)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6470)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6471)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6472)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6473)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6474)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6475)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6476)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6477)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6478)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6479)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6480)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6481)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6482)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6483)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6484)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6485)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6486)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6487)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6488)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6489)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6490)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6491)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6492)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6493)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6494)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6495)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6496)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6497)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6498)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6499)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6500)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6501)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6502)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6503)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6504)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6505)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6506)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6507)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6508)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6509)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6510)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6511)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6512)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6513)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6514)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6515)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6516)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6517)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6518)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6519)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6520)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6521)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6522)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6523)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6524)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6525)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6526)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6527)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6528)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6529)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6530)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6531)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6532)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6533)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6534)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6535)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6536)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6537)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6538)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6539)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6540)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6541)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6542)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6543)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6544)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6545)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6546)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6547)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6548)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6549)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6550)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6551)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6552)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6553)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6554)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6555)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6556)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6557)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6558)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6559)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6560)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6561)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6562)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6563)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6564)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6565)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6566)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6567)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6568)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6569)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6570)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6571)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6572)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6573)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6574)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6575)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6576)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6577)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6578)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6579)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6580)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6581)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6582)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6583)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6584)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6585)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6586)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6587)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6588)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6589)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6590)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6591)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6592)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6593)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6594)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6595)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6596)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6597)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6598)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6599)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6600)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6601)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6602)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6603)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6604)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6605)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6606)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6607)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6608)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6609)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6610)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6611)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6612)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6613)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6614)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6615)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6616)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6617)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6618)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6619)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6620)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6621)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6622)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6623)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6624)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6625)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6626)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6627)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6628)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6629)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6630)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6631)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6632)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6633)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6634)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6635)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6636)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6637)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6638)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6639)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6640)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6641)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6642)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6643)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6644)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6645)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6646)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6647)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6648)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6649)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6650)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6651)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6652)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6653)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6654)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6655)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6656)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6657)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6658)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6659)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6660)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6661)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6662)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6663)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6664)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6665)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6666)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6667)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6668)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6669)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6670)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6671)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6672)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6673)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6674)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6675)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6676)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6677)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6678)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6679)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6680)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6681)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6682)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6683)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6684)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6685)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6686)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6687)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6688)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6689)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6690)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6691)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6692)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6693)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6694)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6695)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6696)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6697)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6698)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6699)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6700)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6701)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6702)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6703)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6704)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6705)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6706)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6707)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6708)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6709)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6710)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6711)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6712)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6713)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6714)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6715)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6716)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6717)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6718)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6719)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6720)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6721)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6722)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6723)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6724)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6725)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6726)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6727)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6728)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6729)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6730)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6731)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6732)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6733)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6734)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6735)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6736)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6737)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6738)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6739)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6740)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6741)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6742)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6743)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6744)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6745)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6746)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6747)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6748)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6749)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6750)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6751)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6752)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6753)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6754)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6755)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6756)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6757)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6758)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6759)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6760)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6761)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6762)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6763)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6764)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6765)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6766)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6767)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6768)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6769)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6770)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6771)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6772)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6773)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6774)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6775)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6776)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6777)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6778)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6779)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6780)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6781)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6782)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6783)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6784)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6785)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6786)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6787)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6788)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6789)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6790)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6791)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6792)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6793)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6794)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6795)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6796)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6797)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6798)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6799)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6800)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6801)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6802)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6803)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6804)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6805)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6806)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6807)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6808)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6809)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6810)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6811)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6812)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6813)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6814)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6815)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6816)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6817)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6818)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6819)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6820)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6821)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6822)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6823)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6824)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6825)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6826)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6827)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6828)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6829)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6830)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6831)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6832)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6833)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6834)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6835)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6836)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6837)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6838)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6839)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6840)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6841)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6842)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6843)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6844)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6845)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6846)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6847)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6848)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6849)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6850)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6851)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6852)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6853)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6854)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6855)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6856)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6857)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6858)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6859)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6860)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6861)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6862)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6863)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6864)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6865)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6866)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6867)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6868)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6869)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6870)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6871)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6872)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6873)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6874)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6875)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6876)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6877)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6878)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6879)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6880)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6881)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6882)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6883)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6884)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6885)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6886)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6887)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6888)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6889)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6890)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6891)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6892)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6893)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6894)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6895)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6896)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6897)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6898)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6899)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6900)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6901)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6902)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6903)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6904)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6905)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6906)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6907)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6908)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6909)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6910)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6911)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6912)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6913)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6914)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6915)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6916)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6917)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6918)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6919)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6920)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6921)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6922)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6923)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6924)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6925)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6926)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6927)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6928)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6929)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6930)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6931)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6932)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6933)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6934)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6935)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6936)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6937)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6938)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6939)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6940)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6941)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6942)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6943)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6944)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6945)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6946)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6947)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6948)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6949)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6950)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6951)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6952)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6953)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6954)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6955)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6956)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6957)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6958)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6959)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6960)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6961)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6962)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6963)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6964)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6965)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6966)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6967)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6968)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6969)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6970)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6971)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6972)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6973)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6974)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6975)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6976)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6977)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6978)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6979)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6980)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6981)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6982)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6983)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6984)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6985)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6986)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6987)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6988)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6989)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6990)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6991)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6992)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6993)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6994)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6995)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6996)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6997)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6998)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (6999)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7000)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7001)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7002)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7003)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7004)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7005)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7006)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7007)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7008)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7009)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7010)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7011)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7012)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7013)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7014)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7015)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7016)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7017)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7018)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7019)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7020)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7021)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7022)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7023)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7024)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7025)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7026)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7027)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7028)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7029)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7030)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7031)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7032)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7033)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7034)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7035)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7036)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7037)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7038)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7039)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7040)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7041)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7042)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7043)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7044)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7045)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7046)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7047)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7048)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7049)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7050)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7051)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7052)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7053)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7054)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7055)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7056)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7057)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7058)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7059)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7060)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7061)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7062)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7063)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7064)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7065)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7066)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7067)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7068)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7069)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7070)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7071)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7072)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7073)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7074)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7075)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7076)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7077)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7078)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7079)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7080)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7081)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7082)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7083)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7084)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7085)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7086)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7087)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7088)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7089)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7090)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7091)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7092)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7093)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7094)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7095)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7096)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7097)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7098)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7099)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7100)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7101)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7102)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7103)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7104)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7105)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7106)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7107)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7108)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7109)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7110)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7111)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7112)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7113)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7114)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7115)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7116)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7117)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7118)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7119)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7120)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7121)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7122)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7123)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7124)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7125)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7126)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7127)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7128)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7129)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7130)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7131)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7132)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7133)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7134)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7135)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7136)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7137)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7138)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7139)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7140)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7141)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7142)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7143)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7144)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7145)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7146)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7147)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7148)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7149)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7150)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7151)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7152)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7153)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7154)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7155)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7156)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7157)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7158)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7159)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7160)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7161)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7162)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7163)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7164)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7165)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7166)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7167)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7168)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7169)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7170)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7171)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7172)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7173)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7174)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7175)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7176)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7177)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7178)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7179)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7180)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7181)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7182)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7183)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7184)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7185)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7186)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7187)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7188)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7189)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7190)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7191)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7192)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7193)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7194)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7195)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7196)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7197)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7198)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7199)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7200)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7201)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7202)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7203)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7204)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7205)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7206)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7207)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7208)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7209)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7210)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7211)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7212)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7213)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7214)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7215)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7216)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7217)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7218)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7219)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7220)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7221)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7222)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7223)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7224)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7225)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7226)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7227)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7228)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7229)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7230)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7231)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7232)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7233)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7234)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7235)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7236)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7237)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7238)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7239)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7240)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7241)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7242)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7243)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7244)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7245)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7246)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7247)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7248)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7249)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7250)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7251)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7252)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7253)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7254)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7255)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7256)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7257)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7258)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7259)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7260)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7261)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7262)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7263)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7264)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7265)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7266)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7267)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7268)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7269)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7270)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7271)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7272)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7273)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7274)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7275)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7276)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7277)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7278)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7279)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7280)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7281)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7282)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7283)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7284)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7285)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7286)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7287)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7288)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7289)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7290)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7291)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7292)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7293)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7294)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7295)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7296)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7297)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7298)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7299)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7300)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7301)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7302)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7303)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7304)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7305)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7306)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7307)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7308)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7309)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7310)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7311)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7312)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7313)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7314)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7315)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7316)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7317)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7318)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7319)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7320)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7321)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7322)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7323)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7324)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7325)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7326)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7327)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7328)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7329)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7330)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7331)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7332)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7333)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7334)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7335)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7336)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7337)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7338)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7339)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7340)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7341)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7342)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7343)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7344)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7345)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7346)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7347)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7348)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7349)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7350)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7351)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7352)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7353)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7354)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7355)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7356)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7357)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7358)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7359)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7360)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7361)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7362)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7363)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7364)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7365)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7366)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7367)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7368)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7369)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7370)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7371)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7372)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7373)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7374)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7375)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7376)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7377)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7378)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7379)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7380)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7381)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7382)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7383)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7384)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7385)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7386)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7387)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7388)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7389)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7390)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7391)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7392)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7393)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7394)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7395)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7396)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7397)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7398)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7399)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7400)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7401)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7402)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7403)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7404)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7405)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7406)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7407)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7408)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7409)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7410)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7411)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7412)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7413)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7414)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7415)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7416)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7417)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7418)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7419)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7420)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7421)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7422)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7423)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7424)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7425)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7426)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7427)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7428)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7429)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7430)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7431)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7432)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7433)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7434)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7435)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7436)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7437)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7438)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7439)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7440)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7441)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7442)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7443)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7444)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7445)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7446)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7447)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7448)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7449)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7450)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7451)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7452)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7453)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7454)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7455)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7456)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7457)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7458)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7459)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7460)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7461)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7462)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7463)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7464)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7465)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7466)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7467)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7468)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7469)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7470)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7471)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7472)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7473)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7474)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7475)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7476)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7477)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7478)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7479)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7480)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7481)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7482)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7483)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7484)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7485)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7486)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7487)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7488)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7489)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7490)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7491)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7492)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7493)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7494)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7495)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7496)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7497)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7498)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7499)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7500)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7501)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7502)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7503)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7504)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7505)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7506)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7507)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7508)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7509)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7510)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7511)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7512)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7513)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7514)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7515)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7516)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7517)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7518)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7519)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7520)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7521)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7522)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7523)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7524)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7525)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7526)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7527)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7528)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7529)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7530)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7531)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7532)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7533)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7534)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7535)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7536)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7537)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7538)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7539)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7540)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7541)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7542)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7543)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7544)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7545)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7546)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7547)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7548)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7549)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7550)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7551)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7552)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7553)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7554)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7555)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7556)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7557)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7558)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7559)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7560)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7561)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7562)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7563)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7564)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7565)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7566)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7567)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7568)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7569)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7570)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7571)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7572)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7573)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7574)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7575)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7576)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7577)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7578)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7579)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7580)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7581)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7582)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7583)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7584)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7585)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7586)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7587)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7588)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7589)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7590)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7591)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7592)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7593)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7594)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7595)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7596)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7597)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7598)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7599)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7600)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7601)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7602)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7603)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7604)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7605)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7606)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7607)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7608)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7609)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7610)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7611)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7612)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7613)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7614)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7615)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7616)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7617)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7618)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7619)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7620)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7621)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7622)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7623)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7624)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7625)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7626)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7627)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7628)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7629)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7630)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7631)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7632)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7633)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7634)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7635)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7636)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7637)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7638)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7639)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7640)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7641)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7642)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7643)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7644)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7645)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7646)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7647)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7648)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7649)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7650)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7651)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7652)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7653)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7654)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7655)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7656)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7657)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7658)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7659)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7660)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7661)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7662)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7663)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7664)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7665)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7666)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7667)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7668)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7669)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7670)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7671)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7672)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7673)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7674)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7675)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7676)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7677)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7678)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7679)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7680)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7681)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7682)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7683)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7684)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7685)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7686)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7687)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7688)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7689)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7690)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7691)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7692)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7693)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7694)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7695)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7696)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7697)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7698)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7699)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7700)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7701)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7702)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7703)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7704)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7705)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7706)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7707)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7708)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7709)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7710)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7711)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7712)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7713)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7714)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7715)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7716)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7717)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7718)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7719)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7720)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7721)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7722)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7723)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7724)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7725)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7726)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7727)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7728)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7729)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7730)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7731)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7732)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7733)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7734)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7735)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7736)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7737)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7738)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7739)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7740)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7741)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7742)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7743)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7744)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7745)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7746)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7747)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7748)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7749)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7750)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7751)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7752)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7753)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7754)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7755)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7756)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7757)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7758)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7759)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7760)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7761)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7762)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7763)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7764)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7765)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7766)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7767)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7768)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7769)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7770)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7771)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7772)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7773)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7774)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7775)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7776)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7777)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7778)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7779)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7780)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7781)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7782)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7783)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7784)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7785)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7786)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7787)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7788)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7789)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7790)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7791)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7792)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7793)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7794)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7795)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7796)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7797)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7798)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7799)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7800)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7801)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7802)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7803)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7804)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7805)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7806)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7807)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7808)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7809)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7810)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7811)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7812)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7813)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7814)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7815)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7816)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7817)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7818)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7819)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7820)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7821)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7822)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7823)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7824)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7825)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7826)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7827)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7828)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7829)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7830)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7831)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7832)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7833)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7834)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7835)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7836)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7837)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7838)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7839)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7840)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7841)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7842)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7843)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7844)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7845)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7846)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7847)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7848)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7849)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7850)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7851)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7852)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7853)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7854)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7855)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7856)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7857)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7858)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7859)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7860)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7861)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7862)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7863)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7864)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7865)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7866)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7867)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7868)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7869)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7870)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7871)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7872)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7873)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7874)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7875)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7876)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7877)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7878)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7879)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7880)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7881)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7882)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7883)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7884)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7885)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7886)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7887)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7888)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7889)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7890)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7891)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7892)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7893)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7894)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7895)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7896)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7897)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7898)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7899)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7900)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7901)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7902)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7903)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7904)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7905)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7906)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7907)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7908)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7909)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7910)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7911)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7912)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7913)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7914)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7915)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7916)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7917)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7918)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7919)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7920)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7921)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7922)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7923)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7924)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7925)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7926)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7927)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7928)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7929)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7930)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7931)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7932)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7933)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7934)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7935)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7936)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7937)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7938)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7939)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7940)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7941)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7942)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7943)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7944)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7945)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7946)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7947)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7948)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7949)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7950)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7951)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7952)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7953)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7954)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7955)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7956)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7957)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7958)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7959)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7960)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7961)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7962)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7963)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7964)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7965)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7966)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7967)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7968)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7969)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7970)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7971)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7972)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7973)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7974)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7975)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7976)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7977)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7978)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7979)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7980)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7981)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7982)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7983)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7984)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7985)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7986)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7987)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7988)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7989)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7990)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7991)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7992)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7993)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7994)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7995)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7996)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7997)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7998)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (7999)
GO
INSERT [dbo].[Numbers] ([Number]) VALUES (8000)
GO
ALTER TABLE [dbo].[DynamicLists] ADD  CONSTRAINT [DF_DynamicList_DynamicMenuIDC]  DEFAULT (N'DL') FOR [DynamicListIDC]
GO
ALTER TABLE [dbo].[DynamicLists] ADD  CONSTRAINT [DF_DynamicList_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [DF_Groups_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Menus] ADD  CONSTRAINT [DF_Menus_Rank]  DEFAULT ((1)) FOR [Rank]
GO
ALTER TABLE [dbo].[Menus] ADD  CONSTRAINT [DF_Menus_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[GroupsMenus]  WITH CHECK ADD  CONSTRAINT [FK_GroupsMenus_Groups] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Groups] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupsMenus] CHECK CONSTRAINT [FK_GroupsMenus_Groups]
GO
ALTER TABLE [dbo].[GroupsMenus]  WITH CHECK ADD  CONSTRAINT [FK_GroupsMenus_Menus] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menus] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupsMenus] CHECK CONSTRAINT [FK_GroupsMenus_Menus]
GO
ALTER TABLE [dbo].[Menus]  WITH CHECK ADD  CONSTRAINT [FK_Menus_Menus] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Menus] ([id])
GO
ALTER TABLE [dbo].[Menus] CHECK CONSTRAINT [FK_Menus_Menus]
GO
