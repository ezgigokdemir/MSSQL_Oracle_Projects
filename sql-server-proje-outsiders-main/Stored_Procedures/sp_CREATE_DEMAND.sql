USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_CREATE_DEMAND] @RoleId INT, @Title NVARCHAR(MAX), @Text NVARCHAR(MAX), @Demand_TypeId INT, @Order_Of_UrgencyId INT,
								  @Company_UserId INT, @ProductId INT, @VersionId INT
AS

IF @RoleId IS NULL OR (@RoleId != 3 AND @RoleId != 4)
BEGIN
	RAISERROR('��lem i�in yetkiniz bulunmamaktad�r!!',16,1);
END
ELSE IF @Title IS NULL
BEGIN
	RAISERROR('L�tfen bir konu ba�l��� giriniz.',16,1);	
END
ELSE IF NOT EXISTS(SELECT 1 FROM DEMAND_TYPE WHERE ID = @Demand_TypeId)
BEGIN
	RAISERROR('Girdi�iniz talep t�r� ge�erli de�ildir!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM ORDER_OF_URGENCY WHERE ID = @Order_Of_UrgencyId)
BEGIN
	RAISERROR('Girdi�iniz aciliyet s�ras� ge�erli de�ildir!',16,1);
END
--ELSE IF NOT EXISTS(SELECT 1 FROM PRODUCT WHERE ID = @ProductId)
--BEGIN
--	RAISERROR('Ge�ersiz �r�n kodu girdiniz!',16,1);
--END
ELSE IF @VersionId NOT IN (SELECT V.ID FROM PRODUCT P INNER JOIN VERSION V ON V.PRODUCTID = P.ID WHERE P.ID = @ProductId)
BEGIN
	RAISERROR('Ge�ersiz versiyon bilgisi girdiniz!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM COMPANY_USER CU
						INNER JOIN COMPANY C ON C.ID = CU.COMPANYID
						INNER JOIN COMPANY_PRODUCT_MAPPING CPM ON CPM.COMPANYID = C.ID 
				   WHERE CPM.PRODUCTID = @ProductId)
BEGIN
	RAISERROR('�lgili �r�n firman�za atanmam��t�r!',16,1);
END
ELSE
BEGIN
	INSERT INTO [dbo].[DEMAND]
           ([TITLE]
           ,[TEXT]
           ,[DEMAND_TYPEID]
           ,[ORDER_OF_URGENCYID]
           ,[DEMAND_STATEID]
           ,[CLOSING_STATEMENT]
           ,[CLOSING_DATE]
           ,[COMPANY_USERID]
           ,[EMPLOYEEID]
           ,[PRODUCTID]
           ,[SOLVED_HOUR]
           ,[VERSIONID]
           ,[CREATE_DATE]
           ,[MODIFICATION_DATE]
           ,[RECORD_STATUS])
     VALUES
           (@Title
           ,@Text
           ,@Demand_TypeId
           ,@Order_Of_UrgencyId
           ,4
           ,NULL
           ,NULL
           ,@Company_UserId
           ,NULL
           ,@ProductId
           ,NULL
           ,@VersionId
           ,GETDATE()
           ,GETDATE()
           ,1)

	PRINT 'Kay�t ba�ar�yla ger�ekle�tirildi.'
END

