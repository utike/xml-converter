
        INSERT INTO [dbo].[cfets_orders]
        (
        
                [ClOrdID]
            
                ,[ExecID]
            
                ,[LastQty]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[TransactTime]
            
                ,[TradeDate]
            
                ,[QuoteID]
            
                ,[ExecType]
            
                ,[StartDate]
            
                ,[EndDate]
            
                ,[ContingencyIndicator]
            
                ,[FirstPeriodStartDate]
            
                ,[DealTransType]
            
                ,[MarginRequired]
            
                ,[MarketIndicator]
            
                ,[RemarkIndicator]
            
                ,[TradeLimitDays]
            
                ,[TradeMethod]
            
                ,[TradeTime]
            
                ,[DataCategoryIndicator]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                '993721497895609005'
            
                ,'BSS20170619000024'
            
                ,'10000000'
            
                ,'User-Defined'
            
                ,'K'
            
                ,'20170619 18:39:29.335'
            
                ,'20170619'
            
                ,'201706190220000033'
            
                ,'F'
            
                ,'20170619'
            
                ,'20180619'
            
                ,'N'
            
                ,'20170619'
            
                ,'0'
            
                ,'N'
            
                ,'2'
            
                ,'N'
            
                ,'1000000'
            
                ,'1'
            
                ,'18:39:29'
            
                ,'0'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
        
            ,'<root>123</root>'
        
        ,0
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[PostalAddress]
            
                ,[TraderName]
            
                ,[FirmShortChineseName]
            
                ,[FirmFullChineseName]
            
                ,[FirmShortName]
            
                ,[CashAccountNumber]
            
                ,[CashAccountName]
            
                ,[SettlementBankName]
            
                ,[SettlementBankSortCode]
            
                ,[TraderChineseName]
            
                ,[PhoneNo]
            
            ,[FkID]
            ) VALUES
            (
            
                '545454'
            
                ,'119'
            
                ,'-'
            
                ,'安徽海益首席交易员'
            
                ,'安徽海益信息'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'ahhy'
            
                ,'123131'
            
                ,'安徽海益'
            
                ,'安徽海益信息科技有限公司'
            
                ,'1311313'
            
                ,'安徽海益首席交易员'
            
                ,'-'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[PostalAddress]
            
                ,[TraderName]
            
                ,[FirmShortChineseName]
            
                ,[FirmFullChineseName]
            
                ,[FirmShortName]
            
                ,[CashAccountNumber]
            
                ,[CashAccountName]
            
                ,[SettlementBankName]
            
                ,[SettlementBankSortCode]
            
                ,[TraderChineseName]
            
                ,[PhoneNo]
            
            ,[FkID]
            ) VALUES
            (
            
                '304161'
            
                ,'120'
            
                ,'-'
            
                ,'安徽海益测试对手方'
            
                ,'恒天基金'
            
                ,'恒天基金'
            
                ,'恒天基金'
            
                ,'654321'
            
                ,'恒天'
            
                ,'1111'
            
                ,'0000'
            
                ,'安徽海益测试对手方'
            
                ,'-'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_legs]
            (
            
                [Side]
            
                ,[CouponPaymentDateReset]
            
                ,[CouponPaymentFrequency]
            
                ,[DayCount]
            
                ,[InterestAccrualDate]
            
                ,[InterestAccrualMethod]
            
                ,[InterestAccrualResetFrequency]
            
                ,[InterestAccuralDaysAdjustment]
            
                ,[PriceType]
            
                ,[BenchmarkCurveName]
            
                ,[BenchmarkSpread]
            
            ,[FkID]
            ) VALUES
            (
            
                '1'
            
                ,'0'
            
                ,'3'
            
                ,'3'
            
                ,'20170619'
            
                ,'0'
            
                ,'3'
            
                ,'0'
            
                ,'6'
            
                ,'1年定存（年付）利率互换收盘曲线(均值)_10年'
            
                ,'1.70'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_legs]
            (
            
                [Side]
            
                ,[CouponPaymentDateReset]
            
                ,[CouponPaymentFrequency]
            
                ,[DayCount]
            
                ,[InterestAccrualDate]
            
                ,[InterestAccrualMethod]
            
                ,[InterestAccrualResetFrequency]
            
                ,[InterestAccuralDaysAdjustment]
            
                ,[PriceType]
            
                ,[BenchmarkCurveName]
            
                ,[BenchmarkSpread]
            
            ,[FkID]
            ) VALUES
            (
            
                'B'
            
                ,'0'
            
                ,'3'
            
                ,'3'
            
                ,'20170619'
            
                ,'0'
            
                ,'3'
            
                ,'0'
            
                ,'6'
            
                ,'1年定存（年付）利率互换收盘曲线(均值)_10年'
            
                ,'1.20'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        