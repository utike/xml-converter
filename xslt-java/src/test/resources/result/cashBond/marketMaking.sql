
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
            
                ,[AnonymousIndicator]
            
                ,[ContingencyIndicator]
            
                ,[MarketIndicator]
            
                ,[SettlCurrAmt]
            
                ,[AccruedInterestAmt]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[AccruedInterestTotalAmt]
            
                ,[CashBondIndicator]
            
                ,[Principal]
            
                ,[MinTickSize]
            
                ,[ClearingMethod]
            
                ,[QuoteTime]
            
                ,[TransType]
            
                ,[TradeType]
            
                ,[DataCategoryIndicator]
            
                ,[DirtyPrice]
            
                ,[TradeCashAmt]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                '993721498120973007'
            
                ,'0'
            
                ,'10000000'
            
                ,'99.0000'
            
                ,'1080001'
            
                ,'B'
            
                ,'10华润电力01'
            
                ,'20170622 08:55:16.987'
            
                ,'20170622 19:20:00.000'
            
                ,'2'
            
                ,'201706220440000003'
            
                ,'N'
            
                ,'N'
            
                ,'4'
            
                ,'10113753.42'
            
                ,'2.13753'
            
                ,'16'
            
                ,'107'
            
                ,'213753.42'
            
                ,'Y'
            
                ,'100.0'
            
                ,'1000000'
            
                ,'13'
            
                ,'20170622 08:55:16.987'
            
                ,'N'
            
                ,'2'
            
                ,'0'
            
                ,'101.1375'
            
                ,'9900000.00'
            
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
        
            INSERT INTO [dbo].[details_legs]
            (
            
                [Side]
            
                ,[OrderQty]
            
                ,[LastQty]
            
                ,[SettlType]
            
                ,[ClearingMethod]
            
                ,[Price]
            
                ,[DirtyPrice]
            
                ,[AccruedInterestAmt]
            
                ,[SettlCurrAmt]
            
                ,[TotalPrincipal]
            
                ,[AccruedInterestTotalAmt]
            
                ,[TradeCashAmt]
            
                ,[StrikeYield]
            
                ,[Yield2]
            
            ,[FkID]
            ) VALUES
            (
            
                '1'
            
                ,'20000'
            
                ,'50000'
            
                ,'1'
            
                ,'13'
            
                ,'99.0000'
            
                ,'100.0000'
            
                ,'2000.0000'
            
                ,'200020.0000'
            
                ,'200000.0000'
            
                ,'2000.0000'
            
                ,'2000.0000'
            
                ,'35.0624'
            
                ,'6.0624'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        