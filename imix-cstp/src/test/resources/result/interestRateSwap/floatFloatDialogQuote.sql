
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
            
                ,[DataCategoryIndicator]
            
        ,[SysStatus]
        ) VALUES (
        
                '993721497895609005'
            
                ,'10000000'
            
                ,'User-Defined'
            
                ,'K'
            
                ,'20170619 18:39:29.335'
            
                ,'20170619 19:00:00.000'
            
                ,'201706190220000033'
            
                ,'107'
            
                ,'1'
            
                ,'20170619'
            
                ,'20180619'
            
                ,'N'
            
                ,'N'
            
                ,'2'
            
                ,'1'
            
                ,'20170619 18:29:26.542'
            
                ,'R'
            
                ,'N'
            
                ,'1000000'
            
                ,'0'
            
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
            
                '304161'
            
                ,'101'
            
                ,'安徽海益测试对手方'
            
                ,'恒天基金'
            
                ,'恒天基金'
            
                ,'1111'
            
                ,'654321'
            
            ,''
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
            
                ,'102'
            
                ,'安徽海益首席交易员'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'安徽海益信息'
            
            ,''
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
            
                '4'
            
                ,'6'
            
                ,'1年定存（年付）利率互换收盘曲线(均值)_10年'
            
                ,'1.70'
            
            ,''
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
            
                ,'1.20'
            
            ,''
            );
        