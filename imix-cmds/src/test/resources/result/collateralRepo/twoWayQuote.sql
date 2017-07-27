
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
        
                '993721498120973004'
            
                ,'201706220930000001'
            
                ,'N'
            
                ,'7天回购'
            
                ,'B'
            
                ,'7天回购'
            
                ,'20170622 08:49:42.280'
            
                ,'20170622 19:20:00.000'
            
                ,'1'
            
                ,'16'
            
                ,'101'
            
                ,'N'
            
                ,'9'
            
                ,'20170622 08:49:42.280'
            
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
            
                ,[DeliveryType]
            
                ,[DeliveryType2]
            
                ,[SettlCurrAmt2]
            
                ,[IOIQty]
            
                ,[Price]
            
            ,[FkID]
            ) VALUES
            (
            
                '1'
            
                ,'0.96'
            
                ,'0'
            
                ,'0'
            
                ,'1000.96'
            
                ,'1000'
            
                ,'0.05'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_legs]
            (
            
                [Side]
            
                ,[AccruedInterestTotalAmt]
            
                ,[DeliveryType]
            
                ,[DeliveryType2]
            
                ,[SettlCurrAmt2]
            
                ,[IOIQty]
            
                ,[Price]
            
            ,[FkID]
            ) VALUES
            (
            
                '4'
            
                ,'0.96'
            
                ,'0'
            
                ,'0'
            
                ,'1000.96'
            
                ,'1000'
            
                ,'0.05'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        