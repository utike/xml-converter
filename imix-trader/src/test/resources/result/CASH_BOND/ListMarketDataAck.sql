
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
            
                ,'e6ef0bde-81db-41bb-a43d-e1dc8dadbdb3'
            
                ,'<DataAck><Header><BeginString>IMIX.2.0</BeginString><BodyLength>278</BodyLength><MsgSeqNum>2</MsgSeqNum><MsgType>U100</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170710 09:40:23.325</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhymd</TargetSubID></Header><Master><TransactTime>20170710 17:40:23</TransactTime><MDReqID>MDahhymd0000000120</MDReqID><SubscriptionRequestType>1</SubscriptionRequestType><MDBookType>2</MDBookType><SubscriptionStatus>0</SubscriptionStatus><SecurityID>-</SecurityID><MarketIndicator>4</MarketIndicator><SecurityType>TB</SecurityType></Master><Slave><Parties><Party><PartyID>545454545454545454541</PartyID><PartyRole>1</PartyRole></Party></Parties></Slave></DataAck>'
            
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
            
            ,'e6ef0bde-81db-41bb-a43d-e1dc8dadbdb3'
            );
        