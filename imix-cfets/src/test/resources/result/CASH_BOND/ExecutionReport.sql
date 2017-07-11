
        INSERT INTO [dbo].[cfets_orders]
        (
        
                [ExecID]
            
                ,[LastQty]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[TransactTime]
            
                ,[SettlType]
            
                ,[SettlDate]
            
                ,[TradeDate]
            
                ,[QuoteID]
            
                ,[SettlCurrAmt]
            
                ,[SettlCurrency]
            
                ,[ExecType]
            
                ,[AccruedInterestAmt]
            
                ,[Yield2]
            
                ,[TradeCashAmt]
            
                ,[DeliveryType]
            
                ,[AccruedInterestTotalAmt]
            
                ,[ContingencyIndicator]
            
                ,[DirtyPrice]
            
                ,[MarketIndicator]
            
                ,[TradeMethod]
            
                ,[TradeTime]
            
                ,[TradeType]
            
                ,[ClearingMethod]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                'CBT20170710000019'
            
                ,'10000000'
            
                ,'99.0000'
            
                ,'1080001'
            
                ,'2'
            
                ,'20170710 14:45:20.860'
            
                ,'2'
            
                ,'20170711'
            
                ,'20170710'
            
                ,'201707100420000017'
            
                ,'10136931.51'
            
                ,'CNY'
            
                ,'F'
            
                ,'2.36932'
            
                ,'5.1242'
            
                ,'9900000.00'
            
                ,'0'
            
                ,'236931.51'
            
                ,'N'
            
                ,'101.3693'
            
                ,'4'
            
                ,'1'
            
                ,'14:45:20.860'
            
                ,'1'
            
                ,'13'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
        
            ,'<root>123</root>'
        
        ,0
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[FirmFullChineseName]
            
                ,[FirmShortChineseName]
            
                ,[TraderName]
            
                ,[CustodianInstitutionName]
            
                ,[SecuritiesAccNumber]
            
                ,[SettlementBankName]
            
                ,[CashAccountNumber]
            
            ,[FkID]
            ) VALUES
            (
            
                '888888888888888888888'
            
                ,'119'
            
                ,'恒天基金'
            
                ,'恒天基金'
            
                ,'安徽海益测试对手方'
            
                ,'国债登记结算公司'
            
                ,'A654321'
            
                ,'1111'
            
                ,'654321'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[FirmFullChineseName]
            
                ,[FirmShortChineseName]
            
                ,[TraderName]
            
                ,[CustodianInstitutionName]
            
                ,[SecuritiesAccNumber]
            
                ,[SettlementBankName]
            
                ,[CashAccountNumber]
            
            ,[FkID]
            ) VALUES
            (
            
                '545454545454545454541'
            
                ,'120'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'安徽海益信息'
            
                ,'yaolei'
            
                ,'国债登记结算公司'
            
                ,'125235454'
            
                ,'安徽海益信息科技有限公司'
            
                ,'123131'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        