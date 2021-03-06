USE [DSTRAINING]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_FakeNamesCanada]    Script Date: 27/02/20 12:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Paul juverdeanu>
-- Create date: <25022020>
-- Description:	<RAW-WRK>
--MOD DATE
-- =============================================
ALTER PROC [dbo].[BLD_WRK_FakeNamesCanada]

AS
BEGIN

-- =============================================
--DROP  TABLE 
-- =============================================

IF OBJECT_ID('WRK_FakeNamesCanada') IS NOT NULL
DROP TABLE [dbo].[WRK_FakeNamesCanada]

-- =============================================
--CREATE TABLE 
-- =============================================
CREATE TABLE [WRK_FakeNamesCanada]
(
	[ROW_NUMBER]		INT IDENTITY(1,1)
	,[Number]			VARCHAR(1000)
	,[Gender]			varchar(100)
	,[GivenName]		varchar(1000)
	,[Surname]			varchar(1000)
	,[StreetAddress]	varchar(1000)
	,[City]				varchar(1000)
	,[ZipCode]			varchar(10)
	,[CountryFull]		varchar(1000)
	,[Birthday]			DATE
	,[Balance]			FLOAT
	,[InterestRate]		FLOAT
)

-- =============================================
--TRUNCATE TABLE 
-- =============================================

TRUNCATE TABLE [WRK_FakeNamesCanada]

-- =============================================
--INSERT INTO TABLE
-- =============================================
INSERT INTO [dbo].[WRK_FakeNamesCanada]
(
		[Number]
      ,[Gender]
      ,[GivenName]
      ,[Surname]
      ,[StreetAddress]
      ,[City]
      ,[ZipCode]
      ,[CountryFull]
      ,[Birthday]
      ,[Balance]
      ,[InterestRate]
)
-- =============================================
-- THIS SECTION IS IMPORTING DATA FROM THE RAW TABLE, MUST HAVE THE SAME COLUMNS
-- =============================================

SELECT  
		[Number]
      ,[Gender]
      ,[GivenName]
      ,[Surname]
      ,[StreetAddress]
      ,[City]
      ,[ZipCode]
      ,[CountryFull]
      ,[Birthday]
      ,[Balance]
      ,[InterestRate]
  FROM [dbo].[FakeNamesCanada]

-- =============================================
--ADING FILTERS
-- =============================================
WHERE ISNUMERIC([Balance]) =1 --11 ROWS AFFECTED
AND ISDATE([Birthday])= 1 --1 ROWS AFFECTED 1
AND LEN([ZipCode])<=7 --2 ROWS AFFECTED

--(199986 rows affected)

-- =============================================
--ADDITIONAL EXCLUSIONS
-- =============================================

SELECT * 
FROM [dbo].[WRK_FakeNamesCanada]
WHERE [Balance] <0


DELETE 
FROM [dbo].[WRK_FakeNamesCanada]
WHERE [ZIPCODE] NOT LIKE '___ ___'

--(4 rows affected)

SELECT * 
FROM [dbo].[WRK_FakeNamesCanada]
WHERE [Birthday] < '1929-08-13'


SELECT * 
FROM [dbo].[WRK_FakeNamesCanada]
WHERE [Birthday] > '2008-08-13'

END

/*
	SELECT * FROM [dbo].[WRK_FakeNamesCanada]

	SELECT COUNT(*) FROM [dbo].[FakeNamesCanada]
	
	SELECT * FROM [dbo].[FakeNamesCanada]
*/