CREATE PROCEDURE [dbo].[spProductcode]
	@barcode nvarchar(50)

AS
BEGIN
select *
from dbo.Inventory where barcode = @barcode
END
