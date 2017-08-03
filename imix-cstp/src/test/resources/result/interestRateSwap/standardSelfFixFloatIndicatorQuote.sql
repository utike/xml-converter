
        INSERT INTO [dbo].[cfets_orders]
        (
        
                [ClOrdID]
            
                ,[ExecID]
            
                ,[LastQty]
            
                ,[Text]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[TransactTime]
            
                ,[TradeDate]
            
                ,[QuoteID]
            
                ,[ExecType]
            
                ,[StartDate]
            
                ,[EndDate]
            
                ,[CouponPaymentDateReset]
            
                ,[InterestAccuralDaysAdjustment]
            
                ,[ContingencyIndicator]
            
                ,[FirstPeriodStartDate]
            
                ,[DealTransType]
            
                ,[MarketIndicator]
            
                ,[RemarkIndicator]
            
                ,[TradeLimitDays]
            
                ,[TradeMethod]
            
                ,[TradeTime]
            
                ,[CalculateAgency]
            
                ,[DataCategoryIndicator]
            
                ,[ClearingMethod]
            
                ,[ClosePositionIndicator]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                '993721497895609004'
            
                ,'IRS20170619000023'
            
                ,'10000000'
            
                ,'text'
            
                ,'User-Defined'
            
                ,'J'
            
                ,'20170619 18:39:24.433'
            
                ,'20170619'
            
                ,'201706190220000032'
            
                ,'F'
            
                ,'20170619'
            
                ,'20180619'
            
                ,'0'
            
                ,'0'
            
                ,'N'
            
                ,'20170619'
            
                ,'0'
            
                ,'2'
            
                ,'N'
            
                ,'1000000'
            
                ,'1'
            
                ,'18:39:24'
            
                ,'3'
            
                ,'0'
            
                ,'13'
            
                ,'Y'
            
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
            
                ,[EligibleCounterParty]
            
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
            
                ,'CFETS'
            
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
            
                ,[EligibleCounterParty]
            
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
            
                ,'CFETS'
            
                ,'-'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_legs]
            (
            
                [Side]
            
                ,[CouponPaymentDate]
            
                ,[CouponPaymentFrequency]
            
                ,[DayCount]
            
                ,[Price]
            
                ,[PriceType]
            
            ,[FkID]
            ) VALUES
            (
            
                '1'
            
                ,'20170719'
            
                ,'3'
            
                ,'3'
            
                ,'0.035'
            
                ,'3'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_legs]
            (
            
                [Side]
            
                ,[CouponPaymentDate]
            
                ,[CouponPaymentFrequency]
            
                ,[DayCount]
            
                ,[InterestAccrualDate]
            
                ,[InterestAccrualMethod]
            
                ,[InterestAccrualResetFrequency]
            
                ,[PriceType]
            
                ,[BenchmarkCurveName]
            
                ,[BenchmarkSpread]
            
            ,[FkID]
            ) VALUES
            (
            
                'B'
            
                ,'20170719'
            
                ,'3'
            
                ,'3'
            
                ,'20170619'
            
                ,'0'
            
                ,'3'
            
                ,'6'
            
                ,'1年定存（年付）利率互换收盘曲线(均值)_10年'
            
                ,'1.50'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        