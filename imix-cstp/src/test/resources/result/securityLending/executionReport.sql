
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
            
                ,[SettlCurrency]
            
                ,[ExecType]
            
                ,[SettlDate2]
            
                ,[DeliveryType]
            
                ,[CashHoldingDays]
            
                ,[ContingencyIndicator]
            
                ,[DeliveryType2]
            
                ,[DisputeSettlementMethod]
            
                ,[CouponPaymentIndicator]
            
                ,[DealTransType]
            
                ,[MarketIndicator]
            
                ,[RemarkIndicator]
            
                ,[TradeLimitDays]
            
                ,[TradeMethod]
            
                ,[TradeTime]
            
                ,[DataCategoryIndicator]
            
                ,[MiscFeeAmt]
            
        ,[SysStatus]
        ) VALUES (
        
                '994828487256773010'
            
                ,'SL20170216000003'
            
                ,'6400000'
            
                ,'0.07'
            
                ,'L2M'
            
                ,'1'
            
                ,'20170216 15:14:06.796'
            
                ,'20170216'
            
                ,'20170216'
            
                ,'201702160820000005'
            
                ,'CNY'
            
                ,'F'
            
                ,'20170324'
            
                ,'6'
            
                ,'36'
            
                ,'N'
            
                ,'9'
            
                ,'0'
            
                ,'N'
            
                ,'0'
            
                ,'8'
            
                ,'N'
            
                ,'36'
            
                ,'1'
            
                ,'15:14:06'
            
                ,'0'
            
                ,'44186.30'
            
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
            
                '102445'
            
                ,'119'
            
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
            
                ,'120'
            
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
        