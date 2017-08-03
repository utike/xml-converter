
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[Qty]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[SettlType]
            
                ,[SettlDate]
            
                ,[ID]
            
                ,[SettlCurrAmt]
            
                ,[SettlCurrency]
            
                ,[AccruedInterestAmt]
            
                ,[Yield]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[DeliveryType]
            
                ,[AccruedInterestTotalAmt]
            
                ,[DirtyPrice]
            
                ,[MarketIndicator]
            
                ,[TransType]
            
                ,[TradeCashAmt]
            
                ,[ClearingMethod]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                'ODahhytrd000000001'
            
                ,'10000000'
            
                ,'99.0000'
            
                ,'1080001'
            
                ,'1'
            
                ,'20170710 14:25:15.547'
            
                ,'20170710 19:20:00.000'
            
                ,'1'
            
                ,'20170710'
            
                ,'201707100420000016'
            
                ,'10135643.84'
            
                ,'CNY'
            
                ,'2.35644'
            
                ,'5.1237'
            
                ,'16'
            
                ,'1'
            
                ,'0'
            
                ,'235643.84'
            
                ,'101.3564'
            
                ,'4'
            
                ,'N'
            
                ,'9900000.00'
            
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
            
                ,[TraderCode]
            
                ,[TraderName]
            
                ,[CustodianInstitutionName]
            
                ,[SecuritiesAccNumber]
            
                ,[SettlementBankName]
            
                ,[CashAccountNumber]
            
            ,[FkID]
            ) VALUES
            (
            
                '545454545454545454541'
            
                ,'101'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'yaolei'
            
                ,'yaolei'
            
                ,'国债登记结算公司'
            
                ,'125235454'
            
                ,'安徽海益信息科技有限公司'
            
                ,'123131'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[FirmFullChineseName]
            
                ,[TraderCode]
            
                ,[TraderName]
            
            ,[FkID]
            ) VALUES
            (
            
                '888888888888888888888'
            
                ,'102'
            
                ,'恒天基金'
            
                ,'htjjdealerahhy'
            
                ,'安徽海益测试对手方'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        