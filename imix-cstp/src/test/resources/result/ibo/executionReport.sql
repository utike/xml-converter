
        INSERT INTO [dbo].[cfets_orders]
        (
        
                [ClOrdID]
            
                ,[ExecID]
            
                ,[LastQty]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[TransactTime]
            
                ,[SettlDate]
            
                ,[TradeDate]
            
                ,[QuoteID]
            
                ,[ExecType]
            
                ,[SettlDate2]
            
                ,[AccruedInterestTotalAmt]
            
                ,[CashHoldingDays]
            
                ,[ContingencyIndicator]
            
                ,[DealTransType]
            
                ,[MarketIndicator]
            
                ,[RemarkIndicator]
            
                ,[SettlCurrAmt2]
            
                ,[TradeLimitDays]
            
                ,[TradeMethod]
            
                ,[TradeTime]
            
                ,[DataCategoryIndicator]
            
        ,[SysStatus]
        ) VALUES (
        
                '994828487256773001'
            
                ,'IBO20170216000006'
            
                ,'300000'
            
                ,'0.02'
            
                ,'IBO007'
            
                ,'1'
            
                ,'20170216 14:59:22.602'
            
                ,'20170217'
            
                ,'20170216'
            
                ,'201702160120000013'
            
                ,'F'
            
                ,'20170222'
            
                ,'83.33'
            
                ,'5'
            
                ,'N'
            
                ,'0'
            
                ,'1'
            
                ,'N'
            
                ,'300083.33'
            
                ,'5'
            
                ,'1'
            
                ,'14:59:22'
            
                ,'0'
            
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
            
                ,[SettlementBankSortCode]
            
                ,[SettlementBankName]
            
                ,[TraderChineseName]
            
                ,[EligibleCounterParty]
            
                ,[PhoneNo]
            
            ,[FkID]
            ) VALUES
            (
            
                '102445'
            
                ,'119'
            
                ,'中原证券'
            
                ,'中原证券首席交易员'
            
                ,'中原证券'
            
                ,'中原证券股份有限公司'
            
                ,'中原证券'
            
                ,'41001521010050006729'
            
                ,'中原证券股份有限公司'
            
                ,'-'
            
                ,'中国建设银行股份有限公司郑州期货城支行(105491000047)'
            
                ,'中原证券首席交易员'
            
                ,'CFETS'
            
                ,'-'
            
            ,''
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
            
                ,[SettlementBankSortCode]
            
                ,[SettlementBankName]
            
                ,[TraderChineseName]
            
                ,[EligibleCounterParty]
            
                ,[PhoneNo]
            
            ,[FkID]
            ) VALUES
            (
            
                '304161'
            
                ,'120'
            
                ,'-'
            
                ,'中原证券对手方'
            
                ,'恒天基金'
            
                ,'恒天基金'
            
                ,'恒天基金'
            
                ,'654321'
            
                ,'恒天'
            
                ,'0000'
            
                ,'1111'
            
                ,'中原证券对手方'
            
                ,'CFETS'
            
                ,'-'
            
            ,''
            );
        