
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[Qty]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[SettlType]
            
                ,[SettlDate]
            
                ,[ID]
            
                ,[SettlCurrAmt]
            
                ,[SettlCurrency]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[DeliveryType]
            
                ,[ContingencyIndicator]
            
                ,[DeliveryType2]
            
                ,[MarginRequired]
            
                ,[MarketIndicator]
            
                ,[NegotiationCount]
            
                ,[QuoteTime]
            
                ,[TransType]
            
                ,[RemarkIndicator]
            
                ,[SettlCurrAmt2]
            
                ,[TradeLimitDays]
            
                ,[DataCategoryIndicator]
            
                ,[ClearingMethod]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
            ,[SysStatus]
        ) VALUES (
        
                '994828487256773006'
            
                ,'6400000'
            
                ,'0.35001899999999997'
            
                ,'OR007'
            
                ,'4'
            
                ,'OR007'
            
                ,'20170216 15:03:11.586'
            
                ,'20170216 19:20:00.000'
            
                ,'1'
            
                ,'20170216'
            
                ,'201702161020000005'
            
                ,'5709028.07'
            
                ,'CNY'
            
                ,'16'
            
                ,'1'
            
                ,'0'
            
                ,'N'
            
                ,'0'
            
                ,'N'
            
                ,'10'
            
                ,'1'
            
                ,'20170216 15:03:11.586'
            
                ,'N'
            
                ,'N'
            
                ,'5747350.98'
            
                ,'7'
            
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
            
                ,[SecuritiesAccNumber]
            
                ,[EligibleCounterParty]
            
            ,[FkID]
            ) VALUES
            (
            
                '102445'
            
                ,'101'
            
                ,'中原证券首席交易员'
            
                ,'中原证券股份有限公司'
            
                ,'中原证券'
            
                ,'中国建设银行股份有限公司郑州期货城支行(105491000047)'
            
                ,'41001521010050006729'
            
                ,'00000002869'
            
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
            
                '304161'
            
                ,'102'
            
                ,'中原证券对手方'
            
                ,'恒天基金'
            
                ,'恒天基金'
            
                ,'CFETS'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_underlyings]
            (
            
                [SecurityID]
            
                ,[AccruedInterestAmt]
            
                ,[AccruedInterestAmt2]
            
                ,[DirtyPrice]
            
                ,[DirtyPrice2]
            
                ,[Px]
            
                ,[Px2]
            
                ,[Qty]
            
                ,[Symbol]
            
                ,[Yield]
            
                ,[Yield2]
            
            ,[FkID]
            ) VALUES
            (
            
                '010216'
            
                ,'1.20356'
            
                ,'1.28536'
            
                ,'89.2036'
            
                ,'89.8024'
            
                ,'88.0000'
            
                ,'88.5170'
            
                ,'6400000'
            
                ,'01国开16'
            
                ,'7.2798'
            
                ,'7.1494'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        