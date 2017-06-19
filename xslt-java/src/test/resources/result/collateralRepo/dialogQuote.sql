
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
            
                ,[ID]
            
                ,[SettlCurrency]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[DeliveryType]
            
                ,[AccruedInterestTotalAmt]
            
                ,[ContingencyIndicator]
            
                ,[DeliveryType2]
            
                ,[MarketIndicator]
            
                ,[NegotiationCount]
            
                ,[QuoteTime]
            
                ,[TransType]
            
                ,[RemarkIndicator]
            
                ,[SettlCurrAmt2]
            
                ,[TradeCashAmt]
            
                ,[TradeLimitDays]
            
                ,[DataCategoryIndicator]
            
                ,[ClearingMethod]
            
                ,[RepoMethod]
            
                ,[SequelIndicator]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                '994828487256773002'
            
                ,'19100000'
            
                ,'0.36'
            
                ,'R007'
            
                ,'1'
            
                ,'20170216 15:00:51.120'
            
                ,'20170216 19:20:00.000'
            
                ,'1'
            
                ,'201702160920000013'
            
                ,'CNY'
            
                ,'16'
            
                ,'1'
            
                ,'0'
            
                ,'25987.07'
            
                ,'N'
            
                ,'0'
            
                ,'9'
            
                ,'1'
            
                ,'20170216 15:00:29.718'
            
                ,'1'
            
                ,'N'
            
                ,'3789987.07'
            
                ,'3764000.00'
            
                ,'7'
            
                ,'0'
            
                ,'13'
            
                ,'1'
            
                ,'1'
            
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
            
                '304161'
            
                ,'101'
            
                ,'中原证券对手方'
            
                ,'恒天基金'
            
                ,'恒天基金'
            
                ,'1111'
            
                ,'654321'
            
                ,'A654321'
            
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
            
                '102445'
            
                ,'102'
            
                ,'中原证券首席交易员'
            
                ,'中原证券股份有限公司'
            
                ,'中原证券'
            
                ,'CFETS'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_underlyings]
            (
            
                [SecurityID]
            
                ,[Qty]
            
                ,[Symbol]
            
                ,[Haircut]
            
            ,[FkID]
            ) VALUES
            (
            
                '010011'
            
                ,'9700000'
            
                ,'01国债11'
            
                ,'0.080000'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_underlyings]
            (
            
                [SecurityID]
            
                ,[Qty]
            
                ,[Symbol]
            
                ,[Haircut]
            
            ,[FkID]
            ) VALUES
            (
            
                '010214'
            
                ,'8600000'
            
                ,'01国开14'
            
                ,'0.340000'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_underlyings]
            (
            
                [SecurityID]
            
                ,[Qty]
            
                ,[Symbol]
            
                ,[Haircut]
            
            ,[FkID]
            ) VALUES
            (
            
                '010216'
            
                ,'800000'
            
                ,'01国开16'
            
                ,'0.080000'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        