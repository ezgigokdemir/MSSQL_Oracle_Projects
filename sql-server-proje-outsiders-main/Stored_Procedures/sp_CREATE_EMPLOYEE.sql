USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_CREATE_EMPLOYEE] @RoleIdForCreator INT, @Employee_Name NVARCHAR(50), @Employee_Surname NVARCHAR(50), 
									@Mobile_Number NVARCHAR(15), @Employee_Email NVARCHAR(50),
									@ProfessionId NVARCHAR(50), @DepartmentId NVARCHAR(50), 
									@RoleId int, @ProductId INT

AS

--DECLARE @RoleId INT = (SELECT ID FROM ROLE WHERE ROLE_NAME = @Role_Name);
--DECLARE @ProfessionId INT = (SELECT ID FROM PROFESSION WHERE PROFESSION_NAME = @Profession_Name);
--DECLARE @DepartmentId INT = (SELECT ID FROM DEPARTMENT WHERE DEPARTMENT_NAME = @Department_Name);

IF @RoleIdForCreator IS NULL OR @RoleIdForCreator != 1
BEGIN
	RAISERROR('��lem i�in yetkiniz bulunmamaktad�r!!',16,1);
END
ELSE IF @RoleId IS NULL OR (@RoleId != 1 AND @RoleId != 2)
BEGIN
	RAISERROR('Girdi�iniz rol �al��an t�r� i�in ge�erli de�ildir!',16,1);	
END
ELSE IF NOT EXISTS(SELECT 1 FROM PROFESSION WHERE ID = @ProfessionId)
BEGIN
	RAISERROR('Ge�ersiz bir meslek girdiniz!',16,1);	
END
ELSE IF NOT EXISTS(SELECT 1 FROM DEPARTMENT WHERE ID = @DepartmentId)
BEGIN
	RAISERROR('Ge�ersiz bir departman girdiniz!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM PRODUCT WHERE ID = @ProductId)
BEGIN
	RAISERROR('Ge�ersiz �r�n kodu girdiniz!',16,1);
END
ELSE
BEGIN
	INSERT INTO [dbo].[EMPLOYEE]
			   ([EMPLOYEE_NAME]
			   ,[EMPLOYEE_SURNAME]
			   ,[MOBILE_NUMBER]
			   ,[EMPLOYEE_EMAIL]
			   ,[PROFESSIONID]
			   ,[DEPARTMENTID]
			   ,[CREATE_DATE]
			   ,[MODIFICATION_DATE]
			   ,[RECORD_STATUS])
		 VALUES
			   (@Employee_Name
			   ,@Employee_Surname
			   ,@Mobile_Number
			   ,@Employee_Email
			   ,@ProfessionId
			   ,@DepartmentId
			   ,GETDATE()
			   ,GETDATE()
			   ,1)

	DECLARE @EmployeeId INT = (SELECT IDENT_CURRENT('EMPLOYEE'))

	--INSERT INTO [dbo].[EMPLOYEE_ROLE_MAPPING]
	--		   ([ROLEID]
	--		   ,[EMPLOYEEID]
	--		   ,[RECORD_STATUS])
	--	 VALUES
	--		   (@RoleId
	--		   ,@EmployeeId
	--		   ,1)

	INSERT INTO [dbo].[PRODUCT_EMPLOYEE_MAPPING]
			   ([PRODUCTID]
			   ,[EMPLOYEEID]
			   ,[RECORD_STATUS])
		 VALUES
			   (@ProductId
			   ,@EmployeeId
			   ,1)

	PRINT 'Kay�t ba�ar�yla ger�ekle�tirildi.'
END