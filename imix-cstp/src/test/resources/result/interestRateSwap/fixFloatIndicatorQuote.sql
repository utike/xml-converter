
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[ID]
            
                ,[Qty]
            
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
            
                ,[MarginRequired]
            
                ,[MarketIndicator]
            
                ,[QuoteTime]
            
                ,[RemarkIndicator]
            
                ,[TradeLimitDays]
            
                ,[DataCategoryIndicator]
            
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[SysStatus]
        ) VALUES (
        
                '993721497952793019'
            
                ,'201706200210000022'
            
                ,'10000000'
            
                ,'N'
            
                ,'1年贷款_2Y2'
            
                ,'J'
            
                ,'1年贷款_2Y2'
            
                ,'20170620 18:02:19.393'
            
                ,'20170620 19:00:00.000'
            
                ,'16'
            
                ,'0'
            
                ,'20170621'
            
                ,'20190621'
            
                ,'N'
            
                ,'N'
            
                ,'2'
            
                ,'20170620 18:02:19.393'
            
                ,'N'
            
                ,'2000000'
            
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
        
            INSERT INTO [dbo].[details_legs]
            (
            
                [Side]
            
                ,[Price]
            
                ,[PriceType]
            
            ,[FkID]
            ) VALUES
            (
            
                '1'
            
                ,'0.15'
            
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
        