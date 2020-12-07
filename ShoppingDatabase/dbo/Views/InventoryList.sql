CREATE VIEW [dbo].[InventoryList]
	AS 
	SELECT
	[users].[User_id], [users].[Name],
	[inventory].[InventoryId], [inventory].[Product_name], 
	[inventory].[Product_price], [inventory].[Quantity], [inventory].[Current_quantity],
	[inventory].[Quantity]-[inventory].[Current_quantity] AS Available_quantity,
	[inventory].[Product_price]*[inventory].[Quantity] AS total_item_cost,
	[inventory].[Image_url], [inventory].[barcode], [inventory].[Dateposted],
	[inventory].[Isavailable] 
	from dbo.Users users
	left join dbo.Inventory inventory
	on users.User_id = inventory.User_id


	