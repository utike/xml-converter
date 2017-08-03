
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
            
                ,[AccruedInterestTotalAmt]
            
                ,[CashHoldingDays]
            
                ,[ContingencyIndicator]
            
                ,[DeliveryType2]
            
                ,[DealTransType]
            
                ,[MarketIndicator]
            
                ,[RemarkIndicator]
            
                ,[SettlCurrAmt2]
            
                ,[TradeCashAmt]
            
                ,[TradeLimitDays]
            
                ,[TradeMethod]
            
                ,[TradeTime]
            
                ,[DataCategoryIndicator]
            
                ,[ClearingMethod]
            
                ,[RepoMethod]
            
                ,[SequelIndicator]
            
        ,[SysStatus]
        ) VALUES (
        
                '994828487256773004'
            
                ,'CR20170216000011'
            
                ,'5200000'
            
                ,'0.66'
            
                ,'R007'
            
                ,'1'
            
                ,'20170216 15:02:29.885'
            
                ,'20170216'
            
                ,'20170216'
            
                ,'201702160920000014'
            
                ,'EUR'
            
                ,'F'
            
                ,'20170221'
            
                ,'0'
            
                ,'36200.55'
            
                ,'5'
            
                ,'N'
            
                ,'0'
            
                ,'0'
            
                ,'9'
            
                ,'N'
            
                ,'4040200.55'
            
                ,'4004000.00'
            
                ,'5'
            
                ,'1'
            
                ,'15:02:29'
            
                ,'0'
            
                ,'13'
            
                ,'1'
            
                ,'1'
            
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
            
                ,'上海清算所'
            
                ,'B0002980'
            
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
            
                ,'456789455'
            
                ,'恒天基金'
            
                ,'恒天基金开户行'
            
                ,'442598'
            
                ,'上海清算所'
            
                ,'B0512343'
            
                ,'SHANGQINGSUO'
            
                ,'中原证券对手方'
            
                ,'CFETS'
            
                ,'-'
            
            ,''
            );
        
            INSERT INTO [dbo].[details_underlyings]
            (
            
                [SecurityID]
            
                [SecurityID]
            
                ,[Qty]
            
                ,[Qty]
            
                ,[Symbol]
            
                ,[Symbol]
            
                ,[Haircut]
            
            ,[FkID]
            ) VALUES
            (
            
                '081600001'
            
                ,'5200000'
            
                ,'16世行EUR01'
            
            ,''
            );
        