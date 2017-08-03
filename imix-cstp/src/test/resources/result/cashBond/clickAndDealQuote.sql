
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[LastQty]
            
                ,[Qty]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[SettlType]
            
                ,[ID]
            
                ,[SettlCurrAmt]
            
                ,[AccruedInterestAmt]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[AccruedInterestTotalAmt]
            
                ,[AnonymousIndicator]
            
                ,[ContingencyIndicator]
            
                ,[DirtyPrice]
            
                ,[MarketIndicator]
            
                ,[QuoteTime]
            
                ,[TransType]
            
                ,[TradeCashAmt]
            
                ,[TradeType]
            
                ,[CashBondIndicator]
            
                ,[DataCategoryIndicator]
            
                ,[ClearingMethod]
            
                ,[Yield2]
            
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[SysStatus]
        ) VALUES (
        
                '993721498120973007'
            
                ,'0'
            
                ,'10000000'
            
                ,'99.0000'
            
                ,'1080001'
            
                ,'1'
            
                ,'10华润电力01'
            
                ,'20170622 08:55:16.987'
            
                ,'20170622 19:20:00.000'
            
                ,'2'
            
                ,'201706220440000003'
            
                ,'10113753.42'
            
                ,'2.13753'
            
                ,'16'
            
                ,'105'
            
                ,'213753.42'
            
                ,'N'
            
                ,'N'
            
                ,'101.1375'
            
                ,'4'
            
                ,'20170622 08:55:16.987'
            
                ,'N'
            
                ,'9900000.00'
            
                ,'1'
            
                ,'Y'
            
                ,'0'
            
                ,'13'
            
                ,'5.1165'
            
                ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            
                ,'<root>123</root>'
            
        ,0
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[TraderName]
            
                ,[FirmFullChineseName]
            
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
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'安徽海益信息'
            
                ,'安徽海益信息科技有限公司'
            
                ,'123131'
            
                ,'125235454'
            
                ,'CFETS'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        