
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[Qty]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[ID]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[StartDate]
            
                ,[EndDate]
            
                ,[ClearingMethod]
            
                ,[ContingencyIndicator]
            
                ,[MarketIndicator]
            
                ,[QuoteTime]
            
                ,[TransType]
            
                ,[RemarkIndicator]
            
                ,[TradeLimitDays]
            
                ,[DataCategoryIndicator]
            
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[SysStatus]
        ) VALUES (
        
                '993721498120973008'
            
                ,'10000000'
            
                ,'FR007_Shibor3M_10Y'
            
                ,'J'
            
                ,'FR007_Shibor3M_10Y'
            
                ,'20170622 09:02:35.346'
            
                ,'20170622 19:00:00.000'
            
                ,'201706220280000003'
            
                ,'16'
            
                ,'103'
            
                ,'20170623'
            
                ,'20270623'
            
                ,'6'
            
                ,'N'
            
                ,'2'
            
                ,'20170622 09:02:35.346'
            
                ,'N'
            
                ,'N'
            
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
            
                ,[SettlementBankName]
            
                ,[CashAccountNumber]
            
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
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_legs]
            (
            
                [Side]
            
                ,[PriceType]
            
                ,[Price]
            
                ,[BenchmarkCurveName]
            
                ,[BenchmarkSpread]
            
            ,[FkID]
            ) VALUES
            (
            
                '1'
            
                ,'6'
            
                ,'0.81'
            
                ,'FR007'
            
                ,'1.00'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_legs]
            (
            
                [Side]
            
                ,[PriceType]
            
                ,[Price]
            
                ,[BenchmarkCurveName]
            
                ,[BenchmarkSpread]
            
            ,[FkID]
            ) VALUES
            (
            
                'B'
            
                ,'6'
            
                ,'0.81'
            
                ,'Shibor_3M'
            
                ,'0.00'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        