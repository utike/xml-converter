
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[LastQty]
            
                ,[ID]
            
                ,[Qty]
            
                ,[OrdStatus]
            
                ,[OrdType]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[SettlType]
            
                ,[SettlCurrAmt]
            
                ,[AccruedInterestAmt]
            
                ,[AccruedInterestTotalAmt]
            
                ,[ContingencyIndicator]
            
                ,[DirtyPrice]
            
                ,[MarketIndicator]
            
                ,[QuoteTime]
            
                ,[SplitIndicator]
            
                ,[TradeCashAmt]
            
                ,[CashBondIndicator]
            
                ,[DataCategoryIndicator]
            
                ,[ClearingMethod]
            
                ,[BDeliveryTypeOption]
            
                ,[StopYield]
            
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[SysStatus]
        ) VALUES (
        
                '993721498120973009'
            
                ,'0'
            
                ,'201706220460000001'
            
                ,'10000000'
            
                ,'0'
            
                ,'2'
            
                ,'98.0000'
            
                ,'1080001'
            
                ,'1'
            
                ,'10华润电力01'
            
                ,'20170622 09:05:22.011'
            
                ,'20170622 19:20:00.000'
            
                ,'2'
            
                ,'10013753.42'
            
                ,'2.13753'
            
                ,'213753.42'
            
                ,'N'
            
                ,'100.1375'
            
                ,'4'
            
                ,'20170622 09:05:22.011'
            
                ,'Y'
            
                ,'9800000.00'
            
                ,'Y'
            
                ,'0'
            
                ,'13'
            
                ,'0'
            
                ,'5.5506'
            
                ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            
                ,'<root>123</root>'
            
        ,0
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[TraderName]
            
                ,[FirmShortChineseName]
            
                ,[SettlementBankName]
            
                ,[CashAccountNumber]
            
                ,[SecuritiesAccNumber]
            
                ,[EligibleCounterParty]
            
            ,[FkID]
            ) VALUES
            (
            
                '545454'
            
                ,'101'
            
                ,'安徽海益首席交易员'
            
                ,'安徽海益信息'
            
                ,'安徽海益信息科技有限公司'
            
                ,'123131'
            
                ,'125235454'
            
                ,'CFETS'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        