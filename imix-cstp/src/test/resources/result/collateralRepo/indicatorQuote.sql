
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[ID]
            
                ,[Qty]
            
                ,[TransType]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[SettlType]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[DeliveryType]
            
                ,[AccruedInterestTotalAmt]
            
                ,[ContingencyIndicator]
            
                ,[DeliveryType2]
            
                ,[MarketIndicator]
            
                ,[QuoteTime]
            
                ,[RemarkIndicator]
            
                ,[SettlCurrAmt2]
            
                ,[TradeCashAmt]
            
                ,[TradeLimitDays]
            
                ,[DataCategoryIndicator]
            
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[SysStatus]
        ) VALUES (
        
                '993721497952793014'
            
                ,'201706200910000047'
            
                ,'10000000'
            
                ,'N'
            
                ,'0.01'
            
                ,'R001'
            
                ,'4'
            
                ,'20170620 17:53:35.753'
            
                ,'20170620 19:20:00.000'
            
                ,'1'
            
                ,'16'
            
                ,'0'
            
                ,'0'
            
                ,'4.11'
            
                ,'N'
            
                ,'0'
            
                ,'9'
            
                ,'20170620 17:53:35.753'
            
                ,'N'
            
                ,'150004.11'
            
                ,'150000.00'
            
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
            
                ,[Qty]
            
                ,[Symbol]
            
            ,[FkID]
            ) VALUES
            (
            
                '100002'
            
                ,'10000000'
            
                ,'10附息国债02'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        