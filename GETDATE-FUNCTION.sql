use AdventureWorks2017

select GETDATE()

select GETDATE()-2

--DATEPART

SELECT DATEPART(YYYY,GETDATE())

SELECT DATEPART(YYYY,GETDATE()) AS YEARNOW

SELECT DATEPART(MM,GETDATE()) AS tHISMONTH

SELECT DATEPART(DD,GETDATE()) AS NUMBEROFDAYS

-- DATEADD

SELECT DATEADD(DAY,4,GETDATE())

SELECT DATEADD(MONTH,4,GETDATE())

SELECT TOP 10 * FROM Production.WorkOrder

SELECT WORKORDERID,PRODUCTID,STARTDATE,ENDDATE, 
DATEDIFF(DAY, STARTDATE, ENDDATE) 
AS dAYDIFFERENCE
FROM [Production].[WorkOrder]

SELECT PRODUCTID, ORDERQTY,STARTDATE,ENDDATE,
DATEDIFF(DAY,STARTDATE,ENDDATE)
AS DAYDIFFERENCE
FROM [Production].[WorkOrder]

-- GET TEH FIRST DAY OF THE MONTH

SELECT GETDATE()

SELECT DATEPART(DAY,GETDATE())

SELECT DATEPART(DAY,GETDATE())-1

SELECT DATEADD(DAY,-(DATEPART(DAY,GETDATE())-1),GETDATE())

SELECT DATEPART(DAY,GETDATE())

SELECT DATEPART(DAY,GETDATE())-1

SELECT DATEADD(DAY,-(DATEPART(DAY,GETDATE())-1),GETDATE())


