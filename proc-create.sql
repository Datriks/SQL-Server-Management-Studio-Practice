USE [DSTRAINING]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_CUSTOMERLIST]    Script Date: 25/02/20 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROC [dbo].[BLD_WRK_CUSTOMERLIST]
-- =============================================
-- Author:		<Paul juverdeanu>
-- Create date: <25022020>
-- Description:	<RAW-WRK>
--MOD DATE
-- =============================================


AS
BEGIN
	--THIS IS THE FIRST PROC

	SELECT * FROM [dbo].[CustomerList]

	SELECT *FROM [dbo].[TRANSACTIONS_DATA]

END
