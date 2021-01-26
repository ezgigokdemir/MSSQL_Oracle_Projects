ALTER TRIGGER [dbo].[trg_DEMAND_ASSIGNMENT_NOTIFICATION]
       ON [dbo].[DEMAND]
AFTER UPDATE
AS
BEGIN
       SET NOCOUNT ON;
 
       DECLARE @EmployeeId INT, @EmployeeFullame NVARCHAR(100), @Demand_StateId INT, @Company_UserId INT

	   DECLARE CLS CURSOR FOR SELECT EMPLOYEEID, DEMAND_STATEID FROM INSERTED
	   OPEN CLS
	   FETCH NEXT FROM CLS INTO @EmployeeId, @Demand_StateId, @Company_UserId
	   WHILE @@FETCH_STATUS = 0
	   BEGIN

		   SET @EmployeeFullame = (SELECT CONCAT(EMPLOYEE_NAME, ' ', EMPLOYEE_SURNAME) FROM EMPLOYEE
								   WHERE ID = @EmployeeId);

		   DECLARE @Company_User_Email NVARCHAR(50) = (SELECT COMPANY_USER_EMAIL FROM COMPANY_USER WHERE ID = @Company_UserId)

		   IF @Demand_StateId = 3
		   BEGIN
			 declare @body varchar(500) = 'Your demand is assigned to ' + CAST(@EmployeeFullame AS VARCHAR(100))
				   EXEC msdb.dbo.sp_send_dbmail
						@profile_name = 'AdminSql'
					   ,@recipients = @Company_User_Email
					   ,@subject = 'Assignment'
					   ,@body = @body
					   ,@importance ='HIGH'
		   END
		
		FETCH NEXT FROM CLS INTO @EmployeeId, @Demand_StateId, @Company_UserId
	   END

	   CLOSE CLS;
	   DEALLOCATE CLS;
      
END