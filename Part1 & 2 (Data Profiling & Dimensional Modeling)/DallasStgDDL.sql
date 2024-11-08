USE [FoodInspection]
GO

/****** Object:  Table [dbo].[STG_Dallas_FoodInspection]    Script Date: 2/26/2023 6:51:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_Dallas_FoodInspection](
	[Restaurant Name] [nvarchar](254) NULL,
	[Inspection Type] [nvarchar](254) NULL,
	[Inspection Date] [nvarchar](254) NULL,
	[Inspection Score] [nvarchar](254) NULL,
	[Street Number] [nvarchar](254) NULL,
	[Street Name] [nvarchar](254) NULL,
	[Street Direction] [nvarchar](254) NULL,
	[Zip Code] [nvarchar](254) NULL,
	[Violation Code] [nvarchar](254) NULL,
	[Violation Description] [nvarchar](254) NULL,
	[Violation Point] [nvarchar](254) NULL,
	[Violation Detail] [nvarchar](254) NULL,
	[Violation Memo] [nvarchar](254) NULL
) ON [PRIMARY]
GO


