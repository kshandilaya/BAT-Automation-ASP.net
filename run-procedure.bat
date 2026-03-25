@echo off
REM ============================================
REM File: run-procedure.bat
REM Purpose: Execute SQL Stored Procedure
REM ============================================

echo Running Stored Procedure...

REM Ask user for dynamic input
set /p orgId=Enter Organisation ID: 

REM Database connection details (UPDATE THESE)
set SERVER=your_server_name
set DB=YourDatabaseName
set USER=your_username
set PASSWORD=your_password

REM Execute stored procedure using sqlcmd
REM -S : Server name
REM -d : Database name
REM -U/-P : SQL authentication
REM -Q : Query to execute

sqlcmd -S %SERVER% ^
-d %DB% ^
-U %USER% ^
-P %PASSWORD% ^
-Q "EXEC dbo.lt_GetCompanyCodesByOrganisation @OrganisationId='%orgId%'"

echo Procedure executed successfully.
pause