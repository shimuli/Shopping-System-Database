CREATE VIEW [dbo].[ShoppingList]
	AS 
	SELECT [users].[User_id], [users].[Name], [users].[Email], [users].[Role], [users].[isConfirmed],
	[shoping].[Item_id], [shoping].[Item_name], [shoping].[Item_price], [shoping].[Item_quantity], 
	[Item_price] * [Item_quantity] AS Total_buying_price,
	[shoping].[Image_url], [shoping].[Item_barcode], [shoping].[DateCreated] 
	from dbo.Users [users]  
	left join dbo.Shoping shoping
	on [users].User_id = shoping.User_id