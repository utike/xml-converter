
        INSERT INTO [dbo].[cfets_quotes]
        (
        [SysStatus]
        ,[MsgType]
        
                ,[SysID]
            
                ,[SysOriMsg]
            
        
            
                
            
            
                ,[ClOrdID]
            
        
    
        
            
                
            
            
                ,[Price]
            
        
    
        
            
                
            
            
                ,[SecurityID]
            
        
    
        
            
                
            
            
                ,[Side]
            
        
    
        
            
                
            
            
                ,[TransactTime]
            
        
    
        
            
                
            
            
                ,[ValidUntilTime]
            
        
    
        
            
                
            
            
                ,[SettlType]
            
        
    
        
            
                
            
            
                ,[SettlDate]
            
        
    
        
            
                
            
            
                ,[ID]
            
        
    
        
            
                
            
            
                ,[SettlCurrency]
            
        
    
        
            
                
            
            
                ,[AccruedInterestAmt]
            
        
    
        
            
                
            
            
                ,[SettlDate2]
            
        
    
        
            
                
            
            
                ,[QuoteStatus]
            
        
    
        
            
                
            
            
                ,[QuoteType]
            
        
    
        
            
                
            
            
                ,[DeliveryType]
            
        
    
        
            
                
            
            
                ,[CashHoldingDays]
            
        
    
        
            
                
            
            
                ,[DeliveryType2]
            
        
    
        
            
                
            
            
                ,[MarketIndicator]
            
        
    
        
            
                
            
            
                ,[TransType]
            
        
    
        
            
                
            
            
                ,[SettlCurrAmt2]
            
        
    
        
            
                
            
            
                ,[TradeCashAmt]
            
        
    
        
            
                
            
            
                ,[TradeLimitDays]
            
        
    
        
            
                
            
            
                ,[ClearingMethod]
            
        
    
        ) VALUES (
        '0',
        'AI'
        
                ,'e4a48d53-25c7-4de6-b1ad-c1c9b7c0922c'
            
                ,'
            <Quote><Header><BeginString>IMIX.2.0</BeginString><BodyLength>929</BodyLength><MsgSeqNum>5</MsgSeqNum><MsgType>AI</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170717 08:28:26.212</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><ClOrdID>ODahhytrd000000001</ClOrdID><Price>0.013000000000000001</Price><SecurityID>R007</SecurityID><Side>1</Side><TransactTime>20170717 16:28:26.142</TransactTime><ValidUntilTime>20170717 19:20:00.000</ValidUntilTime><SettlType>1</SettlType><SettlDate>20170717</SettlDate><ID>201707170920000042</ID><SettlCurrency>CNY</SettlCurrency><AccruedInterestAmt>32.41096</AccruedInterestAmt><SettlDate2>20170724</SettlDate2><QuoteStatus>16</QuoteStatus><QuoteType>1</QuoteType><DeliveryType>0</DeliveryType><CashHoldingDays>7</CashHoldingDays><DeliveryType2>0</DeliveryType2><MarketIndicator>9</MarketIndicator><TransType>N</TransType><SettlCurrAmt2>130032.41</SettlCurrAmt2><TradeCashAmt>130000.00</TradeCashAmt><TradeLimitDays>7</TradeLimitDays><ClearingMethod>13</ClearingMethod></Master><Slave><Parties><Party><PartyID>545454545454545454541</PartyID><PartyRole>101</PartyRole><FirmFullChineseName>安徽海益信息科技有限责任公司</FirmFullChineseName><TraderCode>yaolei</TraderCode><TraderName>yaolei</TraderName><CustodianInstitutionName>国债登记结算公司</CustodianInstitutionName><SecuritiesAccNumber>125235454</SecuritiesAccNumber><SettlementBankName>安徽海益信息科技有限公司</SettlementBankName><CashAccountNumber>123131</CashAccountNumber></Party><Party><PartyID>888888888888888888888</PartyID><PartyRole>102</PartyRole><FirmFullChineseName>恒天基金</FirmFullChineseName><TraderCode>htjjdealerahhy</TraderCode><TraderName>安徽海益测试对手方</TraderName></Party></Parties><NoUnderlyings><NoUnderlying><Symbol>-</Symbol><Qty>10000000</Qty><SecurityID>100002</SecurityID><HAIRCUT>1.3000</HAIRCUT></NoUnderlying></NoUnderlyings></Slave></Quote>'
            
        
            
                
            
            
                ,'ODahhytrd000000001'
            
        
    
        
            
                
            
            
                ,'0.013000000000000001'
            
        
    
        
            
                
            
            
                ,'R007'
            
        
    
        
            
                
            
            
                ,'1'
            
        
    
        
            
                
            
            
                ,'20170717 16:28:26.142'
            
        
    
        
            
                
            
            
                ,'20170717 19:20:00.000'
            
        
    
        
            
                
            
            
                ,'1'
            
        
    
        
            
                
            
            
                ,'20170717'
            
        
    
        
            
                
            
            
                ,'201707170920000042'
            
        
    
        
            
                
            
            
                ,'CNY'
            
        
    
        
            
                
            
            
                ,'32.41096'
            
        
    
        
            
                
            
            
                ,'20170724'
            
        
    
        
            
                
            
            
                ,'16'
            
        
    
        
            
                
            
            
                ,'1'
            
        
    
        
            
                
            
            
                ,'0'
            
        
    
        
            
                
            
            
                ,'7'
            
        
    
        
            
                
            
            
                ,'0'
            
        
    
        
            
                
            
            
                ,'9'
            
        
    
        
            
                
            
            
                ,'N'
            
        
    
        
            
                
            
            
                ,'130032.41'
            
        
    
        
            
                
            
            
                ,'130000.00'
            
        
    
        
            
                
            
            
                ,'7'
            
        
    
        
            
                
            
            
                ,'13'
            
        
    
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        
            
                
            
            
                ,[PartyID]
            
        
    
        
            
                
            
            
                ,[PartyRole]
            
        
    
        
            
                
            
            
                ,[FirmFullChineseName]
            
        
    
        
            
                
            
            
                ,[TraderCode]
            
        
    
        
            
                
            
            
                ,[TraderName]
            
        
    
        
            
                
            
            
                ,[CustodianInstitutionName]
            
        
    
        
            
                
            
            
                ,[SecuritiesAccNumber]
            
        
    
        
            
                
            
            
                ,[SettlementBankName]
            
        
    
        
            
                
            
            
                ,[CashAccountNumber]
            
        
    
            ) VALUES
            (
            'e4a48d53-25c7-4de6-b1ad-c1c9b7c0922c'
            
        
            
                
            
            
                ,'545454545454545454541'
            
        
    
        
            
                
            
            
                ,'101'
            
        
    
        
            
                
            
            
                ,'安徽海益信息科技有限责任公司'
            
        
    
        
            
                
            
            
                ,'yaolei'
            
        
    
        
            
                
            
            
                ,'yaolei'
            
        
    
        
            
                
            
            
                ,'国债登记结算公司'
            
        
    
        
            
                
            
            
                ,'125235454'
            
        
    
        
            
                
            
            
                ,'安徽海益信息科技有限公司'
            
        
    
        
            
                
            
            
                ,'123131'
            
        
    
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
            'e4a48d53-25c7-4de6-b1ad-c1c9b7c0922c'
            
        
            
                
            
            
                ,'888888888888888888888'
            
        
    
        
            
                
            
            
                ,'102'
            
        
    
        
            
                
            
            
                ,'恒天基金'
            
        
    
        
            
                
            
            
                ,'htjjdealerahhy'
            
        
    
        
            
                
            
            
                ,'安徽海益测试对手方'
            
        
    
            );
        
            INSERT INTO [dbo].[details_underlyings]
            (
            [FkID]
            
        
            
                
            
            
                ,[Symbol]
            
        
    
        
            
                
            
            
                ,[Qty]
            
        
    
        
            
                
            
            
                ,[SecurityID]
            
        
    
            ) VALUES
            (
            'e4a48d53-25c7-4de6-b1ad-c1c9b7c0922c'
            
        
            
                
            
            
                ,'-'
            
        
    
        
            
                
            
            
                ,'10000000'
            
        
    
        
            
                
            
            
                ,'100002'
            
        
    
            );
        