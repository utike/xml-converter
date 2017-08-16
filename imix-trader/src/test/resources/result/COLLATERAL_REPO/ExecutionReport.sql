
        INSERT INTO [dbo].[cfets_orders]
        (
        [SysStatus]
        
                ,[SysID]
            
                ,[SysOriMsg]
            
        
            
                
            
            
                ,[ExecID]
            
        
    
        
            
                
            
            
                ,[LastQty]
            
        
    
        
            
                
            
            
                ,[Price]
            
        
    
        
            
                
            
            
                ,[SecurityID]
            
        
    
        
            
                
            
            
                ,[Side]
            
        
    
        
            
                
            
            
                ,[TransactTime]
            
        
    
        
            
                
            
            
                ,[SettlType]
            
        
    
        
            
                
            
            
                ,[SettlDate]
            
        
    
        
            
                
            
            
                ,[TradeDate]
            
        
    
        
            
                
            
            
                ,[QuoteID]
            
        
    
        
            
                
            
            
                ,[SettlCurrAmt]
            
        
    
        
            
                
            
            
                ,[SettlCurrency]
            
        
    
        
            
                
            
            
                ,[ExecType]
            
        
    
        
            
                
            
            
                ,[AccruedInterestAmt]
            
        
    
        
            
                
            
            
                ,[Yield2]
            
        
    
        
            
                
            
            
                ,[TradeCashAmt]
            
        
    
        
            
                
            
            
                ,[DeliveryType]
            
        
    
        
            
                
            
            
                ,[AccruedInterestTotalAmt]
            
        
    
        
            
                
            
            
                ,[ContingencyIndicator]
            
        
    
        
            
                
            
            
                ,[DirtyPrice]
            
        
    
        
            
                
            
            
                ,[MarketIndicator]
            
        
    
        
            
                
            
            
                ,[TradeMethod]
            
        
    
        
            
                
            
            
                ,[TradeTime]
            
        
    
        
            
                
            
            
                ,[TradeType]
            
        
    
        
            
                
            
            
                ,[ClearingMethod]
            
        
    
        ) VALUES (
        0
        
                ,'a08fb408-d433-4334-8d71-3519f280e4d3'
            
                ,'<Order><Header><BeginString>IMIX.2.0</BeginString><BodyLength>1018</BodyLength><MsgSeqNum>18</MsgSeqNum><MsgType>8</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170710 06:45:21.122</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><ExecID>CBT20170710000019</ExecID><LastQty>10000000</LastQty><Price>99.0000</Price><SecurityID>1080001</SecurityID><Side>2</Side><TransactTime>20170710 14:45:20.860</TransactTime><SettlType>2</SettlType><SettlDate>20170711</SettlDate><TradeDate>20170710</TradeDate><QuoteID>201707100420000017</QuoteID><SettlCurrAmt>10136931.51</SettlCurrAmt><SettlCurrency>CNY</SettlCurrency><ExecType>F</ExecType><AccruedInterestAmt>2.36932</AccruedInterestAmt><Yield2>5.1242</Yield2><TradeCashAmt>9900000.00</TradeCashAmt><DeliveryType>0</DeliveryType><AccruedInterestTotalAmt>236931.51</AccruedInterestTotalAmt><ContingencyIndicator>N</ContingencyIndicator><DirtyPrice>101.3693</DirtyPrice><MarketIndicator>4</MarketIndicator><TradeMethod>1</TradeMethod><TradeTime>14:45:20.860</TradeTime><TradeType>1</TradeType><ClearingMethod>13</ClearingMethod></Master><Slave><Parties><Party><PartyID>888888888888888888888</PartyID><PartyRole>119</PartyRole><FirmFullChineseName>恒天基金</FirmFullChineseName><FirmShortChineseName>恒天基金</FirmShortChineseName><TraderName>安徽海益测试对手方</TraderName><CustodianInstitutionName>国债登记结算公司</CustodianInstitutionName><SecuritiesAccNumber>A654321</SecuritiesAccNumber><SettlementBankName>1111</SettlementBankName><CashAccountNumber>654321</CashAccountNumber></Party><Party><PartyID>545454545454545454541</PartyID><PartyRole>120</PartyRole><FirmFullChineseName>安徽海益信息科技有限责任公司</FirmFullChineseName><FirmShortChineseName>安徽海益信息</FirmShortChineseName><TraderName>yaolei</TraderName><CustodianInstitutionName>国债登记结算公司</CustodianInstitutionName><SecuritiesAccNumber>125235454</SecuritiesAccNumber><SettlementBankName>安徽海益信息科技有限公司</SettlementBankName><CashAccountNumber>123131</CashAccountNumber></Party></Parties></Slave></Order>'
            
        
            
                
            
            
                ,'CBT20170710000019'
            
        
    
        
            
                
            
            
                ,'10000000'
            
        
    
        
            
                
            
            
                ,'99.0000'
            
        
    
        
            
                
            
            
                ,'1080001'
            
        
    
        
            
                
            
            
                ,'2'
            
        
    
        
            
                
            
            
                ,'20170710 14:45:20.860'
            
        
    
        
            
                
            
            
                ,'2'
            
        
    
        
            
                
            
            
                ,'20170711'
            
        
    
        
            
                
            
            
                ,'20170710'
            
        
    
        
            
                
            
            
                ,'201707100420000017'
            
        
    
        
            
                
            
            
                ,'10136931.51'
            
        
    
        
            
                
            
            
                ,'CNY'
            
        
    
        
            
                
            
            
                ,'F'
            
        
    
        
            
                
            
            
                ,'2.36932'
            
        
    
        
            
                
            
            
                ,'5.1242'
            
        
    
        
            
                
            
            
                ,'9900000.00'
            
        
    
        
            
                
            
            
                ,'0'
            
        
    
        
            
                
            
            
                ,'236931.51'
            
        
    
        
            
                
            
            
                ,'N'
            
        
    
        
            
                
            
            
                ,'101.3693'
            
        
    
        
            
                
            
            
                ,'4'
            
        
    
        
            
                
            
            
                ,'1'
            
        
    
        
            
                
            
            
                ,'14:45:20.860'
            
        
    
        
            
                
            
            
                ,'1'
            
        
    
        
            
                
            
            
                ,'13'
            
        
    
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        
            
                
            
            
                ,[PartyID]
            
        
    
        
            
                
            
            
                ,[PartyRole]
            
        
    
        
            
                
            
            
                ,[FirmFullChineseName]
            
        
    
        
            
                
            
            
                ,[FirmShortChineseName]
            
        
    
        
            
                
            
            
                ,[TraderName]
            
        
    
        
            
                
            
            
                ,[CustodianInstitutionName]
            
        
    
        
            
                
            
            
                ,[SecuritiesAccNumber]
            
        
    
        
            
                
            
            
                ,[SettlementBankName]
            
        
    
        
            
                
            
            
                ,[CashAccountNumber]
            
        
    
            ) VALUES
            (
            'a08fb408-d433-4334-8d71-3519f280e4d3'
            
        
            
                
            
            
                ,'888888888888888888888'
            
        
    
        
            
                
            
            
                ,'119'
            
        
    
        
            
                
            
            
                ,'恒天基金'
            
        
    
        
            
                
            
            
                ,'恒天基金'
            
        
    
        
            
                
            
            
                ,'安徽海益测试对手方'
            
        
    
        
            
                
            
            
                ,'国债登记结算公司'
            
        
    
        
            
                
            
            
                ,'A654321'
            
        
    
        
            
                
            
            
                ,'1111'
            
        
    
        
            
                
            
            
                ,'654321'
            
        
    
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        
            
                
            
            
                ,[PartyID]
            
        
    
        
            
                
            
            
                ,[PartyRole]
            
        
    
        
            
                
            
            
                ,[FirmFullChineseName]
            
        
    
        
            
                
            
            
                ,[FirmShortChineseName]
            
        
    
        
            
                
            
            
                ,[TraderName]
            
        
    
        
            
                
            
            
                ,[CustodianInstitutionName]
            
        
    
        
            
                
            
            
                ,[SecuritiesAccNumber]
            
        
    
        
            
                
            
            
                ,[SettlementBankName]
            
        
    
        
            
                
            
            
                ,[CashAccountNumber]
            
        
    
            ) VALUES
            (
            'a08fb408-d433-4334-8d71-3519f280e4d3'
            
        
            
                
            
            
                ,'545454545454545454541'
            
        
    
        
            
                
            
            
                ,'120'
            
        
    
        
            
                
            
            
                ,'安徽海益信息科技有限责任公司'
            
        
    
        
            
                
            
            
                ,'安徽海益信息'
            
        
    
        
            
                
            
            
                ,'yaolei'
            
        
    
        
            
                
            
            
                ,'国债登记结算公司'
            
        
    
        
            
                
            
            
                ,'125235454'
            
        
    
        
            
                
            
            
                ,'安徽海益信息科技有限公司'
            
        
    
        
            
                
            
            
                ,'123131'
            
        
    
            );
        