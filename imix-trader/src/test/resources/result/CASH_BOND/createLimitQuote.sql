
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[ID]
            
                ,[QuoteStatus]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[SettlType]
            
                ,[SettlDate]
            
                ,[SettlCurrAmt]
            
                ,[TransType]
            
                ,[LeavesQty]
            
                ,[AccruedInterestAmt]
            
                ,[Yield]
            
                ,[QuoteType]
            
                ,[AccruedInterestTotalAmt]
            
                ,[ContingencyIndicator]
            
                ,[DirtyPrice]
            
                ,[MarketIndicator]
            
                ,[MinTickSize]
            
                ,[SplitIndicator]
            
                ,[TradeCashAmt]
            
                ,[ClearingMethod]
            
                ,[BDeliveryTypeOption]
            
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[SysStatus]
        ,[MsgType]
        ) VALUES (
        
                'ODahhytrd000000007'
            
                ,'201707100460000001'
            
                ,'0'
            
                ,'99.0000'
            
                ,'1080001'
            
                ,'1'
            
                ,'10华润电力01'
            
                ,'20170710 15:28:04.890'
            
                ,'20170710 19:20:00.000'
            
                ,'2'
            
                ,'20170711'
            
                ,'10136931.51'
            
                ,'N'
            
                ,'10000000'
            
                ,'2.36932'
            
                ,'5.1242'
            
                ,'102'
            
                ,'236931.51'
            
                ,'N'
            
                ,'101.3693'
            
                ,'4'
            
                ,'1000000'
            
                ,'Y'
            
                ,'9900000.00'
            
                ,'13'
            
                ,'0'
            
                ,'a4cfda13-ea3d-45fe-bcca-ffd601be9eb8'
            
                ,'
            <Quote><Header><BeginString>IMIX.2.0</BeginString><BodyLength>804</BodyLength><MsgSeqNum>25</MsgSeqNum><MsgType>8</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170710 07:28:09.221</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><ClOrdID>ODahhytrd000000007</ClOrdID><ID>201707100460000001</ID><QuoteStatus>0</QuoteStatus><Price>99.0000</Price><SecurityID>1080001</SecurityID><Side>1</Side><Symbol>10华润电力01</Symbol><TransactTime>20170710 15:28:04.890</TransactTime><ValidUntilTime>20170710 19:20:00.000</ValidUntilTime><SettlType>2</SettlType><SettlDate>20170711</SettlDate><SettlCurrAmt>10136931.51</SettlCurrAmt><TransType>N</TransType><LeavesQty>10000000</LeavesQty><AccruedInterestAmt>2.36932</AccruedInterestAmt><Yield>5.1242</Yield><QuoteType>102</QuoteType><AccruedInterestTotalAmt>236931.51</AccruedInterestTotalAmt><ContingencyIndicator>N</ContingencyIndicator><DirtyPrice>101.3693</DirtyPrice><MarketIndicator>4</MarketIndicator><MinTickSize>1000000</MinTickSize><SplitIndicator>Y</SplitIndicator><TradeCashAmt>9900000.00</TradeCashAmt><ClearingMethod>13</ClearingMethod><BDeliveryTypeOption>0</BDeliveryTypeOption></Master><Slave><Parties><Party><PartyID>545454545454545454541</PartyID><PartyRole>101</PartyRole><TraderCode>yaolei</TraderCode><TraderName>yaolei</TraderName><SettlementBankName>安徽海益信息科技有限公司</SettlementBankName><CashAccountNumber>123131</CashAccountNumber><SecuritiesAccNumber>125235454</SecuritiesAccNumber><FirmFullChineseName>安徽海益信息科技有限责任公司</FirmFullChineseName><CustodianInstitutionName>国债登记结算公司</CustodianInstitutionName></Party></Parties></Slave></Quote>'
            
        ,'0'
        ,'8'
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
            
            ,'a4cfda13-ea3d-45fe-bcca-ffd601be9eb8'
            );
        