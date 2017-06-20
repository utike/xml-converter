
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[Qty]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[ID]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[StartDate]
            
                ,[EndDate]
            
                ,[ContingencyIndicator]
            
                ,[MarginRequired]
            
                ,[MarketIndicator]
            
                ,[NegotiationCount]
            
                ,[QuoteTime]
            
                ,[TransType]
            
                ,[RemarkIndicator]
            
                ,[TradeLimitDays]
            
                ,[CalculateAgency]
            
                ,[DataCategoryIndicator]
            
                ,[ClearingMethod]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                '993721497895609004'
            
                ,'10000000'
            
                ,'User-Defined'
            
                ,'J'
            
                ,'20170619 18:39:24.433'
            
                ,'20170619 19:00:00.000'
            
                ,'201706190220000032'
            
                ,'107'
            
                ,'1'
            
                ,'20170619'
            
                ,'20180619'
            
                ,'N'
            
                ,'N'
            
                ,'2'
            
                ,'1'
            
                ,'20170619 18:27:04.773'
            
                ,'R'
            
                ,'N'
            
                ,'1000000'
            
                ,'3'
            
                ,'0'
            
                ,'13'
            
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
            
                ,[EligibleCounterParty]
            
            ,[FkID]
            ) VALUES
            (
            
                '304161'
            
                ,'101'
            
                ,'安徽海益测试对手方'
            
                ,'恒天基金'
            
                ,'恒天基金'
            
                ,'1111'
            
                ,'654321'
            
                ,'CFETS'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
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
            
                ,'102'
            
                ,'安徽海益首席交易员'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'安徽海益信息'
            
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
            
                '4'
            
                ,'0.035'
            
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
            
                ,'1年定存（年付）利率互换收盘曲线(均值)_10年'
            
                ,'1.50'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        