
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
            
                ,[ID]
            
                ,[SettlCurrAmt]
            
                ,[SettlCurrency]
            
                ,[AccruedInterestAmt]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[DeliveryType]
            
                ,[AccruedInterestTotalAmt]
            
                ,[ContingencyIndicator]
            
                ,[DirtyPrice]
            
                ,[MarketIndicator]
            
                ,[NegotiationCount]
            
                ,[QuoteTime]
            
                ,[TransType]
            
                ,[RemarkIndicator]
            
                ,[TradeCashAmt]
            
                ,[CashBondIndicator]
            
                ,[DataCategoryIndicator]
            
                ,[ClearingMethod]
            
                ,[Yield2]
            
        ,[SysStatus]
        ) VALUES (
        
                '994828487256773008'
            
                ,'8000000'
            
                ,'37.0000'
            
                ,'010011'
            
                ,'4'
            
                ,'01国债11'
            
                ,'20170216 15:10:08.433'
            
                ,'20170216 19:20:00.000'
            
                ,'1'
            
                ,'201702160420000018'
            
                ,'3058153.85'
            
                ,'CNY'
            
                ,'1.22692'
            
                ,'16'
            
                ,'1'
            
                ,'0'
            
                ,'98153.85'
            
                ,'N'
            
                ,'38.2269'
            
                ,'4'
            
                ,'1'
            
                ,'20170216 15:10:08.433'
            
                ,'N'
            
                ,'N'
            
                ,'2960000.00'
            
                ,'Y'
            
                ,'0'
            
                ,'13'
            
                ,'29.4989'
            
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
            
            ,''
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
            
            ,''
            );
        