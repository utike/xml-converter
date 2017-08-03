
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[ID]
            
                ,[Qty]
            
                ,[TransType]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[SettlType]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[AccruedInterestTotalAmt]
            
                ,[ContingencyIndicator]
            
                ,[MarketIndicator]
            
                ,[QuoteTime]
            
                ,[RemarkIndicator]
            
                ,[SettlCurrAmt2]
            
                ,[TradeLimitDays]
            
                ,[DataCategoryIndicator]
            
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[SysStatus]
        ) VALUES (
        
                '993721497952793013'
            
                ,'201706200110000004'
            
                ,'10000000.00'
            
                ,'N'
            
                ,'0.035'
            
                ,'IBO007'
            
                ,'1'
            
                ,'20170620 17:51:04.333'
            
                ,'20170620 19:20:00.000'
            
                ,'1'
            
                ,'16'
            
                ,'0'
            
                ,'6805.56'
            
                ,'N'
            
                ,'1'
            
                ,'20170620 17:51:04.333'
            
                ,'N'
            
                ,'10006805.56'
            
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
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[TraderName]
            
                ,[FirmShortChineseName]
            
                ,[EligibleCounterParty]
            
            ,[FkID]
            ) VALUES
            (
            
                '304161'
            
                ,'102'
            
                ,'安徽海益测试对手方'
            
                ,'恒天基金'
            
                ,'CFETS'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        