USE [DSTRAINING]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_CUSTOMERLIST]    Script Date: 25/02/20 18:26:58 ******/
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
CREATE PROC [dbo].[BLD_WRK_CUSTOMERLIST-DROP]


AS
BEGIN

-- =============================================
--DROP  TABLE 
-- =============================================

IF OBJECT_ID('WRK_CUSTOMERLIST') IS NOT NULL
DROP TABLE [dbo].[WRK_CUSTOMERLIST]

-- =============================================
--CREATE TABLE 
-- =============================================
CREATE TABLE [WRK_CUSTOMERLIST]
(
	[ROW_NUMBER]	INT IDENTITY(1,1)
	,[CustomerID]	VARCHAR(100)
	,[City]			VARCHAR(1000)
	,[ZipCode]		VARCHAR(5)
	,[Gender]		VARCHAR(1)
	,[Age]			FLOAT
)

-- =============================================
--TRUNCATE TABLE 
-- =============================================

TRUNCATE TABLE [WRK_CUSTOMERLIST]

-- =============================================
--INSERT INTO TABLE 
-- =============================================
INSERT INTO [WRK_CUSTOMERLIST]
(
	[CustomerID]
	,[City]			
	,[ZipCode]		
	,[Gender]		
	,[Age]		
)
SELECT
	[CustomerID]
      ,[City]
      ,[ZipCode]
      ,[Gender]
      ,[Age]
FROM [dbo].[CUSTOMER_LIST]






END

/*
	SELECT * FROM [dbo].[CUSTOMER_LIST]
*/