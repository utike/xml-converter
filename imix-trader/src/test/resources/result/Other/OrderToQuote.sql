
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
            
        
    
        
            
                
            
            
                ,[TransactTime]
            
        
    
        
            
                
            
            
                ,[SettlType]
            
        
    
        
            
                
            
            
                ,[SettlDate]
            
        
    
        
            
                
            
            
                ,[SettlCurrAmt]
            
        
    
        
            
                
            
            
                ,[SettlCurrency]
            
        
    
        
            
                
            
            
                ,[AccruedInterestAmt]
            
        
    
        
            
                
            
            
                ,[Yield2]
            
        
    
        
            
                
            
            
                ,[TradeCashAmt]
            
        
    
        
            
                
            
            
                ,[DeliveryType]
            
        
    
        
            
                
            
            
                ,[AccruedInterestTotalAmt]
            
        
    
        
            
                
            
            
                ,[ContingencyIndicator]
            
        
    
        
            
                
            
            
                ,[DirtyPrice]
            
        
    
        
            
                
            
            
                ,[MarketIndicator]
            
        
    
        
            
                
            
            
                ,[TradeMethod]
            
        
    
        
            
                
            
            
                ,[TradeType]
            
        
    
        
            
                
            
            
                ,[ClearingMethod]
            
        
    
        
            
                
            
            
                ,[QuoteStatus]
            
        
    
        ) VALUES (
        '0',
        'FINAL'
        
                ,'fbd1e392-ba3f-4b12-8656-4bb1b11b20a7'
            
                ,'<Quote><Header><BeginString>IMIX.2.0</BeginString><BodyLength>1018</BodyLength><MsgSeqNum>18</MsgSeqNum><MsgType>FINAL</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170710 06:45:21.122</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><Qty>10000000</Qty><Price>99.0000</Price><SecurityID>1080001</SecurityID><Side>2</Side><TransactTime>20170710 14:45:20.860</TransactTime><SettlType>2</SettlType><SettlDate>20170711</SettlDate><TradeDate>20170710</TradeDate><QuoteID>201707100420000017</QuoteID><SettlCurrAmt>10136931.51</SettlCurrAmt><SettlCurrency>CNY</SettlCurrency><ExecType>F</ExecType><AccruedInterestAmt>2.36932</AccruedInterestAmt><SecurityType>CBT</SecurityType><Yield2>5.1242</Yield2><TradeCashAmt>9900000.00</TradeCashAmt><DeliveryType>0</DeliveryType><AccruedInterestTotalAmt>236931.51</AccruedInterestTotalAmt><ContingencyIndicator>N</ContingencyIndicator><DirtyPrice>101.3693</DirtyPrice><MarketIndicator>4</MarketIndicator><TradeMethod>1</TradeMethod><TradeTime>14:45:20.860</TradeTime><TradeType>1</TradeType><ClearingMethod>13</ClearingMethod><QuoteStatus>107</QuoteStatus></Master><Slave><Parties><Party><PartyID>888888888888888888888</PartyID><PartyRole>119</PartyRole><FirmFullChineseName>恒天基金</FirmFullChineseName><FirmShortChineseName>恒天基金</FirmShortChineseName><TraderName>安徽海益测试对手方</TraderName><CustodianInstitutionName>国债登记结算公司</CustodianInstitutionName><SecuritiesAccNumber>A654321</SecuritiesAccNumber><SettlementBankName>1111</SettlementBankName><CashAccountNumber>654321</CashAccountNumber></Party><Party><PartyID>545454545454545454541</PartyID><PartyRole>120</PartyRole><FirmFullChineseName>安徽海益信息科技有限责任公司</FirmFullChineseName><FirmShortChineseName>安徽海益信息</FirmShortChineseName><TraderName>yaolei</TraderName><CustodianInstitutionName>国债登记结算公司</CustodianInstitutionName><SecuritiesAccNumber>125235454</SecuritiesAccNumber><SettlementBankName>安徽海益信息科技有限公司</SettlementBankName><CashAccountNumber>123131</CashAccountNumber></Party></Parties></Slave></Quote>'
            
        
            
                
            
            
                ,'10000000'
            
        
    
        
            
                
            
            
                ,'99.0000'
            
        
    
        
            
                
            
            
                ,'1080001'
            
        
    
        
            
                
            
            
                ,'2'
            
        
    
        
            
                
            
            
                ,'20170710 14:45:20.860'
            
        
    
        
            
                
            
            
                ,'2'
            
        
    
        
            
                
            
            
                ,'20170711'
            
        
    
        
            
                
            
            
                ,'10136931.51'
            
        
    
        
            
                
            
            
                ,'CNY'
            
        
    
        
            
                
            
            
                ,'2.36932'
            
        
    
        
            
                
            
            
                ,'5.1242'
            
        
    
        
            
                
            
            
                ,'9900000.00'
            
        
    
        
            
                
            
            
                ,'0'
            
        
    
        
            
                
            
            
                ,'236931.51'
            
        
    
        
            
                
            
            
                ,'N'
            
        
    
        
            
                
            
            
                ,'101.3693'
            
        
    
        
            
                
            
            
                ,'4'
            
        
    
        
            
                
            
            
                ,'1'
            
        
    
        
            
                
            
            
                ,'1'
            
        
    
        
            
                
            
            
                ,'13'
            
        
    
        
            
                
            
            
                ,'107'
            
        
    
        );
    