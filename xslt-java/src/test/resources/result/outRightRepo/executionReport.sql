
        INSERT INTO [dbo].[cfets_orders]
        (
        
                [ExecID]
            
                ,[LastQty]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[TransactTime]
            
                ,[SettlDate]
            
                ,[TradeDate]
            
                ,[SettlCurrAmt]
            
                ,[SettlCurrency]
            
                ,[ExecType]
            
                ,[SettlDate2]
            
                ,[DeliveryType]
            
                ,[CashHoldingDays]
            
                ,[ContingencyIndicator]
            
                ,[DeliveryType2]
            
                ,[DealTransType]
            
                ,[MarginRequired]
            
                ,[MarketIndicator]
            
                ,[RemarkIndicator]
            
                ,[SettlCurrAmt2]
            
                ,[TradeLimitDays]
            
                ,[TradeMethod]
            
                ,[TradeTime]
            
                ,[DataCategoryIndicator]
            
                ,[ClearingMethod]
            
        ,[SysStatus]
        ) VALUES (
        
                'OR20170216000007'
            
                ,'3000000'
            
                ,'0.070025'
            
                ,'OR007'
            
                ,'4'
            
                ,'20170216 15:08:50.102'
            
                ,'20170216'
            
                ,'20170216'
            
                ,'2676106.91'
            
                ,'CNY'
            
                ,'101'
            
                ,'20170223'
            
                ,'0'
            
                ,'7'
            
                ,'Y'
            
                ,'0'
            
                ,'0'
            
                ,'N'
            
                ,'10'
            
                ,'N'
            
                ,'2679700.77'
            
                ,'7'
            
                ,'1'
            
                ,'15:08:50'
            
                ,'0'
            
                ,'13'
            
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
            
                ,'89.3234'
            
                ,'88.0000'
            
                ,'88.0380'
            
                ,'3000000'
            
                ,'01国开16'
            
                ,'7.2798'
            
                ,'7.2808'
            
            ,''
            );
        