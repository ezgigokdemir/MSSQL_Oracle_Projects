USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_UPDATE_DEMAND] @RoleId INT, @DemandId INT, @NewText NVARCHAR(MAX), @Demand_TypeId INT, 
								  @Order_Of_UrgencyId INT
AS

IF @RoleId IS NULL AND @RoleId != 3 AND @RoleId != 4
BEGIN
	RAISERROR('��lem i�in yetkiniz bulunmamaktad�r!!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM DEMAND WHERE ID = @DemandId)
BEGIN
	RAISERROR('Hatal� talep kodu gridiniz!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM DEMAND_TYPE WHERE ID = @Demand_TypeId)
BEGIN
	RAISERROR('Girdi�iniz talep t�r� ge�erli de�ildir!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM ORDER_OF_URGENCY WHERE ID = @Order_Of_UrgencyId)
BEGIN
	RAISERROR('Girdi�iniz aciliyet s�ras� ge�erli de�ildir!',16,1);
END
ELSE
BEGIN


	DECLARE @TEXT NVARCHAR(MAX) =(SELECT [TEXT] FROM DEMAND WHERE ID = @DemandId)
	DECLARE @TITLE NVARCHAR(MAX) =(SELECT [TITLE] FROM DEMAND WHERE ID = @DemandId)
	
	UPDATE [dbo].[DEMAND]
	   SET [TITLE] = @TITLE
		  ,[TEXT] = CONCAT(@TEXT,'  D�zenleme:',@NewText)
		  ,[DEMAND_TYPEID] = @Demand_TypeId
		  ,[ORDER_OF_URGENCYID] = @Order_Of_UrgencyId
		  ,[MODIFICATION_DATE] = GETDATE()
	 WHERE ID = @DemandId
END