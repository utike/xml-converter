
        INSERT INTO [dbo].[cfets_quotes]
        (
        [SysStatus]
        ,[MsgType]
        
                ,[SysID]
            
                ,[SysOriMsg]
            
        
            
                
            
            
                ,[LastQty]
            
        
    
        
            
                
            
            
                ,[Price]
            
        
    
        
            
                
            
            
                ,[SecurityID]
            
        
    
        
            
                
            
            
                ,[Side]
            
        
    
        
            
                
            
            
                ,[TransactTime]
            
        
    
        
            
                
            
            
                ,[SettlType]
            
        
    
        
            
                
            
            
                ,[SettlDate]
            
        
    
        
            
                
            
            
                ,[ID]
            
        
    
        
            
                
            
            
                ,[SettlCurrAmt]
            
        
    
        
            
                
            
            
                ,[SettlCurrency]
            
        
    
        
            
                
            
            
                ,[TransType]
            
        
    
        
            
                
            
            
                ,[AccruedInterestAmt]
            
        
    
        
            
                
            
            
                ,[Yield]
            
        
    
        
            
                
            
            
                ,[DeliveryType]
            
        
    
        
            
                
            
            
                ,[AccruedInterestTotalAmt]
            
        
    
        
            
                
            
            
                ,[ContingencyIndicator]
            
        
    
        
            
                
            
            
                ,[DirtyPrice]
            
        
    
        
            
                
            
            
                ,[MarketIndicator]
            
        
    
        
            
                
            
            
                ,[TradeType]
            
        
    
        
            
                
            
            
                ,[ClearingMethod]
            
        
    
        
            
                
            
            
                ,[QuoteStatus]
            
        
    
        ) VALUES (
        '0',
        'FINAL'
        
                ,'aff7cca7-e37d-49ca-87ae-2d1932b7565d'
            
                ,'<Quote><Header><BeginString>IMIX.2.0</BeginString><BodyLength>1018</BodyLength><MsgSeqNum>18</MsgSeqNum><MsgType>FINAL</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170710 06:45:21.122</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><ExecID>CBT20170710000019</ExecID><LastQty>10000000</LastQty><Price>99.0000</Price><SecurityID>1080001</SecurityID><Side>2</Side><TransactTime>20170710 14:45:20.860</TransactTime><SettlType>2</SettlType><SettlDate>20170711</SettlDate><TradeDate>20170710</TradeDate><ID>201707100420000017</ID><SettlCurrAmt>10136931.51</SettlCurrAmt><SettlCurrency>CNY</SettlCurrency><TransType>F</TransType><AccruedInterestAmt>2.36932</AccruedInterestAmt><SecurityType>CBT</SecurityType><Yield>5.1242</Yield><GrossTradeAmt>9900000.00</GrossTradeAmt><DeliveryType>0</DeliveryType><AccruedInterestTotalAmt>236931.51</AccruedInterestTotalAmt><ContingencyIndicator>N</ContingencyIndicator><DirtyPrice>101.3693</DirtyPrice><MarketIndicator>4</MarketIndicator><TradeMethod>1</TradeMethod><TradeTime>14:45:20.860</TradeTime><TradeType>1</TradeType><ClearingMethod>13</ClearingMethod><QuoteStatus>107</QuoteStatus></Master><Slave><Parties><Party><PartyID>888888888888888888888</PartyID><PartyRole>119</PartyRole><FirmFullChineseName>恒天基金</FirmFullChineseName><FirmShortChineseName>恒天基金</FirmShortChineseName><TraderName>安徽海益测试对手方</TraderName><CustodianInstitutionName>国债登记结算公司</CustodianInstitutionName><SecuritiesAccNumber>A654321</SecuritiesAccNumber><SettlementBankName>1111</SettlementBankName><CashAccountNumber>654321</CashAccountNumber></Party><Party><PartyID>545454545454545454541</PartyID><PartyRole>120</PartyRole><FirmFullChineseName>安徽海益信息科技有限责任公司</FirmFullChineseName><FirmShortChineseName>安徽海益信息</FirmShortChineseName><TraderName>yaolei</TraderName><CustodianInstitutionName>国债登记结算公司</CustodianInstitutionName><SecuritiesAccNumber>125235454</SecuritiesAccNumber><SettlementBankName>安徽海益信息科技有限公司</SettlementBankName><CashAccountNumber>123131</CashAccountNumber></Party></Parties></Slave></Quote>'
            
        
            
                
            
            
                ,'10000000'
            
        
    
        
            
                
            
            
                ,'99.0000'
            
        
    
        
            
                
            
            
                ,'1080001'
            
        
    
        
            
                
            
            
                ,'2'
            
        
    
        
            
                
            
            
                ,'20170710 14:45:20.860'
            
        
    
        
            
                
            
            
                ,'2'
            
        
    
        
            
                
            
            
                ,'20170711'
            
        
    
        
            
                
            
            
                ,'201707100420000017'
            
        
    
        
            
                
            
            
                ,'10136931.51'
            
        
    
        
            
                
            
            
                ,'CNY'
            
        
    
        
            
                
            
            
                ,'F'
            
        
    
        
            
                
            
            
                ,'2.36932'
            
        
    
        
            
                
            
            
                ,'5.1242'
            
        
    
        
            
                
            
            
                ,'0'
            
        
    
        
            
                
            
            
                ,'236931.51'
            
        
    
        
            
                
            
            
                ,'N'
            
        
    
        
            
                
            
            
                ,'101.3693'
            
        
    
        
            
                
            
            
                ,'4'
            
        
    
        
            
                
            
            
                ,'1'
            
        
    
        
            
                
            
            
                ,'13'
            
        
    
        
            
                
            
            
                ,'107'
            
        
    
        );
    