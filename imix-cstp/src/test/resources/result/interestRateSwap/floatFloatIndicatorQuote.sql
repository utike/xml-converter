
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
        
                '993721497952793020'
            
                ,'201706200210000023'
            
                ,'10000000'
            
                ,'N'
            
                ,'FR007_Shibor3M_1Y'
            
                ,'K'
            
                ,'FR007_Shibor3M_1Y'
            
                ,'20170620 18:03:08.993'
            
                ,'20170620 19:00:00.000'
            
                ,'16'
            
                ,'0'
            
                ,'20170621'
            
                ,'20180621'
            
                ,'N'
            
                ,'N'
            
                ,'2'
            
                ,'20170620 18:03:08.993'
            
                ,'N'
            
                ,'1000000'
            
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
            
            ,[FkID]
            ) VALUES
            (
            
                '545454'
            
                ,'101'
            
                ,'安徽海益首席交易员'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'安徽海益信息'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[TraderName]
            
                ,[FirmShortChineseName]
            
            ,[FkID]
            ) VALUES
            (
            
                '304161'
            
                ,'102'
            
                ,'安徽海益测试对手方'
            
                ,'恒天基金'
            
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
            
                '1'
            
                ,'6'
            
                ,'FR007'
            
                ,'0.00'
            
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
            
                ,'Shibor_3M'
            
                ,'0.00'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        