
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[ID]
            
                ,[Qty]
            
                ,[TransType]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[SettlDate]
            
                ,[SettlCurrAmt]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[DeliveryType]
            
                ,[AccruedInterestTotalAmt]
            
                ,[ContingencyIndicator]
            
                ,[MarginRequired]
            
                ,[MarketIndicator]
            
                ,[QuoteTime]
            
                ,[RemarkIndicator]
            
                ,[TradeCashAmt]
            
                ,[TradeLimitDays]
            
                ,[DataCategoryIndicator]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                '993721497952793017'
            
                ,'201706200510000005'
            
                ,'10000000'
            
                ,'N'
            
                ,'BFD0007'
            
                ,'1'
            
                ,'BFD0007'
            
                ,'20170620 17:59:37.347'
            
                ,'20170620 19:20:00.000'
            
                ,'20170627'
            
                ,'10035494.48'
            
                ,'16'
            
                ,'0'
            
                ,'0'
            
                ,'135494.48'
            
                ,'N'
            
                ,'N'
            
                ,'5'
            
                ,'20170620 17:59:37.347'
            
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
            
                ,[EligibleCounterParty]
            
            ,[FkID]
            ) VALUES
            (
            
                '545454'
            
                ,'101'
            
                ,'安徽海益首席交易员'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'安徽海益信息'
            
                ,'CFETS'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[TraderName]
            
                ,[FirmShortChineseName]
            
                ,[EligibleCounterParty]
            
            ,[FkID]
            ) VALUES
            (
            
                '304161'
            
                ,'102'
            
                ,'安徽海益测试对手方'
            
                ,'恒天基金'
            
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
            
                ,'1.35494'
            
                ,'100.3549'
            
                ,'99.0000'
            
                ,'10000000'
            
                ,'10附息国债02'
            
                ,'3.8359'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        