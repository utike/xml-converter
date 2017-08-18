
        INSERT INTO [dbo].[cfets_quotes]
        (
        [SysStatus]
        ,[MsgType]
        
        ,[Price]
    
        ,[SecurityID]
    
        ,[Side]
    
        ,[TransactTime]
    
        ,[ValidUntilTime]
    
        ,[SettlType]
    
        ,[SettlDate]
    
        ,[ID]
    
        ,[SettlCurrency]
    
        ,[SettlDate2]
    
        ,[QuoteType]
    
        ,[DeliveryType]
    
        ,[CashHoldingDays]
    
        ,[DeliveryType2]
    
        ,[MarketIndicator]
    
        ,[SettlCurrAmt2]
    
        ,[TradeCashAmt]
    
        ,[TradeLimitDays]
    
        ,[ClearingMethod]
    
        ,[RepoMethod]
    
        ) VALUES (
        '0',
        'AJ'
        
        ,'2.6000'
    
        ,'R007'
    
        ,'1'
    
        ,'20170818 13:24:51.939'
    
        ,'20170818 19:20:00.000'
    
        ,'1'
    
        ,'20170818'
    
        ,'201708180920000020'
    
        ,'CNY'
    
        ,'20170821'
    
        ,'1'
    
        ,'0'
    
        ,'3'
    
        ,'0'
    
        ,'9'
    
        ,'50010684.93'
    
        ,'50000000.00'
    
        ,'3'
    
        ,'13'
    
        ,'1'
    
        );
    
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        ,[PartyID]
    
        ,[PartyRole]
    
        ,[FirmFullChineseName]
    
        ,[TraderCode]
    
        ,[TraderName]
    
            ) VALUES
            (
            ''
            
        ,'888888888888888888888'
    
        ,'101'
    
        ,'恒天基金'
    
        ,'htjjdealerahhy'
    
        ,'安徽海益测试对手方'
    
            );
        
            INSERT INTO [dbo].[details_parties]
            (
            [FkID]
            
        ,[PartyID]
    
        ,[PartyRole]
    
        ,[FirmFullChineseName]
    
        ,[TraderName]
    
            ) VALUES
            (
            ''
            
        ,'545454545454545454541'
    
        ,'102'
    
        ,'安徽海益信息科技有限责任公司'
    
        ,'yaolei'
    
            );
        