
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[ID]
            
                ,[Qty]
            
                ,[TransType]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[SettlType]
            
                ,[SettlDate]
            
                ,[SettlCurrAmt]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[DeliveryType]
            
                ,[ContingencyIndicator]
            
                ,[DeliveryType2]
            
                ,[MarginRequired]
            
                ,[MarketIndicator]
            
                ,[QuoteTime]
            
                ,[RemarkIndicator]
            
                ,[SettlCurrAmt2]
            
                ,[TradeLimitDays]
            
                ,[DataCategoryIndicator]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                '993721497952793015'
            
                ,'201706201010000017'
            
                ,'10000000'
            
                ,'N'
            
                ,'0.009916000000000001'
            
                ,'OR001'
            
                ,'4'
            
                ,'OR001'
            
                ,'20170620 17:57:21.271'
            
                ,'20170620 19:20:00.000'
            
                ,'2'
            
                ,'20170621'
            
                ,'1226933.33'
            
                ,'16'
            
                ,'0'
            
                ,'0'
            
                ,'N'
            
                ,'0'
            
                ,'N'
            
                ,'10'
            
                ,'20170620 17:57:21.271'
            
                ,'N'
            
                ,'1226966.67'
            
                ,'1'
            
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
            
                '100003'
            
                ,'1.26933'
            
                ,'1.28067'
            
                ,'12.2693'
            
                ,'12.2697'
            
                ,'11.0000'
            
                ,'10.9890'
            
                ,'10000000'
            
                ,'10附息国债03'
            
                ,'37.5971'
            
                ,'37.6342'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        