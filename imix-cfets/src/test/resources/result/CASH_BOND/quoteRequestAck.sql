
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[QuoteReqID]
            
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
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                'ODahhytrd000000010'
            
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
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
        
            ,'<root>123</root>'
        
        ,0
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[TraderCode]
            
                ,[SettlementBankName]
            
                ,[CashAccountNumber]
            
                ,[CustodianInstitutionName]
            
                ,[SecuritiesAccNumber]
            
            ,[FkID]
            ) VALUES
            (
            
                '545454545454545454541'
            
                ,'101'
            
                ,'yaolei'
            
                ,'安徽海益信息科技有限公司'
            
                ,'123131'
            
                ,'国债登记结算公司'
            
                ,'125235454'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
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
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
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
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
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
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
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
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
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
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        