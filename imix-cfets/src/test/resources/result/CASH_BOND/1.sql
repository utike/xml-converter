SELECT _order.SysOriMsg FROM [TraderDB_cfets].[dbo].[cfets_orders] AS _order,
(SELECT QuoteID, max([IID]) AS [IID] FROM [TraderDB_cfets].[dbo].[cfets_orders] GROUP BY (QuoteID)) AS _temp
WHERE _order.QuoteID = _temp.QuoteID AND _order.IID = _temp.IID
AND (DATEDIFF(DAY, TransactTime, CONVERT(VARCHAR(100), GETDATE(), 23)) = 0);