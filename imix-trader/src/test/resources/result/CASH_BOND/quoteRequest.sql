
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[ID]
            
                ,[QueryRequestID]
            
                ,[Symbol]
            
                ,[SecurityID]
            
                ,[MarketIndicator]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[SettlType]
            
                ,[Side]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[ClearingMethod]
            
                ,[DeliveryType]
            
                ,[Qty]
            
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[SysStatus]
        ) VALUES (
        
                'ODahhytrd000000007'
            
                ,'201707120410000170'
            
                ,'QRahhytrd000000008'
            
                ,'10附息国债02'
            
                ,'100002'
            
                ,'4'
            
                ,'21'
            
                ,'112'
            
                ,'1'
            
                ,'1'
            
                ,'20170712 15:36:01.135'
            
                ,'20170712 15:36:00.000'
            
                ,'13'
            
                ,'0'
            
                ,'10000000'
            
                ,'009d90c3-7879-4db6-828c-1b6212d88c73'
            
                ,'<Quote><Header><BeginString>IMIX.2.0</BeginString><BodyLength>711</BodyLength><MsgSeqNum>40</MsgSeqNum><MsgType>R</MsgType><SenderCompID>CFETS-TRADING-INFT</SenderCompID><SenderSubID>RMB</SenderSubID><SendingTime>20170712 07:39:58.152</SendingTime><TargetCompID>545454545454545454541</TargetCompID><TargetSubID>ahhytrd</TargetSubID></Header><Master><ClOrdID>ODahhytrd000000007</ClOrdID><ID>201707120410000170</ID><QueryRequestID>QRahhytrd000000008</QueryRequestID><Symbol>10附息国债02</Symbol><SecurityID>100002</SecurityID><MarketIndicator>4</MarketIndicator><QuoteStatus>21</QuoteStatus><QuoteType>112</QuoteType><SettlType>1</SettlType><Side>1</Side><TransactTime>20170712 15:36:01.135</TransactTime><ValidUntilTime>20170712 15:36:00.000</ValidUntilTime><ClearingMethod>13</ClearingMethod><DeliveryType>0</DeliveryType><Qty>10000000</Qty></Master><Slave><Parties><Party><PartyID>545454545454545454541</PartyID><PartyRole>101</PartyRole><TraderCode>yaolei</TraderCode><FirmFullChineseName>安徽海益信息科技有限责任公司</FirmFullChineseName><TraderName>yaolei</TraderName></Party><Party><PartyID>111111111111111111111</PartyID><PartyRole>102</PartyRole></Party><Party><PartyID>186000131000000106001</PartyID><PartyRole>102</PartyRole></Party><Party><PartyID>777777777777777777777</PartyID><PartyRole>102</PartyRole></Party><Party><PartyID>888888888888888888888</PartyID><PartyRole>102</PartyRole></Party><Party><PartyID>100000111000000101001</PartyID><PartyRole>102</PartyRole></Party></Parties></Slave></Quote>'
            
        ,0
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[TraderCode]
            
                ,[FirmFullChineseName]
            
                ,[TraderName]
            
            ,[FkID]
            ) VALUES
            (
            
                '545454545454545454541'
            
                ,'101'
            
                ,'yaolei'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'yaolei'
            
            ,'009d90c3-7879-4db6-828c-1b6212d88c73'
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
            ,[FkID]
            ) VALUES
            (
            
                '111111111111111111111'
            
                ,'102'
            
            ,'009d90c3-7879-4db6-828c-1b6212d88c73'
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
            ,[FkID]
            ) VALUES
            (
            
                '186000131000000106001'
            
                ,'102'
            
            ,'009d90c3-7879-4db6-828c-1b6212d88c73'
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
            ,[FkID]
            ) VALUES
            (
            
                '777777777777777777777'
            
                ,'102'
            
            ,'009d90c3-7879-4db6-828c-1b6212d88c73'
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
            ,[FkID]
            ) VALUES
            (
            
                '888888888888888888888'
            
                ,'102'
            
            ,'009d90c3-7879-4db6-828c-1b6212d88c73'
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
            ,[FkID]
            ) VALUES
            (
            
                '100000111000000101001'
            
                ,'102'
            
            ,'009d90c3-7879-4db6-828c-1b6212d88c73'
            );
        