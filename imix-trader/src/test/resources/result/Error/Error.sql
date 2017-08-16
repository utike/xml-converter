
        INSERT INTO [dbo].[cfets_error]
        (
        [SysStatus]
        
                ,[SysID]
            
                ,[SysOriMsg]
            
        
            
                
            
            
                ,[ClOrdID]
            
        
    
        
            
                
            
            
                ,[TransactTime]
            
        
    
        
            
                
            
            
                ,[RefMsgType]
            
        
    
        
            
                
            
            
                ,[ApplErrorCode]
            
        
    
        
            
                
            
            
                ,[ApplErrorDesc]
            
        
    
        ) VALUES (
        0
        
                ,'4fd23761-ad2e-43aa-b3f7-30034e10a817'
            
                ,'
            <Error><Header><BeginString>IMIX.2.0</BeginString><BodyLength>252</BodyLength><MsgSeqNum>80</MsgSeqNum><MsgType>j</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170710 08:41:44.704</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><ClOrdID>ODahhytrd000000014</ClOrdID><TransactTime>20170710 16:41:44.160</TransactTime><RefMsgType>R</RefMsgType><ApplErrorCode>530013</ApplErrorCode><ApplErrorDesc>报价有效时间小于当前时间错误</ApplErrorDesc></Master></Error>'
            
        
            
                
            
            
                ,'ODahhytrd000000014'
            
        
    
        
            
                
            
            
                ,'20170710 16:41:44.160'
            
        
    
        
            
                
            
            
                ,'R'
            
        
    
        
            
                
            
            
                ,'530013'
            
        
    
        
            
                
            
            
                ,'报价有效时间小于当前时间错误'
            
        
    
        );
    