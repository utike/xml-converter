
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[ID]
            
                ,[TransType]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[SettlType]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[ContingencyIndicator]
            
                ,[MarketIndicator]
            
                ,[QuoteTime]
            
                ,[RemarkIndicator]
            
                ,[TradeLimitDays]
            
                ,[DataCategoryIndicator]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                '993721498120973003'
            
                ,'201706220130000002'
            
                ,'N'
            
                ,'7天拆借'
            
                ,'B'
            
                ,'7天拆借'
            
                ,'20170622 08:47:52.748'
            
                ,'20170622 19:20:00.000'
            
                ,'1'
            
                ,'16'
            
                ,'101'
            
                ,'N'
            
                ,'1'
            
                ,'20170622 08:47:52.748'
            
                ,'N'
            
                ,'7'
            
                ,'0'
            
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
            
                ,[EligibleCounterParty]
            
            ,[FkID]
            ) VALUES
            (
            
                '545454'
            
                ,'101'
            
                ,'安徽海益首席交易员'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'安徽海益信息'
            
                ,'CFETS'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_legs]
            (
            
                [Side]
            
                ,[AccruedInterestTotalAmt]
            
                ,[SettlCurrAmt2]
            
                ,[IOIQty]
            
                ,[Price]
            
            ,[FkID]
            ) VALUES
            (
            
                '1'
            
                ,'9722.22'
            
                ,'10009722.22'
            
                ,'10000000.00'
            
                ,'0.05'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_legs]
            (
            
                [Side]
            
                ,[AccruedInterestTotalAmt]
            
                ,[SettlCurrAmt2]
            
                ,[IOIQty]
            
                ,[Price]
            
            ,[FkID]
            ) VALUES
            (
            
                '4'
            
                ,'9722.22'
            
                ,'10009722.22'
            
                ,'10000000.00'
            
                ,'0.05'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        