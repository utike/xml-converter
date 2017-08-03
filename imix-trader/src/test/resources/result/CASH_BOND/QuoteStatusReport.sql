
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[Qty]
            
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
            
                ,[TransType]
            
                ,[TradeCashAmt]
            
                ,[ClearingMethod]
            
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[SysStatus]
        ) VALUES (
        
                'ODahhytrd000000001'
            
                ,'10000000'
            
                ,'99.0000'
            
                ,'1080001'
            
                ,'1'
            
                ,'20170710 14:25:15.547'
            
                ,'20170710 19:20:00.000'
            
                ,'1'
            
                ,'20170710'
            
                ,'201707100420000016'
            
                ,'10135643.84'
            
                ,'CNY'
            
                ,'2.35644'
            
                ,'5.1237'
            
                ,'16'
            
                ,'1'
            
                ,'0'
            
                ,'235643.84'
            
                ,'101.3564'
            
                ,'4'
            
                ,'N'
            
                ,'9900000.00'
            
                ,'13'
            
                ,'fe90f5a5-10cc-4a32-b9c7-ba284e89937d'
            
                ,'<Quote><Header><BeginString>IMIX.2.0</BeginString><BodyLength>886</BodyLength><MsgSeqNum>3</MsgSeqNum><MsgType>AI</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170710 06:25:15.609</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><ClOrdID>ODahhytrd000000001</ClOrdID><Qty>10000000</Qty><Price>99.0000</Price><SecurityID>1080001</SecurityID><Side>1</Side><TransactTime>20170710 14:25:15.547</TransactTime><ValidUntilTime>20170710 19:20:00.000</ValidUntilTime><SettlType>1</SettlType><SettlDate>20170710</SettlDate><ID>201707100420000016</ID><SettlCurrAmt>10135643.84</SettlCurrAmt><SettlCurrency>CNY</SettlCurrency><AccruedInterestAmt>2.35644</AccruedInterestAmt><Yield>5.1237</Yield><QuoteStatus>16</QuoteStatus><QuoteType>1</QuoteType><DeliveryType>0</DeliveryType><AccruedInterestTotalAmt>235643.84</AccruedInterestTotalAmt><DirtyPrice>101.3564</DirtyPrice><MarketIndicator>4</MarketIndicator><TransType>N</TransType><TradeCashAmt>9900000.00</TradeCashAmt><ClearingMethod>13</ClearingMethod></Master><Slave><Parties><Party><PartyID>545454545454545454541</PartyID><PartyRole>101</PartyRole><FirmFullChineseName>安徽海益信息科技有限责任公司</FirmFullChineseName><TraderCode>yaolei</TraderCode><TraderName>yaolei</TraderName><CustodianInstitutionName>国债登记结算公司</CustodianInstitutionName><SecuritiesAccNumber>125235454</SecuritiesAccNumber><SettlementBankName>安徽海益信息科技有限公司</SettlementBankName><CashAccountNumber>123131</CashAccountNumber></Party><Party><PartyID>888888888888888888888</PartyID><PartyRole>102</PartyRole><FirmFullChineseName>恒天基金</FirmFullChineseName><TraderCode>htjjdealerahhy</TraderCode><TraderName>安徽海益测试对手方</TraderName></Party></Parties></Slave></Quote>'
            
        ,0
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[FirmFullChineseName]
            
                ,[TraderCode]
            
                ,[TraderName]
            
                ,[CustodianInstitutionName]
            
                ,[SecuritiesAccNumber]
            
                ,[SettlementBankName]
            
                ,[CashAccountNumber]
            
            ,[FkID]
            ) VALUES
            (
            
                '545454545454545454541'
            
                ,'101'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'yaolei'
            
                ,'yaolei'
            
                ,'国债登记结算公司'
            
                ,'125235454'
            
                ,'安徽海益信息科技有限公司'
            
                ,'123131'
            
            ,'fe90f5a5-10cc-4a32-b9c7-ba284e89937d'
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
            
                ,'102'
            
                ,'恒天基金'
            
                ,'htjjdealerahhy'
            
                ,'安徽海益测试对手方'
            
            ,'fe90f5a5-10cc-4a32-b9c7-ba284e89937d'
            );
        