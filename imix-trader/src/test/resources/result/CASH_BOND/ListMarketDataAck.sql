
        INSERT INTO [dbo].[cfets_marketdata_ack]
        (
        
                [TransactTime]
            
                ,[MDReqID]
            
                ,[SubscriptionRequestType]
            
                ,[MDBookType]
            
                ,[SubscriptionStatus]
            
                ,[SecurityID]
            
                ,[MarketIndicator]
            
                ,[SecurityType]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                '20170710 17:40:23'
            
                ,'MDahhymd0000000120'
            
                ,'1'
            
                ,'2'
            
                ,'0'
            
                ,'-'
            
                ,'4'
            
                ,'TB'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
        
            ,'<root>123</root>'
        
        ,0
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
            ,[FkID]
            ) VALUES
            (
            
                '545454545454545454541'
            
                ,'1'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        