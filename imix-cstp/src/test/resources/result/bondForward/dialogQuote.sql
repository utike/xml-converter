
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[Qty]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[SettlDate]
            
                ,[ID]
            
                ,[SettlCurrAmt]
            
                ,[SettlCurrency]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[DeliveryType]
            
                ,[AccruedInterestTotalAmt]
            
                ,[ContingencyIndicator]
            
                ,[MarginRequired]
            
                ,[MarketIndicator]
            
                ,[NegotiationCount]
            
                ,[QuoteTime]
            
                ,[TransType]
            
                ,[RemarkIndicator]
            
                ,[TradeCashAmt]
            
                ,[TradeLimitDays]
            
                ,[DataCategoryIndicator]
            
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[SysStatus]
        ) VALUES (
        
                '993721497895609002'
            
                ,'10000000'
            
                ,'BFD0007'
            
                ,'4'
            
                ,'BFD0007'
            
                ,'20170619 18:21:47.558'
            
                ,'20170619 19:20:00.000'
            
                ,'20170626'
            
                ,'201706190520000009'
            
                ,'10034546.96'
            
                ,'CNY'
            
                ,'107'
            
                ,'1'
            
                ,'0'
            
                ,'134546.96'
            
                ,'N'
            
                ,'N'
            
                ,'5'
            
                ,'1'
            
                ,'20170619 18:15:46.016'
            
                ,'R'
            
                ,'N'
            
                ,'9900000.00'
            
                ,'7'
            
                ,'0'
            
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
            
                ,'安徽海益测试对手方'
            
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
            
                '545454'
            
                ,'102'
            
                ,'安徽海益首席交易员'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'安徽海益信息'
            
                ,'CFETS'
            
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
        