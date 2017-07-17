
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[SettlType]
            
                ,[SettlDate]
            
                ,[ID]
            
                ,[SettlCurrency]
            
                ,[AccruedInterestAmt]
            
                ,[SettlDate2]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[DeliveryType]
            
                ,[CashHoldingDays]
            
                ,[DeliveryType2]
            
                ,[MarketIndicator]
            
                ,[TransType]
            
                ,[SettlCurrAmt2]
            
                ,[TradeCashAmt]
            
                ,[TradeLimitDays]
            
                ,[ClearingMethod]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                'ODahhytrd000000001'
            
                ,'0.013000000000000001'
            
                ,'R007'
            
                ,'1'
            
                ,'20170717 16:28:26.142'
            
                ,'20170717 19:20:00.000'
            
                ,'1'
            
                ,'20170717'
            
                ,'201707170920000042'
            
                ,'CNY'
            
                ,'32.41096'
            
                ,'20170724'
            
                ,'16'
            
                ,'1'
            
                ,'0'
            
                ,'7'
            
                ,'0'
            
                ,'9'
            
                ,'N'
            
                ,'130032.41'
            
                ,'130000.00'
            
                ,'7'
            
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
        
            INSERT INTO [dbo].[details_underlyings]
            (
            
                [Symbol]
            
                ,[Qty]
            
                ,[SecurityID]
            
                ,[HAIRCUT]
            
            ,[FkID]
            ) VALUES
            (
            
                '-'
            
                ,'10000000'
            
                ,'100002'
            
                ,'1.3000'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        