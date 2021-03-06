USE [master]
GO
/****** Object:  Database [CMDS]    Script Date: 07/20/2017 09:18:30 ******/
CREATE DATABASE [CMDS];
GO
ALTER DATABASE [CMDS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CMDS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CMDS] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CMDS] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CMDS] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CMDS] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CMDS] SET ARITHABORT OFF
GO
ALTER DATABASE [CMDS] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CMDS] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CMDS] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CMDS] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CMDS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CMDS] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CMDS] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CMDS] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CMDS] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CMDS] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CMDS] SET  DISABLE_BROKER
GO
ALTER DATABASE [CMDS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CMDS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CMDS] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CMDS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CMDS] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CMDS] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CMDS] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CMDS] SET  READ_WRITE
GO
ALTER DATABASE [CMDS] SET RECOVERY FULL
GO
ALTER DATABASE [CMDS] SET  MULTI_USER
GO
ALTER DATABASE [CMDS] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CMDS] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'CMDS', N'ON'
GO
USE [CMDS]
GO
/****** Object:  Table [dbo].[Error]    Script Date: 07/20/2017 09:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Error](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[SMM_MKT_SRNO] [int] NULL,
	[SMM_MESG_CODE_NMBR] [varchar](50) NULL,
	[SMM_MESG_STRING_CLAUSE] [nvarchar](max) NULL,
	[SMM_MESG_STRING_ENCD_CLAUSE] [nvarchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[details_underlyings]    Script Date: 07/20/2017 09:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[details_underlyings](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[SecurityID] [nvarchar](20) NULL,
	[Symbol] [nvarchar](50) NULL,
	[Qty] [decimal](18, 2) NULL,
	[HairCut] [decimal](18, 6) NULL,
	[Yield] [decimal](18, 4) NULL,
	[Yield2] [decimal](18, 4) NULL,
	[StrikeYield] [decimal](18, 4) NULL,
	[Px] [decimal](18, 4) NULL,
	[Px2] [decimal](18, 4) NULL,
	[AccruedInterestAmt] [decimal](18, 5) NULL,
	[DirtyPrice] [decimal](18, 5) NULL,
	[AccruedInterestAmt2] [decimal](18, 5) NULL,
	[DirtyPrice2] [decimal](18, 4) NULL,
	[CouponPaymentDate] [date] NULL,
	[CouponRate] [decimal](18, 4) NULL,
	[Discount] [nvarchar](20) NULL,
	[FkID] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[details_parties]    Script Date: 07/20/2017 09:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[details_parties](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[PartyID] [nvarchar](30) NULL,
	[PartyRole] [int] NULL,
	[TraderName] [nvarchar](100) NULL,
	[SettlementBankName] [nvarchar](100) NULL,
	[CashAccountNumber] [nvarchar](30) NULL,
	[FirmFullChineseName] [nvarchar](100) NULL,
	[FirmShortChineseName] [nvarchar](100) NULL,
	[EligibleCounterParty] [nvarchar](100) NULL,
	[SecuritiesAccNumber] [nvarchar](30) NULL,
	[PostalAddress] [nvarchar](300) NULL,
	[FirmShortName] [nvarchar](100) NULL,
	[SecuritiesAccName] [nvarchar](100) NULL,
	[CashAccountName] [nvarchar](100) NULL,
	[MarginSettlementAccNumber] [nvarchar](30) NULL,
	[MarginCustodianAccNumber] [nvarchar](30) NULL,
	[MarginSettlementBankName] [nvarchar](100) NULL,
	[MarginCustodianInstitutionName] [nvarchar](100) NULL,
	[CustodianInstitutionName] [nvarchar](100) NULL,
	[SettlementBankSortCode] [nvarchar](30) NULL,
	[MarginSettlementAccName] [nvarchar](100) NULL,
	[MarginCustodianAccName] [nvarchar](100) NULL,
	[MarginSettlementBankSortCode] [nvarchar](30) NULL,
	[MarginCustodianEntityCode] [nvarchar](30) NULL,
	[TraderChineseName] [nvarchar](100) NULL,
	[CfetsMarginSettlementAccNumber] [nvarchar](30) NULL,
	[CollateralManagementInstitutionID] [nvarchar](30) NULL,
	[OtherSystemCode] [nvarchar](30) NULL,
	[FarLegCashAccName] [nvarchar](100) NULL,
	[FarLegSettlementBankName] [nvarchar](100) NULL,
	[FarLegCashAccNumber] [nvarchar](30) NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[FkID] [uniqueidentifier] NOT NULL,
	[TraderCode] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[details_mdEntries]    Script Date: 07/20/2017 09:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[details_mdEntries](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[FkID] [uniqueidentifier] NOT NULL,
	[MDEntryType] [nvarchar](5) NULL,
	[LastPx] [decimal](18, 4) NULL,
	[MDEntryPx] [decimal](18, 4) NULL,
	[MDEntrySize] [int] NULL,
	[MDEntryDate] [date] NULL,
	[MDEntryTime] [time](7) NULL,
	[MDPriceLevel] [int] NULL,
	[MDQuoteType] [int] NULL,
	[MinQty] [int] NULL,
	[QuoteEntryID] [nvarchar](30) NULL,
	[SettlCurrency] [nvarchar](10) NULL,
	[SettlDate] [date] NULL,
	[SettlType] [nvarchar](5) NULL,
	[ClearingMethod] [int] NULL,
	[BDeliveryTypeOption] [nvarchar](5) NULL,
	[SDeliveryTypeOption] [nvarchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[details_marginInfos]    Script Date: 07/20/2017 09:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[details_marginInfos](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](1) NULL,
	[PartyRole] [int] NULL,
	[Replacement] [nvarchar](1) NULL,
	[TotalAmt] [decimal](18, 2) NULL,
	[SubmitDate] [date] NULL,
	[Securities] [xml] NULL,
	[FkID] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[details_legs]    Script Date: 07/20/2017 09:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[details_legs](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[Side] [nvarchar](1) NULL,
	[PriceType] [int] NULL,
	[BenchmarkCurveName] [nvarchar](30) NULL,
	[BenchmarkSpread] [decimal](18, 2) NULL,
	[CouponPaymentFrequency] [nvarchar](10) NULL,
	[DayCount] [nvarchar](1) NULL,
	[InterestAccrualMethod] [nvarchar](1) NULL,
	[InterestAccrualResetFrequency] [nvarchar](10) NULL,
	[AccruedInterestAmt] [decimal](18, 5) NULL,
	[AccruedInterestTotalAmt] [decimal](18, 2) NULL,
	[ClearingMethod] [int] NULL,
	[CouponPaymentDate] [date] NULL,
	[CouponPaymentDateReset] [nvarchar](1) NULL,
	[DeliveryType] [int] NULL,
	[DeliveryType2] [int] NULL,
	[DirtyPrice] [decimal](18, 4) NULL,
	[InterestAccrualDate] [date] NULL,
	[InterestAccuralDaysAdjustment] [nvarchar](1) NULL,
	[IOIQty] [decimal](18, 2) NULL,
	[LastQty] [decimal](18, 2) NULL,
	[OrderQty] [decimal](18, 6) NULL,
	[Price] [decimal](18, 6) NULL,
	[SettlCurrAmt] [decimal](18, 2) NULL,
	[SettlCurrAmt2] [decimal](18, 2) NULL,
	[SettlType] [nvarchar](10) NULL,
	[TotalPrincipal] [decimal](18, 2) NULL,
	[TradeCashAmt] [decimal](18, 2) NULL,
	[StrikeYield] [decimal](18, 4) NULL,
	[Yield2] [decimal](4, 0) NULL,
	[FkID] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cfets_quotes]    Script Date: 07/20/2017 09:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cfets_quotes](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[SysID] [uniqueidentifier] NOT NULL,
	[SysOriMsg] [xml] NOT NULL,
	[SysDirect] [int] NULL,
	[SysStatus] [int] NULL,
	[SysSenderApp] [nvarchar](30) NULL,
	[SysSender] [nvarchar](30) NULL,
	[SysTimestamp] [timestamp] NOT NULL,
	[ClOrdID] [nvarchar](30) NULL,
	[TransType] [nvarchar](5) NULL,
	[ID] [nvarchar](30) NULL,
	[Qty] [decimal](18, 2) NULL,
	[Price] [decimal](18, 6) NULL,
	[SecurityID] [nvarchar](30) NULL,
	[Side] [nvarchar](1) NULL,
	[TransactTime] [datetime] NULL,
	[Text] [nvarchar](200) NULL,
	[ValidUntilTime] [datetime] NULL,
	[SettlType] [nvarchar](5) NULL,
	[QuoteStatus] [nvarchar](5) NULL,
	[QuoteType] [nvarchar](5) NULL,
	[DeliveryType] [nvarchar](5) NULL,
	[AccruedInterestTotalAmt] [decimal](18, 2) NULL,
	[ContingencyIndicator] [nvarchar](1) NULL,
	[DeliveryType2] [nvarchar](5) NULL,
	[MarketIndicator] [nvarchar](5) NULL,
	[QuoteTime] [datetime] NULL,
	[RemarkIndicator] [nvarchar](1) NULL,
	[SettlCurrAmt2] [decimal](18, 2) NULL,
	[TradeCashAmt] [decimal](18, 2) NULL,
	[TradeLimitDays] [int] NULL,
	[DataCategoryIndicator] [nvarchar](5) NULL,
	[SettlCurrency] [nvarchar](10) NULL,
	[RepoMethod] [nvarchar](5) NULL,
	[ClearingMethod] [nvarchar](5) NULL,
	[NegotiationCount] [int] NULL,
	[SequelIndicator] [nvarchar](5) NULL,
	[OrigTradeID] [nvarchar](30) NULL,
	[Symbol] [nvarchar](50) NULL,
	[SettlDate] [date] NULL,
	[SettlCurrAmt] [decimal](18, 2) NULL,
	[MarginRequired] [nvarchar](5) NULL,
	[AccruedInterestAmt] [decimal](18, 5) NULL,
	[DirtyPrice] [decimal](18, 4) NULL,
	[Principal] [decimal](18, 2) NULL,
	[TotalPrincipal] [decimal](18, 2) NULL,
	[CashBondIndicator] [nvarchar](5) NULL,
	[LastQty] [int] NULL,
	[MaxFloor] [int] NULL,
	[AnonymousIndicator] [nvarchar](5) NULL,
	[MinTickSize] [int] NULL,
	[TradeType] [nvarchar](5) NULL,
	[OrdStatus] [nvarchar](5) NULL,
	[OrdType] [nvarchar](5) NULL,
	[SplitIndicator] [nvarchar](5) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[CalculateAgency] [nvarchar](5) NULL,
	[SettlDate2] [date] NULL,
	[CashHoldingDays] [int] NULL,
	[DisputeSettlementMethod] [nvarchar](5) NULL,
	[BenchmarkCurveName] [nvarchar](30) NULL,
	[TradeFwdDays] [nvarchar](10) NULL,
	[InterestFixDate] [date] NULL,
	[MiscFeeAmt] [decimal](18, 2) NULL,
	[IniExReqIndicator] [nvarchar](5) NULL,
	[IniExAmount] [nvarchar](5) NULL,
	[IniExDate] [date] NULL,
	[IniExDirIndicator] [nvarchar](5) NULL,
	[OrdQtyResetFrequency] [nvarchar](5) NULL,
	[OrdQtyResetPercentage] [nvarchar](5) NULL,
	[OrdQtyResetDate] [date] NULL,
	[OrdQtyResetType] [nvarchar](5) NULL,
	[OrdQtyResetAmount] [nvarchar](10) NULL,
	[OrdQtyResetRequired] [nvarchar](5) NULL,
	[StubIndicator] [nvarchar](5) NULL,
	[StrikeYield] [decimal](18, 4) NULL,
	[Yield2] [decimal](18, 4) NULL,
	[StopYield] [decimal](18, 4) NULL,
	[Yield] [decimal](18, 4) NULL,
	[Discount] [nvarchar](30) NULL,
	[BClearingMethod] [nvarchar](5) NULL,
	[SClearingMethod] [nvarchar](5) NULL,
	[LeavesQty] [int] NULL,
	[BDeliveryTypeOption] [nvarchar](5) NULL,
	[SDeliveryTypeOption] [nvarchar](5) NULL,
	[QuoteReqID] [nvarchar](30) NULL,
	[QueryRequestID] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cfets_orders]    Script Date: 07/20/2017 09:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cfets_orders](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[SysID] [uniqueidentifier] NOT NULL,
	[SysOriMsg] [xml] NOT NULL,
	[SysDirect] [int] NULL,
	[SysStatus] [int] NULL,
	[SysSenderApp] [nvarchar](30) NULL,
	[SysSender] [nvarchar](30) NULL,
	[SysTimestamp] [timestamp] NOT NULL,
	[ClOrdID] [nvarchar](30) NULL,
	[ExecID] [nvarchar](30) NULL,
	[Price] [decimal](18, 6) NULL,
	[SecurityID] [nvarchar](30) NULL,
	[Side] [nvarchar](1) NULL,
	[Text] [nvarchar](200) NULL,
	[TransactTime] [datetime] NULL,
	[SettlDate] [date] NULL,
	[TradeDate] [date] NULL,
	[QuoteID] [nvarchar](30) NULL,
	[ExecType] [nvarchar](10) NULL,
	[AccruedInterestTotalAmt] [decimal](18, 2) NULL,
	[SettlDate2] [date] NULL,
	[CashHoldingDays] [int] NULL,
	[MarketIndicator] [nvarchar](5) NULL,
	[RemarkIndicator] [nvarchar](2) NULL,
	[SettlCurrAmt2] [decimal](18, 2) NULL,
	[LastQty] [int] NULL,
	[ContingencyIndicator] [nvarchar](1) NULL,
	[DealTransType] [nvarchar](1) NULL,
	[TradeLimitDays] [int] NULL,
	[TradeTime] [time](0) NULL,
	[TradeType] [int] NULL,
	[TradeMethod] [int] NULL,
	[DataCategoryIndicator] [int] NULL,
	[SettlCurrency] [nvarchar](10) NULL,
	[RepoMethod] [nvarchar](10) NULL,
	[DeliveryType] [int] NULL,
	[DeliveryType2] [int] NULL,
	[ClearingMethod] [int] NULL,
	[SequelIndicator] [nvarchar](1) NULL,
	[OrigTradeID] [nvarchar](30) NULL,
	[TradeCashAmt] [decimal](18, 2) NULL,
	[MarginRequired] [nvarchar](1) NULL,
	[Reference] [nvarchar](30) NULL,
	[AccruedInterestAmt] [decimal](18, 5) NULL,
	[DirtyPrice] [decimal](18, 4) NULL,
	[Principal] [decimal](18, 2) NULL,
	[TotalPrincipal] [decimal](18, 2) NULL,
	[TermToMaturity] [nvarchar](50) NULL,
	[CashBondIndicator] [nvarchar](1) NULL,
	[SettlCurrAmt] [decimal](18, 2) NULL,
	[SecurityGroup] [nvarchar](50) NULL,
	[LastPx] [decimal](18, 4) NULL,
	[ClosePositionIndicator] [nvarchar](1) NULL,
	[Symbol] [nvarchar](50) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[CouponPaymentDateReset] [nvarchar](1) NULL,
	[InterestAccuralDaysAdjustment] [nvarchar](1) NULL,
	[FirstPeriodStartDate] [nvarchar](25) NULL,
	[TrdType] [nvarchar](10) NULL,
	[DisputeSettlementMethod] [int] NULL,
	[CouponPaymentIndicator] [nvarchar](1) NULL,
	[BenchmarkCurveName] [nvarchar](50) NULL,
	[CouponPaymentDate] [date] NULL,
	[DayCount] [nvarchar](1) NULL,
	[InterestFixDate] [date] NULL,
	[TradeFwdDays] [nvarchar](25) NULL,
	[PaymentDate] [date] NULL,
	[StrikePrice] [decimal](18, 6) NULL,
	[DeliveryForm] [int] NULL,
	[OptPayoutType] [int] NULL,
	[MaturityDate] [date] NULL,
	[OptPremiumAmt] [decimal](18, 2) NULL,
	[Spread] [decimal](18, 2) NULL,
	[CouponPaymentFrequency] [int] NULL,
	[StrikeYield] [decimal](18, 4) NULL,
	[Yield2] [decimal](18, 4) NULL,
	[StopYield] [decimal](18, 4) NULL,
	[Discount] [nvarchar](30) NULL,
	[IniExReqIndicator] [nvarchar](1) NULL,
	[IniExAmount] [nvarchar](30) NULL,
	[IniExDate] [date] NULL,
	[IniExDirIndicator] [nvarchar](1) NULL,
	[MiscFeeAmt] [decimal](18, 2) NULL,
	[CalculateAgency] [int] NULL,
	[OrdQtyResetFrequency] [nvarchar](5) NULL,
	[OrdQtyResetPercentage] [nvarchar](5) NULL,
	[OrdQtyResetDate] [date] NULL,
	[OrdQtyResetType] [nvarchar](5) NULL,
	[OrdQtyResetAmount] [nvarchar](10) NULL,
	[OrdQtyResetRequired] [nvarchar](5) NULL,
	[StubIndicator] [nvarchar](5) NULL,
	[StubRateFixedDate2] [date] NULL,
	[StubRateFixedDate] [date] NULL,
	[SettlType] [nvarchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cfets_marketdata_ack]    Script Date: 07/20/2017 09:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cfets_marketdata_ack](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[SysID] [uniqueidentifier] NOT NULL,
	[SysOriMsg] [xml] NOT NULL,
	[SysDirect] [int] NULL,
	[SysStatus] [int] NULL,
	[SysSenderApp] [nvarchar](30) NULL,
	[SysSender] [nvarchar](30) NULL,
	[SysTimestamp] [timestamp] NOT NULL,
	[TransactTime] [datetime] NULL,
	[MDBookType] [int] NULL,
	[SubscriptionRequestType] [nvarchar](5) NULL,
	[MDReqID] [nvarchar](20) NULL,
	[SubscriptionStatus] [int] NULL,
	[Text] [nvarchar](1024) NULL,
	[SecurityID] [nvarchar](30) NULL,
	[MarketIndicator] [nvarchar](5) NULL,
	[SecurityType] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cfets_marketdata]    Script Date: 07/20/2017 09:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cfets_marketdata](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[SysID] [uniqueidentifier] NOT NULL,
	[SysOriMsg] [xml] NOT NULL,
	[SysDirect] [int] NULL,
	[SysStatus] [int] NULL,
	[SysSenderApp] [nvarchar](30) NULL,
	[SysSender] [nvarchar](30) NULL,
	[SysTimestamp] [timestamp] NOT NULL,
	[SecurityID] [nvarchar](30) NULL,
	[Symbol] [nvarchar](50) NULL,
	[TransactTime] [datetime] NULL,
	[SecurityType] [nvarchar](10) NULL,
	[MarketDepth] [nvarchar](10) NULL,
	[MDBookType] [int] NULL,
	[MarketIndicator] [nvarchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cfets_error]    Script Date: 07/20/2017 09:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cfets_error](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[SysID] [uniqueidentifier] NOT NULL,
	[SysOriMsg] [xml] NOT NULL,
	[SysDirect] [int] NULL,
	[SysStatus] [int] NULL,
	[SysSenderApp] [nvarchar](30) NULL,
	[SysSender] [nvarchar](30) NULL,
	[SysTimestamp] [timestamp] NOT NULL,
	[ClOrdID] [nvarchar](30) NULL,
	[ApplErrorCode] [nvarchar](30) NULL,
	[ApplErrorDesc] [nvarchar](200) NULL,
	[RefMsgType] [nvarchar](200) NULL,
	[TransactTime] [datetime] NULL,
	[insertTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SerialNo]    Script Date: 07/20/2017 09:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SerialNo](
	[ClientName] [varchar](50) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Prefix] [varchar](50) NULL,
	[SerialNo] [varchar](80) NULL,
 CONSTRAINT [PK_SerialNo] PRIMARY KEY CLUSTERED 
(
	[ClientName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[receiveQuoteInformation]    Script Date: 07/20/2017 09:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[receiveQuoteInformation] as
 
 (select quote.* from cfets_quotes quote,
 (select ID,MAX(case  when NegotiationCount IS NULL  then 0 else NegotiationCount end) as NegotiationCount from cfets_quotes where  DATEDIFF(DAY,TransactTime,CONVERT(varchar(100), GETDATE(), 23))=0 and id in(select distinct ID from cfets_quotes where TransType='N' and ClOrdID is not null and ClOrdID not like '%ahhytrd%')group by ID) base
 where quote.ID=base.ID and (case  when quote.NegotiationCount IS NULL  then 0 else quote.NegotiationCount end) = base.NegotiationCount and quote.QuoteStatus='16');
GO
/****** Object:  View [dbo].[quoteInfomation]    Script Date: 07/20/2017 09:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[quoteInfomation]
AS
SELECT     quote.IID, quote.SysID, quote.SysOriMsg, quote.SysDirect, quote.SysStatus, quote.SysSenderApp, quote.SysSender, quote.SysTimestamp, quote.ClOrdID, 
                      quote.TransType, quote.ID, quote.Qty, quote.Price, quote.SecurityID, quote.Side, quote.TransactTime, quote.Text, quote.ValidUntilTime, quote.SettlType, 
                      quote.QuoteStatus, quote.QuoteType, quote.DeliveryType, quote.AccruedInterestTotalAmt, quote.ContingencyIndicator, quote.DeliveryType2, quote.MarketIndicator, 
                      quote.QuoteTime, quote.RemarkIndicator, quote.SettlCurrAmt2, quote.TradeCashAmt, quote.TradeLimitDays, quote.DataCategoryIndicator, quote.SettlCurrency, 
                      quote.RepoMethod, quote.ClearingMethod, quote.NegotiationCount, quote.SequelIndicator, quote.OrigTradeID, quote.Symbol, quote.SettlDate, quote.SettlCurrAmt, 
                      quote.MarginRequired, quote.AccruedInterestAmt, quote.DirtyPrice, quote.Principal, quote.TotalPrincipal, quote.CashBondIndicator, quote.LastQty, quote.MaxFloor, 
                      quote.AnonymousIndicator, quote.MinTickSize, quote.TradeType, quote.OrdStatus, quote.OrdType, quote.SplitIndicator, quote.StartDate, quote.EndDate, 
                      quote.CalculateAgency, quote.SettlDate2, quote.CashHoldingDays, quote.DisputeSettlementMethod, quote.BenchmarkCurveName, quote.TradeFwdDays, 
                      quote.InterestFixDate, quote.MiscFeeAmt, quote.IniExReqIndicator, quote.IniExAmount, quote.IniExDate, quote.IniExDirIndicator, quote.OrdQtyResetFrequency, 
                      quote.OrdQtyResetPercentage, quote.OrdQtyResetDate, quote.OrdQtyResetType, quote.OrdQtyResetAmount, quote.OrdQtyResetRequired, quote.StubIndicator, 
                      quote.StrikeYield, quote.Yield2, quote.StopYield, quote.Yield, quote.Discount, quote.BClearingMethod, quote.SClearingMethod, quote.LeavesQty, 
                      quote.BDeliveryTypeOption, quote.SDeliveryTypeOption, quote.QuoteReqID, quote.QueryRequestID
FROM         dbo.cfets_quotes AS quote INNER JOIN
                          (SELECT     ID, MAX(NegotiationCount) AS NegotiationCount
                            FROM          dbo.cfets_quotes
                            WHERE      (DATEDIFF(DAY, TransactTime, CONVERT(varchar(100), GETDATE(), 23)) = 0)
                            GROUP BY ID) AS base ON quote.ID = base.ID AND quote.NegotiationCount = base.NegotiationCount
WHERE     (quote.QuoteStatus = '16')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "quote"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "base"
            Begin Extent = 
               Top = 6
               Left = 289
               Bottom = 95
               Right = 462
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'quoteInfomation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'quoteInfomation'
GO
/****** Object:  StoredProcedure [dbo].[queryStatus]    Script Date: 07/20/2017 09:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[queryStatus](
@ClOrdID nvarchar(30)
)
	-- Add the parameters for the stored procedure here
AS
BEGIN

if(exists(select * from cfets_quotes where ClOrdID=@ClOrdID))
select result = '0'
else if(exists(select * from cfets_orders where ClOrdID=@ClOrdID))
select result = '0'
else if(exists(select * from cfets_marketdata_ack where MDReqID=@ClOrdID))
select result = '0'
else if(exists(select * from cfets_error where ClOrdID=@ClOrdID))
select result = (select top 1 ApplErrorCode from cfets_error)
else
select result = null
END
GO
/****** Object:  StoredProcedure [dbo].[GetSerialNo]    Script Date: 07/20/2017 09:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Dragon-Y
-- Create date: 2017-07-07
-- Description:生成序列号
-- =============================================
CREATE procedure [dbo].[GetSerialNo](
@ClientName varchar(50),
@prefix varchar(50)
)
as begin 
   Declare @SerialNo  varchar(16),@Name varchar(50),   
           @CreateDate   date          
  Begin Tran     
  Begin Try    
   --在同一个事物中，执行了update语句之后就会启动锁 
     Update SerialNo set SerialNo = SerialNo where ClientName=@ClientName  
    Select @SerialNo = SerialNo,@CreateDate=CreateDate,@Name=ClientName From SerialNo where ClientName=@ClientName  
    -- 表中没有记录，插入初始值
    if @Name is not null
    begin    
    If @SerialNo is null   
    Begin 
       Select @SerialNo = '00000001'
       Update SerialNo set SerialNo=@SerialNo,Prefix=@prefix where ClientName=@ClientName  
    end
    else   
     Begin 
          
       --如果日期相等，则加1   
       If @CreateDate = convert(varchar(10),getdate(),110) 
       select @SerialNo = RIGHT('0000000'+CAST(convert(int, @SerialNo) + 1 as varchar), 8)   
      else              --如果日期不相等，则先赋值日期，流水号从1开始   
        Select @SerialNo = '00000001'
      Update SerialNo set SerialNo=@SerialNo,Prefix=@prefix,CreateDate=GETDATE() where ClientName=@ClientName  
     End 
     Select result = @prefix+@SerialNo
     end
     else
     begin
     select result = 'ClientName is not existed'
     end     
     Commit Tran    
   End Try   
    Begin Catch   
    Rollback Tran   
     Select result = 'Error' 
   End Catch   
 end
GO
