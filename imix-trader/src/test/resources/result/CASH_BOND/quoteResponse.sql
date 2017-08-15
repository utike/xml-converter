
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [Qty]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
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
            
                ,[TradeCashAmt]
            
                ,[ClearingMethod]
            
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[SysStatus]
        ) VALUES (
        
                '10000000'
            
                ,'99.0000'
            
                ,'160206'
            
                ,'2'
            
                ,'20170810 13:48:16.525'
            
                ,'20170810 19:30:00.000'
            
                ,'1'
            
                ,'20170810'
            
                ,'201708100420000012'
            
                ,'10040295.89'
            
                ,'CNY'
            
                ,'1.40296'
            
                ,'3.2612'
            
                ,'16'
            
                ,'1'
            
                ,'0'
            
                ,'140295.89'
            
                ,'100.4030'
            
                ,'4'
            
                ,'9900000.00'
            
                ,'13'
            
                ,'7e5fa6e3-d677-41cd-b156-67817a8e5a84'
            
                ,'
            <Quote><Header><BeginString>IMIX.2.0</BeginString><BodyLength>705</BodyLength><MsgSeqNum>154</MsgSeqNum><MsgType>AJ</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170810 05:48:16.811</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><Qty>10000000</Qty><Price>99.0000</Price><SecurityID>160206</SecurityID><Side>2</Side><TransactTime>20170810 13:48:16.525</TransactTime><ValidUntilTime>20170810 19:30:00.000</ValidUntilTime><SettlType>1</SettlType><SettlDate>20170810</SettlDate><ID>201708100420000012</ID><SettlCurrAmt>10040295.89</SettlCurrAmt><SettlCurrency>CNY</SettlCurrency><AccruedInterestAmt>1.40296</AccruedInterestAmt><SecurityType>CBT</SecurityType><Yield>3.2612</Yield><QuoteStatus>16</QuoteStatus><QuoteType>1</QuoteType><QuoteRespType>2</QuoteRespType><DeliveryType>0</DeliveryType><AccruedInterestTotalAmt>140295.89</AccruedInterestTotalAmt><DirtyPrice>100.4030</DirtyPrice><MarketIndicator>4</MarketIndicator><TradeCashAmt>9900000.00</TradeCashAmt><ClearingMethod>13</ClearingMethod></Master><Slave><Parties><Party><PartyID>888888888888888888888</PartyID><PartyRole>101</PartyRole><FirmFullChineseName>恒天基金</FirmFullChineseName><TraderCode>htjjdealerahhy</TraderCode><TraderName>安徽海益测试对手方</TraderName></Party><Party><PartyID>545454545454545454541</PartyID><PartyRole>102</PartyRole><FirmFullChineseName>安徽海益信息科技有限责任公司</FirmFullChineseName><TraderName>yaolei</TraderName></Party></Parties></Slave></Quote>'
            
        ,0
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[FirmFullChineseName]
            
                ,[TraderCode]
            
                ,[TraderName]
            
            ,[FkID]
            ) VALUES
            (
            
                '888888888888888888888'
            
                ,'101'
            
                ,'恒天基金'
            
                ,'htjjdealerahhy'
            
                ,'安徽海益测试对手方'
            
            ,'7e5fa6e3-d677-41cd-b156-67817a8e5a84'
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[FirmFullChineseName]
            
                ,[TraderName]
            
            ,[FkID]
            ) VALUES
            (
            
                '545454545454545454541'
            
                ,'102'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'yaolei'
            
            ,'7e5fa6e3-d677-41cd-b156-67817a8e5a84'
            );
        