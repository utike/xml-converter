
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
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[StartDate]
            
                ,[EndDate]
            
                ,[ContingencyIndicator]
            
                ,[MarketIndicator]
            
                ,[QuoteTime]
            
                ,[TradeLimitDays]
            
                ,[DataCategoryIndicator]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                '993721498120973005'
            
                ,'201706220230000001'
            
                ,'N'
            
                ,'1年贷款_10Y'
            
                ,'J'
            
                ,'1年贷款_10Y'
            
                ,'20170622 08:51:00.067'
            
                ,'20170622 19:00:00.000'
            
                ,'16'
            
                ,'101'
            
                ,'20170623'
            
                ,'20270623'
            
                ,'N'
            
                ,'2'
            
                ,'20170622 08:51:00.067'
            
                ,'10000000'
            
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
            
                ,[IOIQty]
            
                ,[Price]
            
                ,[PriceType]
            
            ,[FkID]
            ) VALUES
            (
            
                '1'
            
                ,'10000000'
            
                ,'0.05'
            
                ,'3'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_legs]
            (
            
                [Side]
            
                ,[IOIQty]
            
                ,[Price]
            
                ,[PriceType]
            
            ,[FkID]
            ) VALUES
            (
            
                '4'
            
                ,'10000000'
            
                ,'0.05'
            
                ,'3'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_legs]
            (
            
                [Side]
            
                ,[PriceType]
            
                ,[BenchmarkCurveName]
            
                ,[BenchmarkSpread]
            
            ,[FkID]
            ) VALUES
            (
            
                'B'
            
                ,'6'
            
                ,'贷款利率_1年'
            
                ,'0.00'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        