
        INSERT INTO [dbo].[cfets_orders]
        (
        
                [ClOrdID]
            
                ,[ExecID]
            
                ,[LastQty]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[SettlDate]
            
                ,[TradeDate]
            
                ,[QuoteID]
            
                ,[SettlCurrAmt]
            
                ,[SettlCurrency]
            
                ,[ExecType]
            
                ,[AccruedInterestAmt]
            
                ,[DeliveryType]
            
                ,[AccruedInterestTotalAmt]
            
                ,[ContingencyIndicator]
            
                ,[DirtyPrice]
            
                ,[DealTransType]
            
                ,[MarketIndicator]
            
                ,[TermToMaturity]
            
                ,[RemarkIndicator]
            
                ,[TradeCashAmt]
            
                ,[TradeMethod]
            
                ,[TradeTime]
            
                ,[TradeType]
            
                ,[CashBondIndicator]
            
                ,[DataCategoryIndicator]
            
                ,[ClearingMethod]
            
                ,[Yield2]
            
        ,[SysStatus]
        ) VALUES (
        
                '994828487256773008'
            
                ,'CBT20170216000011'
            
                ,'8000000'
            
                ,'37.0000'
            
                ,'010011'
            
                ,'4'
            
                ,'01国债11'
            
                ,'20170216 15:10:16.038'
            
                ,'20170216'
            
                ,'20170216'
            
                ,'201702160420000018'
            
                ,'3058153.85'
            
                ,'CNY'
            
                ,'F'
            
                ,'1.22692'
            
                ,'0'
            
                ,'98153.85'
            
                ,'N'
            
                ,'38.2269'
            
                ,'0'
            
                ,'4'
            
                ,'Y4M8D7'
            
                ,'N'
            
                ,'2960000.00'
            
                ,'1'
            
                ,'15:10:16'
            
                ,'1'
            
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
            
                ,[PostalAddress]
            
                ,[TraderName]
            
                ,[FirmShortChineseName]
            
                ,[FirmFullChineseName]
            
                ,[FirmShortName]
            
                ,[CashAccountNumber]
            
                ,[CashAccountName]
            
                ,[SettlementBankName]
            
                ,[SettlementBankSortCode]
            
                ,[CustodianInstitutionName]
            
                ,[SecuritiesAccNumber]
            
                ,[SecuritiesAccName]
            
                ,[TraderChineseName]
            
                ,[EligibleCounterParty]
            
                ,[PhoneNo]
            
            ,[FkID]
            ) VALUES
            (
            
                '304161'
            
                ,'119'
            
                ,'-'
            
                ,'中原证券对手方'
            
                ,'恒天基金'
            
                ,'恒天基金'
            
                ,'恒天基金'
            
                ,'654321'
            
                ,'恒天'
            
                ,'1111'
            
                ,'0000'
            
                ,'国债登记结算公司'
            
                ,'A654321'
            
                ,'恒天基金'
            
                ,'中原证券对手方'
            
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
            
                ,[SettlementBankName]
            
                ,[SettlementBankSortCode]
            
                ,[CustodianInstitutionName]
            
                ,[SecuritiesAccNumber]
            
                ,[SecuritiesAccName]
            
                ,[TraderChineseName]
            
                ,[EligibleCounterParty]
            
                ,[PhoneNo]
            
            ,[FkID]
            ) VALUES
            (
            
                '102445'
            
                ,'120'
            
                ,'中原证券'
            
                ,'中原证券首席交易员'
            
                ,'中原证券'
            
                ,'中原证券股份有限公司'
            
                ,'中原证券'
            
                ,'41001521010050006729'
            
                ,'中原证券股份有限公司'
            
                ,'中国建设银行股份有限公司郑州期货城支行(105491000047)'
            
                ,'-'
            
                ,'国债登记结算公司'
            
                ,'00000002869'
            
                ,'中原证券股份有限公司'
            
                ,'中原证券首席交易员'
            
                ,'CFETS'
            
                ,'-'
            
            ,''
            );
        