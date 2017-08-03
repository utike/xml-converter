
        INSERT INTO [dbo].[cfets_marketdata]
        (
        
                [SecurityID]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[SecurityType]
            
                ,[MarketDepth]
            
                ,[MDBookType]
            
                ,[MarketIndicator]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                '010011'
            
                ,'01国债11'
            
                ,'20170710 15:28:08'
            
                ,'TB'
            
                ,'10'
            
                ,'2'
            
                ,'4'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
        
            ,'<root>123</root>'
        
        ,0
        );
    
            INSERT INTO [dbo].[details_mdEntries]
            (
            
                [MDEntryType]
            
                ,[LastPx]
            
                ,[MDEntryDate]
            
                ,[MDEntryPx]
            
                ,[MDEntrySize]
            
                ,[MDEntryTime]
            
                ,[MDPriceLevel]
            
                ,[MDQuoteType]
            
                ,[QuoteEntryID]
            
                ,[SettlCurrency]
            
                ,[SettlDate]
            
                ,[SettlType]
            
                ,[ClearingMethod]
            
                ,[SDeliveryTypeOption]
            
            ,[FkID]
            ) VALUES
            (
            
                '1'
            
                ,'101.0000'
            
                ,'20170710'
            
                ,'101.8310'
            
                ,'5000000'
            
                ,'13:45:52.513'
            
                ,'1'
            
                ,'107'
            
                ,'201707100440000008'
            
                ,'CNY'
            
                ,'20170711'
            
                ,'2'
            
                ,'13'
            
                ,'0'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_mdEntries]
            (
            
                [MDEntryType]
            
                ,[MDPriceLevel]
            
                ,[SettlType]
            
            ,[FkID]
            ) VALUES
            (
            
                '0'
            
                ,'1'
            
                ,'2'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[TraderCode]
            
                ,[TraderName]
            
            ,[FkID]
            ) VALUES
            (
            
                '346234623462346234621'
            
                ,'101'
            
                ,'htcsdealer'
            
                ,'a080'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        