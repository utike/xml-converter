
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[Qty]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[SettlType]
            
                ,[SettlDate]
            
                ,[ID]
            
                ,[SettlCurrency]
            
                ,[SettlDate2]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[DeliveryType]
            
                ,[CashHoldingDays]
            
                ,[ContingencyIndicator]
            
                ,[DeliveryType2]
            
                ,[DisputeSettlementMethod]
            
                ,[MarketIndicator]
            
                ,[NegotiationCount]
            
                ,[QuoteTime]
            
                ,[TransType]
            
                ,[RemarkIndicator]
            
                ,[TradeLimitDays]
            
                ,[DataCategoryIndicator]
            
                ,[MiscFeeAmt]
            
            ,[SysID]
        
            ,[SysOriMsg]
        
        ,[SysStatus]
        ) VALUES (
        
                '994828487256773010'
            
                ,'6400000'
            
                ,'0.07'
            
                ,'L2M'
            
                ,'1'
            
                ,'L2M'
            
                ,'20170216 15:13:19.709'
            
                ,'20170216 19:20:00.000'
            
                ,'1'
            
                ,'20170216'
            
                ,'201702160820000005'
            
                ,'CNY'
            
                ,'20170324'
            
                ,'16'
            
                ,'1'
            
                ,'6'
            
                ,'36'
            
                ,'N'
            
                ,'9'
            
                ,'0'
            
                ,'8'
            
                ,'1'
            
                ,'20170216 15:13:19.709'
            
                ,'N'
            
                ,'N'
            
                ,'36'
            
                ,'0'
            
                ,'44186.30'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
        
            ,'<root>123</root>'
        
        ,0
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[TraderName]
            
                ,[FirmFullChineseName]
            
                ,[FirmShortChineseName]
            
                ,[SettlementBankName]
            
                ,[CashAccountNumber]
            
                ,[SecuritiesAccNumber]
            
                ,[EligibleCounterParty]
            
            ,[FkID]
            ) VALUES
            (
            
                '102445'
            
                ,'101'
            
                ,'中原证券首席交易员'
            
                ,'中原证券股份有限公司'
            
                ,'中原证券'
            
                ,'中国建设银行股份有限公司郑州期货城支行(105491000047)'
            
                ,'41001521010050006729'
            
                ,'00000002869'
            
                ,'CFETS'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[TraderName]
            
                ,[FirmFullChineseName]
            
                ,[FirmShortChineseName]
            
                ,[EligibleCounterParty]
            
            ,[FkID]
            ) VALUES
            (
            
                '304161'
            
                ,'102'
            
                ,'中原证券对手方'
            
                ,'恒天基金'
            
                ,'恒天基金'
            
                ,'CFETS'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_underlyings]
            (
            
                [SecurityID]
            
                ,[Qty]
            
                ,[Symbol]
            
            ,[FkID]
            ) VALUES
            (
            
                '010216'
            
                ,'6400000'
            
                ,'01国开16'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_marginInfos]
            (
            
                [Type]
            
                ,[Replacement]
            
                ,[TotalAmt]
            
                ,[Securities]
            
            ,[FkID]
            ) VALUES
            (
            
                '0'
            
                ,'N'
            
                ,'8600000'
            
            ,
            '<Securities>'+
            '<Security><MarginSecuritiesID>010011</MarginSecuritiesID><MarginAMT>8600000</MarginAMT><MarginSymbol>01国债11</MarginSymbol></Security>
            '
            +'</Securities>'
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );

        