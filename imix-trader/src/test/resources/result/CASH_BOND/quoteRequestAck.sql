
        INSERT INTO [dbo].[cfets_quotes]
        (
        [SysStatus]
        ,[MsgType]
        
                ,[SysID]
            
                ,[SysOriMsg]
            
        
            
                
            
            
                ,[ClOrdID]
            
        
    
        
            
                
            
            
                ,[ID]
            
        
    
        
            
                
            
            
                ,[Symbol]
            
        
    
        
            
                
            
            
                ,[SecurityID]
            
        
    
        
            
                
            
            
                ,[MarketIndicator]
            
        
    
        
            
                
            
            
                ,[QuoteStatus]
            
        
    
        
            
                
            
            
                ,[QuoteType]
            
        
    
        
            
                
            
            
                ,[SettlDate]
            
        
    
        
            
                
            
            
                ,[SettlType]
            
        
    
        
            
                
            
            
                ,[Side]
            
        
    
        
            
                
            
            
                ,[TransactTime]
            
        
    
        
            
                
            
            
                ,[ValidUntilTime]
            
        
    
        
            
                
            
            
                ,[ClearingMethod]
            
        
    
        
            
                
            
            
                ,[DeliveryType]
            
        
    
        
            
                
            
            
                ,[Qty]
            
        
    
        ) VALUES (
        '0',
        'U29'
        
                ,'5d62fefc-ef01-4840-8fdd-a52b5f1a30b2'
            
                ,'<Quote><Header><BeginString>IMIX.2.0</BeginString><BodyLength>755</BodyLength><MsgSeqNum>62</MsgSeqNum><MsgType>U29</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170710 08:21:02.366</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><ClOrdID>ODahhytrd000000010</ClOrdID><ID>201707100410000023</ID><Symbol>10附息国债02</Symbol><SecurityID>100002</SecurityID><MarketIndicator>4</MarketIndicator><QuoteStatus>16</QuoteStatus><QuoteType>112</QuoteType><SettlDate>20170710</SettlDate><SettlType>1</SettlType><Side>1</Side><TransactTime>20170710 16:21:02.086</TransactTime><ValidUntilTime>20170710 16:30:00.000</ValidUntilTime><ClearingMethod>13</ClearingMethod><DeliveryType>0</DeliveryType><Qty>10000000</Qty></Master><Slave><Parties><Party><PartyID>545454545454545454541</PartyID><PartyRole>101</PartyRole><TraderCode>yaolei</TraderCode><SettlementBankName>安徽海益信息科技有限公司</SettlementBankName><CashAccountNumber>123131</CashAccountNumber><CustodianInstitutionName>国债登记结算公司</CustodianInstitutionName><SecuritiesAccNumber>125235454</SecuritiesAccNumber></Party><Party><PartyID>100000111000000101001</PartyID><PartyRole>102</PartyRole></Party><Party><PartyID>111111111111111111111</PartyID><PartyRole>102</PartyRole></Party><Party><PartyID>186000131000000106001</PartyID><PartyRole>102</PartyRole></Party><Party><PartyID>777777777777777777777</PartyID><PartyRole>102</PartyRole></Party><Party><PartyID>888888888888888888888</PartyID><PartyRole>102</PartyRole></Party></Parties></Slave></Quote>'
            
        
            
                
            
            
                ,'ODahhytrd000000010'
            
        
    
        
            
                
            
            
                ,'201707100410000023'
            
        
    
        
            
                
            
            
                ,'10附息国债02'
            
        
    
        
            
                
            
            
                ,'100002'
            
        
    
        
            
                
            
            
                ,'4'
            
        
    
        
            
                
            
            
                ,'16'
            
        
    
        
            
                
            
            
                ,'112'
            
        
    
        
            
                
            
            
                ,'20170710'
            
        
    
        
            
                
            
            
                ,'1'
            
        
    
        
            
                
            
            
                ,'1'
            
        
    
        
            
                
            
            
                ,'20170710 16:21:02.086'
            
        
    
        
            
                
            
            
                ,'20170710 16:30:00.000'
            
        
    
        
            
                
            
            
                ,'13'
            
        
    
        
            
                
            
            
                ,'0'
            
        
    
        
            
                
            
            
                ,'10000000'
            
        
    
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        
            
                
            
            
                ,[PartyID]
            
        
    
        
            
                
            
            
                ,[PartyRole]
            
        
    
        
            
                
            
            
                ,[TraderCode]
            
        
    
        
            
                
            
            
                ,[SettlementBankName]
            
        
    
        
            
                
            
            
                ,[CashAccountNumber]
            
        
    
        
            
                
            
            
                ,[CustodianInstitutionName]
            
        
    
        
            
                
            
            
                ,[SecuritiesAccNumber]
            
        
    
            ) VALUES
            (
            '5d62fefc-ef01-4840-8fdd-a52b5f1a30b2'
            
        
            
                
            
            
                ,'545454545454545454541'
            
        
    
        
            
                
            
            
                ,'101'
            
        
    
        
            
                
            
            
                ,'yaolei'
            
        
    
        
            
                
            
            
                ,'安徽海益信息科技有限公司'
            
        
    
        
            
                
            
            
                ,'123131'
            
        
    
        
            
                
            
            
                ,'国债登记结算公司'
            
        
    
        
            
                
            
            
                ,'125235454'
            
        
    
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        
            
                
            
            
                ,[PartyID]
            
        
    
        
            
                
            
            
                ,[PartyRole]
            
        
    
            ) VALUES
            (
            '5d62fefc-ef01-4840-8fdd-a52b5f1a30b2'
            
        
            
                
            
            
                ,'100000111000000101001'
            
        
    
        
            
                
            
            
                ,'102'
            
        
    
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        
            
                
            
            
                ,[PartyID]
            
        
    
        
            
                
            
            
                ,[PartyRole]
            
        
    
            ) VALUES
            (
            '5d62fefc-ef01-4840-8fdd-a52b5f1a30b2'
            
        
            
                
            
            
                ,'111111111111111111111'
            
        
    
        
            
                
            
            
                ,'102'
            
        
    
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        
            
                
            
            
                ,[PartyID]
            
        
    
        
            
                
            
            
                ,[PartyRole]
            
        
    
            ) VALUES
            (
            '5d62fefc-ef01-4840-8fdd-a52b5f1a30b2'
            
        
            
                
            
            
                ,'186000131000000106001'
            
        
    
        
            
                
            
            
                ,'102'
            
        
    
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        
            
                
            
            
                ,[PartyID]
            
        
    
        
            
                
            
            
                ,[PartyRole]
            
        
    
            ) VALUES
            (
            '5d62fefc-ef01-4840-8fdd-a52b5f1a30b2'
            
        
            
                
            
            
                ,'777777777777777777777'
            
        
    
        
            
                
            
            
                ,'102'
            
        
    
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        
            
                
            
            
                ,[PartyID]
            
        
    
        
            
                
            
            
                ,[PartyRole]
            
        
    
            ) VALUES
            (
            '5d62fefc-ef01-4840-8fdd-a52b5f1a30b2'
            
        
            
                
            
            
                ,'888888888888888888888'
            
        
    
        
            
                
            
            
                ,'102'
            
        
    
            );
        