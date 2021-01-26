USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_DELETE_EMPLOYEE] @RoleId INT, @EmployeeId INT
AS

IF @RoleId IS NULL OR @RoleId != 1
BEGIN
	RAISERROR('��lem i�in yetkiniz bulunmamaktad�r!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM EMPLOYEE WHERE ID = @EmployeeId AND RECORD_STATUS = 1)
BEGIN
	RAISERROR('�lgili kullan�c� sistemde mevcut de�ildir!',16,1);
END
ELSE IF @EmployeeId IN (SELECT DISTINCT E.ID FROM DEMAND D INNER JOIN EMPLOYEE E ON D.EMPLOYEEID = E.ID
WHERE D.RECORD_STATUS = 1 AND (D.DEMAND_STATEID = 1 OR D.DEMAND_STATEID = 2))
BEGIN
	RAISERROR('�lgili kullan�c�ya atanm�� ve tamamlanmam�� talepler bulunmaktad�r!',16,1);
END
ELSE
BEGIN

	UPDATE [dbo].[EMPLOYEE]  SET [RECORD_STATUS] = 0, MODIFICATION_DATE = GETDATE() WHERE ID = @EmployeeId

	UPDATE [dbo].[PRODUCT_EMPLOYEE_MAPPING] SET [RECORD_STATUS] = 0 WHERE EMPLOYEEID = @EmployeeId

	PRINT 'Silme i�lemi ba�ar�yla ger�ekle�tirildi.';

GO