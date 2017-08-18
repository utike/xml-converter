
        INSERT INTO [dbo].[cfets_quotes]
        (
        [SysStatus]
        ,[MsgType]
        
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[QuoteReqID]
    
        ,[SecurityID]
    
        ,[MarketIndicator]
    
        ,[QuoteStatus]
    
        ,[QuoteType]
    
        ,[TransactTime]
    
        ) VALUES (
        '0',
        'U32'
        
                ,'57daeff3-df93-4df1-85fe-0dd707d254af'
            
                ,'<Quote><Header><BeginString>IMIX.2.0</BeginString><BodyLength>423</BodyLength><MsgSeqNum>165</MsgSeqNum><MsgType>U32</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170818 07:02:00.739</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><QuoteReqID>201708180410000064</QuoteReqID><SecurityID>041259015</SecurityID><MarketIndicator>4</MarketIndicator><SecurityType>CBT</SecurityType><QuoteStatus>21</QuoteStatus><QuoteType>112</QuoteType><TransactTime>20170818 15:02:00.162</TransactTime></Master><Slave><Parties><Party><PartyID>545454545454545454541</PartyID><PartyRole>101</PartyRole><TraderCode>ahhydealer</TraderCode><FirmFullChineseName>安徽海益信息科技有限责任公司</FirmFullChineseName><TraderName>安徽海益首席交易员</TraderName></Party></Parties></Slave></Quote>'
            
        ,'201708180410000064'
    
        ,'041259015'
    
        ,'4'
    
        ,'21'
    
        ,'112'
    
        ,'20170818 15:02:00.162'
    
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        ,[PartyID]
    
        ,[PartyRole]
    
        ,[TraderCode]
    
        ,[FirmFullChineseName]
    
        ,[TraderName]
    
            ) VALUES
            (
            '57daeff3-df93-4df1-85fe-0dd707d254af'
            
        ,'545454545454545454541'
    
        ,'101'
    
        ,'ahhydealer'
    
        ,'安徽海益信息科技有限责任公司'
    
        ,'安徽海益首席交易员'
    
            );
        