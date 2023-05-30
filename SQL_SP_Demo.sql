-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Aman,Negi>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER Proc spAdd
@num1 int,
@num2 int,
@Result int output
with Encryption
as
BEGIN
	set @Result=@num1+@num2;
END
go
--see sp insi
sp_helptext spAdd  

Declare @out int
Exec spAdd 12,13, @out output
select @out

Alter PROCEDURE spSampleUserList 
@id int
AS
BEGIN
	select * from UserSample where id=@id;
END
GO


