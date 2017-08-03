
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
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[AccruedInterestTotalAmt]
            
                ,[MarketIndicator]
            
                ,[NegotiationCount]
            
                ,[QuoteTime]
            
                ,[TransType]
            
                ,[RemarkIndicator]
            
                ,[SettlCurrAmt2]
            
                ,[TradeLimitDays]
            
                ,[DataCategoryIndicator]
            
        ,[SysStatus]
        ) VALUES (
        
                '994828487256773001'
            
                ,'300000.00'
            
                ,'0.02'
            
                ,'IBO007'
            
                ,'1'
            
                ,'20170216 14:53:35.026'
            
                ,'20170216 19:20:00.000'
            
                ,'2'
            
                ,'201702160120000013'
            
                ,'16'
            
                ,'1'
            
                ,'83.33'
            
                ,'1'
            
                ,'1'
            
                ,'20170216 14:53:35.026'
            
                ,'N'
            
                ,'N'
            
                ,'300083.33'
            
                ,'5'
            
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
        