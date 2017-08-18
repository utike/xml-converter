
        INSERT INTO [dbo].[cfets_quotes]
        (
        [SysStatus]
        ,[MsgType]
        
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[Price]
    
        ,[SecurityID]
    
        ,[Side]
    
        ,[TransactTime]
    
        ,[ValidUntilTime]
    
        ,[SettlType]
    
        ,[SettlDate]
    
        ,[ID]
    
        ,[SettlCurrency]
    
        ,[SettlDate2]
    
        ,[QuoteType]
    
        ,[DeliveryType]
    
        ,[CashHoldingDays]
    
        ,[DeliveryType2]
    
        ,[MarketIndicator]
    
        ,[SettlCurrAmt2]
    
        ,[TradeCashAmt]
    
        ,[TradeLimitDays]
    
        ,[ClearingMethod]
    
        ,[RepoMethod]
    
        ) VALUES (
        '0',
        'AJ'
        
                ,'97c97102-272a-4f18-aed6-14962eecc523'
            
                ,'<Quote><Header><BeginString>IMIX.2.0</BeginString><BodyLength>830</BodyLength><MsgSeqNum>91</MsgSeqNum><MsgType>AJ</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170818 05:24:52.089</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><Price>2.6000</Price><SecurityID>R007</SecurityID><Side>1</Side><TransactTime>20170818 13:24:51.939</TransactTime><ValidUntilTime>20170818 19:20:00.000</ValidUntilTime><SettlType>1</SettlType><SettlDate>20170818</SettlDate><ID>201708180920000020</ID><SettlCurrency>CNY</SettlCurrency><SecurityType>CR</SecurityType><SettlDate2>20170821</SettlDate2><QuoteType>1</QuoteType><QuoteRespType>2</QuoteRespType><NoUnderlyings>2</NoUnderlyings><DeliveryType>0</DeliveryType><CashHoldingDays>3</CashHoldingDays><DeliveryType2>0</DeliveryType2><MarketIndicator>9</MarketIndicator><SettlCurrAmt2>50010684.93</SettlCurrAmt2><TradeCashAmt>50000000.00</TradeCashAmt><TradeLimitDays>3</TradeLimitDays><ClearingMethod>13</ClearingMethod><RepoMethod>1</RepoMethod></Master><Slave><Parties><Party><PartyID>888888888888888888888</PartyID><PartyRole>101</PartyRole><FirmFullChineseName>恒天基金</FirmFullChineseName><TraderCode>htjjdealerahhy</TraderCode><TraderName>安徽海益测试对手方</TraderName></Party><Party><PartyID>545454545454545454541</PartyID><PartyRole>102</PartyRole><FirmFullChineseName>安徽海益信息科技有限责任公司</FirmFullChineseName><TraderName>yaolei</TraderName></Party></Parties><NoUnderlyings><NoUnderlying><Symbol>16国开07</Symbol><Qty>30000000</Qty><SecurityID>160207</SecurityID><Haircut>100.0000</Haircut></NoUnderlying><NoUnderlying><Symbol>16国开06</Symbol><Qty>20000000</Qty><SecurityID>160206</SecurityID><Haircut>100.0000</Haircut></NoUnderlying></NoUnderlyings></Slave></Quote>'
            
        ,'2.6000'
    
        ,'R007'
    
        ,'1'
    
        ,'20170818 13:24:51.939'
    
        ,'20170818 19:20:00.000'
    
        ,'1'
    
        ,'20170818'
    
        ,'201708180920000020'
    
        ,'CNY'
    
        ,'20170821'
    
        ,'1'
    
        ,'0'
    
        ,'3'
    
        ,'0'
    
        ,'9'
    
        ,'50010684.93'
    
        ,'50000000.00'
    
        ,'3'
    
        ,'13'
    
        ,'1'
    
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        ,[PartyID]
    
        ,[PartyRole]
    
        ,[FirmFullChineseName]
    
        ,[TraderCode]
    
        ,[TraderName]
    
            ) VALUES
            (
            '97c97102-272a-4f18-aed6-14962eecc523'
            
        ,'888888888888888888888'
    
        ,'101'
    
        ,'恒天基金'
    
        ,'htjjdealerahhy'
    
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
            '97c97102-272a-4f18-aed6-14962eecc523'
            
        ,'545454545454545454541'
    
        ,'102'
    
        ,'安徽海益信息科技有限责任公司'
    
        ,'yaolei'
    
            );
        
            INSERT INTO [dbo].[details_underlyings]
            (
            [FkID]
            
        ,[Symbol]
    
        ,[Qty]
    
        ,[SecurityID]
    
            ) VALUES
            (
            '97c97102-272a-4f18-aed6-14962eecc523'
            
        ,'16国开07'
    
        ,'30000000'
    
        ,'160207'
    
            );
        
            INSERT INTO [dbo].[details_underlyings]
            (
            [FkID]
            
        ,[Symbol]
    
        ,[Qty]
    
        ,[SecurityID]
    
            ) VALUES
            (
            '97c97102-272a-4f18-aed6-14962eecc523'
            
        ,'16国开06'
    
        ,'20000000'
    
        ,'160206'
    
            );
        