/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
set nocount on

if OBJECT_ID('dbo.testTable') is null
begin
	create table dbo.testTable(id int identity,testdesc varchar(1000)) 
end
else
begin
	insert into testTable(testdesc) select 'MVC292016 test'
end