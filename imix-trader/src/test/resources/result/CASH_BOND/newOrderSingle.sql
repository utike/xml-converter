
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[ID]
            
                ,[Qty]
            
                ,[QuoteStatus]
            
                ,[OrdType]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[SettlType]
            
                ,[SettlCurrAmt]
            
                ,[ValidUntilTime]
            
                ,[AccruedInterestAmt]
            
                ,[Yield]
            
                ,[AccruedInterestTotalAmt]
            
                ,[LeavesQty]
            
                ,[QueryRequestID]
            
                ,[MarketIndicator]
            
                ,[MinTickSize]
            
                ,[SplitIndicator]
            
                ,[TradeCashAmt]
            
                ,[ClearingMethod]
            
                ,[BDeliveryTypeOption]
            
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[SysStatus]
        ) VALUES (
        
                'ODahhytrd000000003'
            
                ,'201707120460000005'
            
                ,'10000000'
            
                ,'0'
            
                ,'2'
            
                ,'99.0000'
            
                ,'1080001'
            
                ,'1'
            
                ,'10华润电力01'
            
                ,'20170712 15:28:12.962'
            
                ,'2'
            
                ,'10139506.85'
            
                ,'20170712 19:20:00.000'
            
                ,'2.39507'
            
                ,'5.1250'
            
                ,'239506.85'
            
                ,'10000000'
            
                ,'QRahhytrd000000004'
            
                ,'4'
            
                ,'1000000'
            
                ,'Y'
            
                ,'9900000.00'
            
                ,'13'
            
                ,'0'
            
                ,'54cb8c4c-11ee-4ea1-95ac-1eae8908fb62'
            
                ,'<Quote><Header><BeginString>IMIX.2.0</BeginString><BodyLength>800</BodyLength><MsgSeqNum>32</MsgSeqNum><MsgType>D</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170712 07:30:25.338</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><ClOrdID>ODahhytrd000000003</ClOrdID><ID>201707120460000005</ID><Qty>10000000</Qty><QuoteStatus>0</QuoteStatus><OrdType>2</OrdType><Price>99.0000</Price><SecurityID>1080001</SecurityID><Side>1</Side><Symbol>10华润电力01</Symbol><TransactTime>20170712 15:28:12.962</TransactTime><SettlType>2</SettlType><SettlCurrAmt>10139506.85</SettlCurrAmt><ValidUntilTime>20170712 19:20:00.000</ValidUntilTime><AccruedInterestAmt>2.39507</AccruedInterestAmt><Yield>5.1250</Yield><AccruedInterestTotalAmt>239506.85</AccruedInterestTotalAmt><LeavesQty>10000000</LeavesQty><QueryRequestID>QRahhytrd000000004</QueryRequestID><MarketIndicator>4</MarketIndicator><MinTickSize>1000000</MinTickSize><SplitIndicator>Y</SplitIndicator><TradeCashAmt>9900000.00</TradeCashAmt><ClearingMethod>13</ClearingMethod><BDeliveryTypeOption>0</BDeliveryTypeOption></Master><Slave><Parties><Party><PartyID>545454545454545454541</PartyID><PartyRole>101</PartyRole><TraderCode>yaolei</TraderCode><TraderName>yaolei</TraderName><SettlementBankName>安徽海益信息科技有限公司</SettlementBankName><CashAccountNumber>123131</CashAccountNumber><SecuritiesAccNumber>125235454</SecuritiesAccNumber><FirmFullChineseName>安徽海益信息科技有限责任公司</FirmFullChineseName><CustodianInstitutionName>国债登记结算公司</CustodianInstitutionName></Party></Parties></Slave></Quote>'
            
        ,0
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[TraderCode]
            
                ,[TraderName]
            
                ,[SettlementBankName]
            
                ,[CashAccountNumber]
            
                ,[SecuritiesAccNumber]
            
                ,[FirmFullChineseName]
            
                ,[CustodianInstitutionName]
            
            ,[FkID]
            ) VALUES
            (
            
                '545454545454545454541'
            
                ,'101'
            
                ,'yaolei'
            
                ,'yaolei'
            
                ,'安徽海益信息科技有限公司'
            
                ,'123131'
            
                ,'125235454'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'国债登记结算公司'
            
            ,'54cb8c4c-11ee-4ea1-95ac-1eae8908fb62'
            );
        