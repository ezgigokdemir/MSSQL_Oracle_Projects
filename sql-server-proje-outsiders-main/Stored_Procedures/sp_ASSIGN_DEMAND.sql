USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_ASSIGN_DEMAND] @RoleId INT, @DemandId INT, @EmployeeId INT
AS

IF @RoleId IS NULL AND @RoleId != 1 AND @RoleId != 2
BEGIN
	RAISERROR(N'İşlem için yetkiniz bulunmamaktadýr!!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM DEMAND WHERE ID = @DemandId)
BEGIN
	RAISERROR(N'Geçersiz þikayet kodu girdiniz!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM EMPLOYEE WHERE ID = @EmployeeId)
BEGIN
	RAISERROR(N'Geçersiz kullanýcý kodu girdiniz!',16,1);
END
ELSE IF EXISTS(SELECT 1 FROM DEMAND WHERE EMPLOYEEID = @EmployeeId AND ID = @DemandId)
BEGIN
	RAISERROR(N'İlgili þikayet için kullanıcıya daha önce atama yapılmış!',16,1);
END
ELSE
BEGIN
	UPDATE DEMAND SET EMPLOYEEID=@EmployeeId, DEMAND_STATEID = 1 WHERE ID=@DemandId

	PRINT N'Atama başarıyla gerçekleştirildi.'
END