
        INSERT INTO [dbo].[cfets_quotes]
        (
        
                [ClOrdID]
            
                ,[ID]
            
                ,[Qty]
            
                ,[TransType]
            
                ,[Price]
            
                ,[SecurityID]
            
                ,[Side]
            
                ,[Symbol]
            
                ,[TransactTime]
            
                ,[ValidUntilTime]
            
                ,[SettlType]
            
                ,[QuoteStatus]
            
                ,[QuoteType]
            
                ,[ContingencyIndicator]
            
                ,[MarketIndicator]
            
                ,[QuoteTime]
            
                ,[RemarkIndicator]
            
                ,[TradeLimitDays]
            
                ,[DataCategoryIndicator]
            
                ,[MiscFeeAmt]
            
                ,[SysID]
            
                ,[SysOriMsg]
            
        ,[SysStatus]
        ) VALUES (
        
                '993721497952793018'
            
                ,'201706200810000008'
            
                ,'10000000'
            
                ,'N'
            
                ,'0.15'
            
                ,'L007'
            
                ,'1'
            
                ,'L007'
            
                ,'20170620 18:01:02.339'
            
                ,'20170620 19:20:00.000'
            
                ,'1'
            
                ,'16'
            
                ,'0'
            
                ,'N'
            
                ,'8'
            
                ,'20170620 18:01:02.339'
            
                ,'N'
            
                ,'7'
            
                ,'0'
            
                ,'28767.12'
            
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
            
                ,[EligibleCounterParty]
            
            ,[FkID]
            ) VALUES
            (
            
                '545454'
            
                ,'101'
            
                ,'安徽海益首席交易员'
            
                ,'安徽海益信息科技有限责任公司'
            
                ,'安徽海益信息'
            
                ,'CFETS'
            
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            
                [PartyID]
            
                ,[PartyRole]
            
                ,[TraderName]
            
                ,[FirmShortChineseName]
            
                ,[EligibleCounterParty]
            
            ,[FkID]
            ) VALUES
            (
            
                '304161'
            
                ,'102'
            
                ,'安徽海益测试对手方'
            
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
            
                '100002'
            
                ,'10000000'
            
                ,'10附息国债02'
            
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
            
                ,'22000000'
            
            ,
            '<Securities>'+
            '
            <Security><MarginSecuritiesID>100002</MarginSecuritiesID><MarginAMT>10000000</MarginAMT><MarginSymbol>10附息国债02</MarginSymbol></Security><Security><MarginSecuritiesID>100003</MarginSecuritiesID><MarginAMT>12000000</MarginAMT><MarginSymbol>10附息国债03</MarginSymbol></Security>
            '
            +'</Securities>'
            ,'AB387472-54D1-47AC-9618-DB1C851361BE'
            );
        