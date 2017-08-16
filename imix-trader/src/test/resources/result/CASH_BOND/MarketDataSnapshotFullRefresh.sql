
        INSERT INTO [dbo].[cfets_marketdata]
        (
        [SysStatus]
        
                ,[SysID]
            
                ,[SysOriMsg]
            
        
            
                
            
            
                ,[SecurityID]
            
        
    
        
            
                
            
            
                ,[Symbol]
            
        
    
        
            
                
            
            
                ,[TransactTime]
            
        
    
        
            
                
            
            
                ,[SecurityType]
            
        
    
        
            
                
            
            
                ,[MarketDepth]
            
        
    
        
            
                
            
            
                ,[MDBookType]
            
        
    
        
            
                
            
            
                ,[MarketIndicator]
            
        
    
        ) VALUES (
        0
        
                ,'21b8c864-b636-40cb-b9e1-309155ce170e'
            
                ,'<MarketData><Header><BeginString>IMIX.2.0</BeginString><BodyLength>516</BodyLength><MsgSeqNum>3</MsgSeqNum><MsgType>W</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170710 09:40:23.439</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhymd</TargetSubID></Header><Master><SecurityID>010011</SecurityID><Symbol>01国债11</Symbol><TransactTime>20170710 15:28:08</TransactTime><SecurityType>TB</SecurityType><MarketDepth>10</MarketDepth><MDBookType>2</MDBookType><MarketIndicator>4</MarketIndicator></Master><Slave><NoMDEntries><NoMDEntry><MDEntryType>1</MDEntryType><LastPx>101.0000</LastPx><MDEntryDate>20170710</MDEntryDate><MDEntryPx>101.8310</MDEntryPx><MDEntrySize>5000000</MDEntrySize><MDEntryTime>13:45:52.513</MDEntryTime><MDPriceLevel>1</MDPriceLevel><MDQuoteType>107</MDQuoteType><QuoteEntryID>201707100440000008</QuoteEntryID><SettlCurrency>CNY</SettlCurrency><SettlDate>20170711</SettlDate><SettlType>2</SettlType><ClearingMethod>13</ClearingMethod><SDeliveryTypeOption>0</SDeliveryTypeOption></NoMDEntry><NoMDEntry><MDEntryType>0</MDEntryType><MDPriceLevel>1</MDPriceLevel><SettlType>2</SettlType></NoMDEntry></NoMDEntries><Parties><Party><PartyID>346234623462346234621</PartyID><PartyRole>101</PartyRole><TraderCode>htcsdealer</TraderCode><TraderName>a080</TraderName></Party></Parties></Slave></MarketData>'
            
        
            
                
            
            
                ,'010011'
            
        
    
        
            
                
            
            
                ,'01国债11'
            
        
    
        
            
                
            
            
                ,'20170710 15:28:08'
            
        
    
        
            
                
            
            
                ,'TB'
            
        
    
        
            
                
            
            
                ,'10'
            
        
    
        
            
                
            
            
                ,'2'
            
        
    
        
            
                
            
            
                ,'4'
            
        
    
        );
    
            INSERT INTO [dbo].[details_mdEntries]
            (
            [FkID]
            
        
            
                
            
            
                ,[MDEntryType]
            
        
    
        
            
                
            
            
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
            
        
    
            ) VALUES
            (
            '21b8c864-b636-40cb-b9e1-309155ce170e'
            
        
            
                
            
            
                ,'1'
            
        
    
        
            
                
            
            
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
            
        
    
            );
        
            INSERT INTO [dbo].[details_mdEntries]
            (
            [FkID]
            
        
            
                
            
            
                ,[MDEntryType]
            
        
    
        
            
                
            
            
                ,[MDPriceLevel]
            
        
    
        
            
                
            
            
                ,[SettlType]
            
        
    
            ) VALUES
            (
            '21b8c864-b636-40cb-b9e1-309155ce170e'
            
        
            
                
            
            
                ,'0'
            
        
    
        
            
                
            
            
                ,'1'
            
        
    
        
            
                
            
            
                ,'2'
            
        
    
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        
            
                
            
            
                ,[PartyID]
            
        
    
        
            
                
            
            
                ,[PartyRole]
            
        
    
        
            
                
            
            
                ,[TraderCode]
            
        
    
        
            
                
            
            
                ,[TraderName]
            
        
    
            ) VALUES
            (
            '21b8c864-b636-40cb-b9e1-309155ce170e'
            
        
            
                
            
            
                ,'346234623462346234621'
            
        
    
        
            
                
            
            
                ,'101'
            
        
    
        
            
                
            
            
                ,'htcsdealer'
            
        
    
        
            
                
            
            
                ,'a080'
            
        
    
            );
        