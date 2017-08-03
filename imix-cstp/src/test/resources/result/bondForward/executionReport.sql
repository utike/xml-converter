
        INSERT INTO [dbo].[cfets_orders]
        (
        
                [ClOrdID]
            
                ,[ExecID]
            
                ,[LastQty]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[TransactTime]
            
                ,[SettlDate]
            
                ,[TradeDate]
            
                ,[QuoteID]
            
                ,[SettlCurrAmt]
            
                ,[SettlCurrency]
            
                ,[ExecType]
            
                ,[DeliveryType]
            
                ,[AccruedInterestTotalAmt]
            
                ,[ContingencyIndicator]
            
                ,[DealTransType]
            
                ,[MarginRequired]
            
                ,[MarketIndicator]
            
                ,[TermToMaturity]
            
                ,[RemarkIndicator]
            
                ,[TradeCashAmt]
            
                ,[TradeLimitDays]
            
                ,[TradeMethod]
            
                ,[TradeTime]
            
                ,[DataCategoryIndicator]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                '993721497895609002'
            
                ,'BFD20170619000007'
            
                ,'10000000'
            
                ,'BFD0007'
            
                ,'1'
            
                ,'20170619 18:21:47.558'
            
                ,'20170626'
            
                ,'20170619'
            
                ,'201706190520000009'
            
                ,'10034546.96'
            
                ,'CNY'
            
                ,'F'
            
                ,'0'
            
                ,'134546.96'
            
                ,'N'
            
                ,'0'
            
                ,'N'
            
                ,'5'
            
                ,'Y2M7D16'
            
                ,'N'
            
                ,'9900000.00'
            
                ,'7'
            
                ,'1'
            
                ,'18:21:47'
            
                ,'0'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
        
            ,'<root>123</root>'
        
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
            
                '545454'
            
                ,'119'
            
                ,'-'
            
                ,'安徽海益首席交易员'
            
                ,'安徽海益信息'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'ahhy'
            
                ,'123131'
            
                ,'安徽海益'
            
                ,'安徽海益信息科技有限公司'
            
                ,'1311313'
            
                ,'国债登记结算公司'
            
                ,'125235454'
            
                ,'安徽海益'
            
                ,'安徽海益首席交易员'
            
                ,'CFETS'
            
                ,'-'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
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
            
                ,'安徽海益测试对手方'
            
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
            
                ,'安徽海益测试对手方'
            
                ,'CFETS'
            
                ,'-'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_underlyings]
            (
            
                [SecurityID]
            
                ,[AccruedInterestAmt]
            
                ,[DirtyPrice]
            
                ,[Px]
            
                ,[Qty]
            
                ,[Symbol]
            
                ,[Yield2]
            
            ,[FkID]
            ) VALUES
            (
            
                '100002'
            
                ,'1.34547'
            
                ,'100.3455'
            
                ,'99.0000'
            
                ,'10000000'
            
                ,'10附息国债02'
            
                ,'3.8355'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        