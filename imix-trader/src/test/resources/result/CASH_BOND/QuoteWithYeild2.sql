
        INSERT INTO [dbo].[cfets_quotes]
        (
        [SysStatus]
        ,[MsgType]
        
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[Qty]
    
        ,[Price]
    
        ,[SecurityID]
    
        ,[Side]
    
        ,[Symbol]
    
        ,[TransactTime]
    
        ,[ValidUntilTime]
    
        ,[SettlType]
    
        ,[SettlDate]
    
        ,[ID]
    
        ,[SettlCurrAmt]
    
        ,[SettlCurrency]
    
        ,[AccruedInterestAmt]
    
        ,[Yield]
    
        ,[QuoteStatus]
    
        ,[QuoteType]
    
        ,[DeliveryType]
    
        ,[AccruedInterestTotalAmt]
    
        ,[DirtyPrice]
    
        ,[MarketIndicator]
    
        ,[TransType]
    
        ,[TradeCashAmt]
    
        ,[ClearingMethod]
    
        ) VALUES (
        '0',
        'S'
        
                ,'f86aba9d-7293-4031-aed2-8e25355e512c'
            
                ,'
            <Quote><Header><BeginString>IMIX.2.0</BeginString><BodyLength>743</BodyLength><MsgSeqNum>110</MsgSeqNum><MsgType>S</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170908 05:42:47.142</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><Qty>10000000</Qty><Price>99.0000</Price><SecurityID>100002</SecurityID><Side>1</Side><Symbol>10附息国债02</Symbol><TransactTime>20170908 13:42:46.942</TransactTime><ValidUntilTime>20170908 19:20:00.000</ValidUntilTime><SettlType>2</SettlType><SettlDate>20170911</SettlDate><ID>201709080420000076</ID><SettlCurrAmt>9935418.48</SettlCurrAmt><SettlCurrency>CNY</SettlCurrency><AccruedInterestAmt>0.35418</AccruedInterestAmt><SecurityType>CBT</SecurityType><YieldType>MATURITY</YieldType><Yield>3.8697</Yield><QuoteStatus>16</QuoteStatus><QuoteType>1</QuoteType><DeliveryType>0</DeliveryType><AccruedInterestTotalAmt>35418.48</AccruedInterestTotalAmt><DirtyPrice>99.3542</DirtyPrice><MarketIndicator>4</MarketIndicator><TransType>N</TransType><TradeCashAmt>9900000.00</TradeCashAmt><ClearingMethod>13</ClearingMethod></Master><Slave><Parties><Party><PartyID>888888888888888888888</PartyID><PartyRole>101</PartyRole><FirmFullChineseName>恒天基金</FirmFullChineseName><TRADER_CODE>htjjdealerahhy</TRADER_CODE><TraderName>安徽海益测试对手方</TraderName></Party><Party><PartyID>545454545454545454541</PartyID><PartyRole>102</PartyRole><FirmFullChineseName>安徽海益信息科技有限责任公司</FirmFullChineseName><TRADER_CODE>yaolei</TRADER_CODE><TraderName>yaolei</TraderName></Party></Parties></Slave></Quote>'
            
        ,'10000000'
    
        ,'99.0000'
    
        ,'100002'
    
        ,'1'
    
        ,'10附息国债02'
    
        ,'20170908 13:42:46.942'
    
        ,'20170908 19:20:00.000'
    
        ,'2'
    
        ,'20170911'
    
        ,'201709080420000076'
    
        ,'9935418.48'
    
        ,'CNY'
    
        ,'0.35418'
    
        ,'3.8697'
    
        ,'16'
    
        ,'1'
    
        ,'0'
    
        ,'35418.48'
    
        ,'99.3542'
    
        ,'4'
    
        ,'N'
    
        ,'9900000.00'
    
        ,'13'
    
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        ,[PartyID]
    
        ,[PartyRole]
    
        ,[FirmFullChineseName]
    
        ,[TraderName]
    
            ) VALUES
            (
            'f86aba9d-7293-4031-aed2-8e25355e512c'
            
        ,'888888888888888888888'
    
        ,'101'
    
        ,'恒天基金'
    
        ,'安徽海益测试对手方'
    
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        ,[PartyID]
    
        ,[PartyRole]
    
        ,[FirmFullChineseName]
    
        ,[TraderName]
    
            ) VALUES
            (
            'f86aba9d-7293-4031-aed2-8e25355e512c'
            
        ,'545454545454545454541'
    
        ,'102'
    
        ,'安徽海益信息科技有限责任公司'
    
        ,'yaolei'
    
            );
        