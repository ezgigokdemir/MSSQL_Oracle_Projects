CREATE PROCEDURE [dbo].[sp_CLOSE_DEMAND] 

@DemandId int,
@EmployeeId int,
@RoleId int,
@Closing_statement NVARCHAR(MAX),
@Solved_hour int

AS

DECLARE @DemandStateId INT = (SELECT DEMAND_STATEID FROM DEMAND WHERE ID = @DemandId)

IF @DemandStateId = 3
BEGIN 
	RAISERROR('Girdi�iniz talep kapat�lm��t�r veya yanl�� talep bilgisi girdiniz!',16,1);
END 

ELSE IF NOT EXISTS ( SELECT 1 FROM DEMAND WHERE EMPLOYEEID = @EmployeeId)
BEGIN
	RAISERROR('Hatal� kimlik bilgisi!',16,1);
END 

ELSE IF @RoleId IS NULL AND (@RoleId = 3 OR @RoleId = 4)
BEGIN
	RAISERROR('��lem i�in yetkiniz bulunmamaktad�r!',16,1);
END 

ELSE IF NOT EXISTS (SELECT * FROM ROLE WHERE ID = @RoleId)
BEGIN
	RAISERROR('Hatal� rol bilgisi!',16,1);
END

ELSE IF @Closing_statement IS NULL
BEGIN
	RAISERROR('Kapan�� beyan� giriniz!',16,1);
END 

ELSE 
BEGIN

		UPDATE [dbo].[DEMAND]
		
		   SET [DEMAND_STATEID] = 3,
		       [CLOSING_STATEMENT] = @Closing_statement,
		       [CLOSING_DATE] = GETDATE(),
		       [EMPLOYEEID] = @EmployeeId,
		       [SOLVED_HOUR] = @Solved_hour,
		       [MODIFICATION_DATE] = GETDATE()
		   
		   WHERE ID =@DemandId

END 