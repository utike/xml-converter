
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
        
                ,'asdfasdfasdfa'
            
                ,'
            <Order><Header><BeginString>IMIX.2.0</BeginString><BodyLength>1033</BodyLength><MsgSeqNum>576</MsgSeqNum><MsgType>8</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170823 05:58:49.809</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><ExecID>CBT20170823000015</ExecID><LastQty>20000000</LastQty><Price>99.9000</Price><SecurityID>160206</SecurityID><Side>1</Side><TransactTime>20170823 13:58:49.529</TransactTime><SettlType>1</SettlType><SettlDate>20170823</SettlDate><TradeDate>20170823</TradeDate><QuoteID>201708230460000005</QuoteID><SettlCurrAmt>20281676.71</SettlCurrAmt><SettlCurrency>CNY</SettlCurrency><ExecType>F</ExecType><LeavesQty>0</LeavesQty><AccruedInterestAmt>1.50838</AccruedInterestAmt><Yield2>2.9873</Yield2><TradeCashAmt>19980000.00</TradeCashAmt><QuoteType>102</QuoteType><DeliveryType>0</DeliveryType><AccruedInterestTotalAmt>301676.71</AccruedInterestTotalAmt><ContingencyIndicator>N</ContingencyIndicator><DirtyPrice>101.4084</DirtyPrice><MarketIndicator>4</MarketIndicator><TradeMethod>5</TradeMethod><TradeTime>13:58:49.529</TradeTime><TradeType>1</TradeType><ClearingMethod>13</ClearingMethod></Master><Slave><Parties><Party><PartyID>545454545454545454541</PartyID><PartyRole>119</PartyRole><TraderName>yaolei</TraderName><SettlementBankName>安徽海益信息科技有限公司</SettlementBankName><CashAccountNumber>123131</CashAccountNumber><SecuritiesAccNumber>125235454</SecuritiesAccNumber><FirmFullChineseName>安徽海益信息科技有限责任公司</FirmFullChineseName><FirmShortChineseName>安徽海益信息</FirmShortChineseName><CustodianInstitutionName>国债登记结算公司</CustodianInstitutionName></Party><Party><PartyID>888888888888888888888</PartyID><PartyRole>120</PartyRole><TraderName>安徽海益测试对手方</TraderName><SettlementBankName>1111</SettlementBankName><CashAccountNumber>654321</CashAccountNumber><SecuritiesAccNumber>A654321</SecuritiesAccNumber><FirmFullChineseName>恒天基金</FirmFullChineseName><FirmShortChineseName>恒天基金</FirmShortChineseName><CustodianInstitutionName>国债登记结算公司</CustodianInstitutionName></Party></Parties></Slave></Order>'
            
        ,'CBT20170823000015'
    
        ,'20000000'
    
        ,'99.9000'
    
        ,'160206'
    
        ,'1'
    
        ,'20170823 13:58:49.529'
    
        ,'1'
    
        ,'20170823'
    
        ,'20170823'
    
        ,'201708230460000005'
    
        ,'20281676.71'
    
        ,'CNY'
    
        ,'F'
    
        ,'1.50838'
    
        ,'2.9873'
    
        ,'19980000.00'
    
        ,'0'
    
        ,'301676.71'
    
        ,'N'
    
        ,'101.4084'
    
        ,'4'
    
        ,'5'
    
        ,'13:58:49.529'
    
        ,'1'
    
        ,'13'
    
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        ,[PartyID]
    
        ,[PartyRole]
    
        ,[TraderName]
    
        ,[SettlementBankName]
    
        ,[CashAccountNumber]
    
        ,[SecuritiesAccNumber]
    
        ,[FirmFullChineseName]
    
        ,[FirmShortChineseName]
    
        ,[CustodianInstitutionName]
    
            ) VALUES
            (
            'asdfasdfasdfa'
            
        ,'545454545454545454541'
    
        ,'119'
    
        ,'yaolei'
    
        ,'安徽海益信息科技有限公司'
    
        ,'123131'
    
        ,'125235454'
    
        ,'安徽海益信息科技有限责任公司'
    
        ,'安徽海益信息'
    
        ,'国债登记结算公司'
    
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        ,[PartyID]
    
        ,[PartyRole]
    
        ,[TraderName]
    
        ,[SettlementBankName]
    
        ,[CashAccountNumber]
    
        ,[SecuritiesAccNumber]
    
        ,[FirmFullChineseName]
    
        ,[FirmShortChineseName]
    
        ,[CustodianInstitutionName]
    
            ) VALUES
            (
            'asdfasdfasdfa'
            
        ,'888888888888888888888'
    
        ,'120'
    
        ,'安徽海益测试对手方'
    
        ,'1111'
    
        ,'654321'
    
        ,'A654321'
    
        ,'恒天基金'
    
        ,'恒天基金'
    
        ,'国债登记结算公司'
    
            );
        