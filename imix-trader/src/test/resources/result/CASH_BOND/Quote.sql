
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[ID]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[QueryRequestID]
            
                ,[MarketIndicator]
            
                ,[NegotiationCount]
            
                ,[QuoteTime]
            
                ,[ClearingMethod]
            
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[SysStatus]
        ) VALUES (
        
                'ODahhytrd000000009'
            
                ,'99.0000'
            
                ,'1080001'
            
                ,'1'
            
                ,'10华润电力01'
            
                ,'20170712 15:42:17.767'
            
                ,'201707120420000172'
            
                ,'16'
            
                ,'1'
            
                ,'QRahhytrd000000010'
            
                ,'4'
            
                ,'1'
            
                ,'20170712 15:42:17.767'
            
                ,'13'
            
                ,'68e821a8-da87-4ba2-8ae5-41783648f251'
            
                ,'<Quote><Header><BeginString>IMIX.2.0</BeginString><BodyLength>791</BodyLength><MsgSeqNum>44</MsgSeqNum><MsgType>S</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170712 07:44:11.161</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><ClOrdID>ODahhytrd000000009</ClOrdID><Price>99.0000</Price><SecurityID>1080001</SecurityID><Side>1</Side><Symbol>10华润电力01</Symbol><TransactTime>20170712 15:42:17.767</TransactTime><ID>201707120420000172</ID><QuoteStatus>16</QuoteStatus><QuoteType>1</QuoteType><QueryRequestID>QRahhytrd000000010</QueryRequestID><MarketIndicator>4</MarketIndicator><NegotiationCount>1</NegotiationCount><QuoteTime>20170712 15:42:17.767</QuoteTime><ClearingMethod>13</ClearingMethod></Master><Slave><Parties><Party><PartyID>545454545454545454541</PartyID><PartyRole>101</PartyRole><FirmFullChineseName>安徽海益信息科技有限责任公司</FirmFullChineseName><TraderCode>yaolei</TraderCode><TraderName>yaolei</TraderName><SecuritiesAccNumber>125235454</SecuritiesAccNumber><CustodianInstitutionName>国债登记结算公司</CustodianInstitutionName><CashAccountNumber>123131</CashAccountNumber><SettlementBankName>安徽海益信息科技有限公司</SettlementBankName></Party><Party><PartyID>888888888888888888888</PartyID><PartyRole>102</PartyRole><FirmFullChineseName>恒天基金</FirmFullChineseName><TraderCode>htjjdealerahhy</TraderCode><TraderName>安徽海益测试对手方</TraderName></Party></Parties></Slave></Quote>'
            
        ,0
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[FirmFullChineseName]
            
                ,[TraderCode]
            
                ,[TraderName]
            
                ,[SecuritiesAccNumber]
            
                ,[CustodianInstitutionName]
            
                ,[CashAccountNumber]
            
                ,[SettlementBankName]
            
            ,[FkID]
            ) VALUES
            (
            
                '545454545454545454541'
            
                ,'101'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'yaolei'
            
                ,'yaolei'
            
                ,'125235454'
            
                ,'国债登记结算公司'
            
                ,'123131'
            
                ,'安徽海益信息科技有限公司'
            
            ,'68e821a8-da87-4ba2-8ae5-41783648f251'
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
            
            ,'68e821a8-da87-4ba2-8ae5-41783648f251'
            );
        