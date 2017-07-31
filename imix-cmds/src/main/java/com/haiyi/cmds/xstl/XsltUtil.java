package com.haiyi.cmds.xstl;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * CMDS 转换工具
 * @author xml转换工具类
 * @since 1.7
 * Created by bbhou on 2017/6/16.
 */
public class XsltUtil {

    /**
     * 字段映射
     * 1. xml 字段与表字段之间的映射。0
     */
    private static Map<String, String> PARTY_CONSTANT = new HashMap<>();
    private static Map<String, String> QUOTE_CONSTANT = new HashMap<>();
    private static Map<String, String> ExecutionReport_CONSTANT = new HashMap<>();
    private static Map<String, String> NOUNDERLYING_CONSTANT = new HashMap<>();
    private static Map<String, String> NOMARGININFOS_CONSTANT = new HashMap<>();
    private static Map<String, String> NOLEGS_CONSTANT = new HashMap<>();

    private static Map<String, String> CMDS_Details_MDEntries_CONSTANT = new HashMap<>();
    private static Map<String, String> CMDS_Details_Benchmarks_CONSTANT = new HashMap<>();


    /**
     * 数据库字段列表
     * 1. 用于SQL生成时做判断。
     */
    private static List<String> CMDS_Details_Legs_List = new LinkedList<>();
    private static List<String> CMDS_Details_MarginInfos_List = new LinkedList<>();
    private static List<String> CMDS_Details_Parties_List = new LinkedList<>();
    private static List<String> CMDS_Details_Underlyings_List = new LinkedList<>();
    private static List<String> CMDS_MarketDataSnapshot_List = new LinkedList<>();
    private static List<String> CMDS_Orders_List = new LinkedList<>();
    private static List<String> CMDS_Quotes_List = new LinkedList<>();
    private static List<String> CMDS_Details_Benchmarks_List = new LinkedList<>();
    private static List<String> CMDS_Details_MDEntries_List = new LinkedList<>();
    private static List<String> CMDS_MarketData_List = new LinkedList<>();

    static {
        /**
         * party
         */
        PARTY_CONSTANT.put("TRADER_NAME", "TraderName");
        PARTY_CONSTANT.put("FULL_LEGAL_CHINESE_NAME_OF_FIRM", "FirmFullChineseName");
        PARTY_CONSTANT.put("SHORT_LEGAL_CHINESE_NAME_OF_FIRM", "FirmShortChineseName");
        PARTY_CONSTANT.put("SETTLEMENT_BANK_NAME", "SettlementBankName");
        PARTY_CONSTANT.put("CASH_ACCOUNT_NUMBER", "CashAccountNumber");
        PARTY_CONSTANT.put("ELIGIBLE_COUNTERPARTY", "EligibleCounterParty");

        PARTY_CONSTANT.put("POSTAL_ADDRESS", "PostalAddress");
        PARTY_CONSTANT.put("SHORT_LEGAL_NAME_OF_FIRM", "FirmShortName");
        PARTY_CONSTANT.put("CASH_ACCOUNT_NAME", "CashAccountName");
        PARTY_CONSTANT.put("SETTLEMENT_BANK_SORT_CODE", "SettlementBankSortCode");
        PARTY_CONSTANT.put("TRADER_CHINESE_NAME", "TraderChineseName");
        PARTY_CONSTANT.put("PHONE_NO_1", "PhoneNo");

        PARTY_CONSTANT.put("CUSTODIAN_INSTITUTION_NAME", "CustodianInstitutionName");
        PARTY_CONSTANT.put("SECURITIES_ACCOUNT_NUMBER", "SecuritiesAccNumber");
        PARTY_CONSTANT.put("SECURITIES_ACCOUNT_NAME", "SecuritiesAccName");

        PARTY_CONSTANT.put("TRADE_NAME", "TraderName");
        PARTY_CONSTANT.put("PERSON", "TraderCode");


        /**
         * GQUOTE
         */
        //1. 对话报价
        QUOTE_CONSTANT.put("QuoteTransType", "TransType");
        QUOTE_CONSTANT.put("OrderQty", "Qty");
        QUOTE_CONSTANT.put("QuoteID", "ID");
        QUOTE_CONSTANT.put("YieldType", "Yield2");

        //2. 意向报价
        QUOTE_CONSTANT.put("IOIID", "ID");
        QUOTE_CONSTANT.put("IOIQty", "Qty");
        QUOTE_CONSTANT.put("IOITransType", "TransType");

        //3. 限价报价
        QUOTE_CONSTANT.put("OrderID", "ID");
        QUOTE_CONSTANT.put("OrdStatus", "QuoteStatus"); //订单状态映射为 报价状态s
        QUOTE_CONSTANT.put("ExecType", "TransType");
        QUOTE_CONSTANT.put("DeliveryOptionDirection", "Side");

        //4. NewOrderSingle
        QUOTE_CONSTANT.put("ExpireTime", "ValidUntilTime");
        QUOTE_CONSTANT.put("LeavesTotalQty", "LeavesQty");

        //5. QuoteRequestAck
        QUOTE_CONSTANT.put("QuoteReqID", "ID"); //合并为ID

        /**
         * ExecutionReport(成交报价)
         */
        ExecutionReport_CONSTANT.put("QuoteTransType", "TransType");
        ExecutionReport_CONSTANT.put("OrderQty", "Qty");
        ExecutionReport_CONSTANT.put("Yield", "Yield2");
        ExecutionReport_CONSTANT.put("GrossTradeAmt", "TradeCashAmt");

        /**
         * noUnderlyings(质押债券的种类)
         */
        NOUNDERLYING_CONSTANT.put("UnderlyingSecurityID", "SecurityID");
        NOUNDERLYING_CONSTANT.put("UnderlyingQty", "Qty");
        NOUNDERLYING_CONSTANT.put("UnderlyingSymbol", "Symbol");
        NOUNDERLYING_CONSTANT.put("CONVERSION_PROPORTION", "HairCut");
        NOUNDERLYING_CONSTANT.put("UnderlyingAccruedInterestAmt", "AccruedInterestAmt");
        NOUNDERLYING_CONSTANT.put("UnderlyingAccruedInterestAmt2", "AccruedInterestAmt2");
        NOUNDERLYING_CONSTANT.put("UnderlyingDirtyPrice", "DirtyPrice");
        NOUNDERLYING_CONSTANT.put("UnderlyingDirtyPrice2", "DirtyPrice2");
        NOUNDERLYING_CONSTANT.put("UnderlyingPx", "Px");
        NOUNDERLYING_CONSTANT.put("UnderlyingPx2", "Px2");


        /**
         * marginInfos
         */
        NOMARGININFOS_CONSTANT.put("MarginType", "Type");
        NOMARGININFOS_CONSTANT.put("MarginReplacement", "Replacement");
        NOMARGININFOS_CONSTANT.put("MarginTotalAmt", "TotalAmt");
        NOMARGININFOS_CONSTANT.put("MarginPartyRole", "PartyRole");
        NOMARGININFOS_CONSTANT.put("MarginSubmitDate", "SubmitDate");


        /**
         * noLegs
         */
        NOLEGS_CONSTANT.put("LegSide", "Side");
        NOLEGS_CONSTANT.put("LegPriceType", "PriceType");
        NOLEGS_CONSTANT.put("LegPrice", "Price");
        NOLEGS_CONSTANT.put("LegCouponPaymentFrequency", "CouponPaymentFrequency");
        NOLEGS_CONSTANT.put("LegCouponPaymentDate", "CouponPaymentDate");
        NOLEGS_CONSTANT.put("LegDayCount", "DayCount");
        NOLEGS_CONSTANT.put("LegBenchmarkCurveName", "BenchmarkCurveName");
        NOLEGS_CONSTANT.put("LegBenchmarkSpread", "BenchmarkSpread");
        NOLEGS_CONSTANT.put("LegInterestAccrualDate", "InterestAccrualDate");
        NOLEGS_CONSTANT.put("LegInterestAccrualMethod", "InterestAccrualMethod");
        NOLEGS_CONSTANT.put("LegInterestAccrualResetFrequency", "InterestAccrualResetFrequency");
        NOLEGS_CONSTANT.put("LegCouponPaymentDateReset", "CouponPaymentDateReset");
        NOLEGS_CONSTANT.put("LegInterestAccuralDaysAdjustment", "InterestAccuralDaysAdjustment");
        NOLEGS_CONSTANT.put("LegAccruedInterestTotalAmt", "AccruedInterestTotalAmt");
        NOLEGS_CONSTANT.put("LegSettlCurrAmt2", "SettlCurrAmt2");
        NOLEGS_CONSTANT.put("LegIOIQty", "IOIQty");
        NOLEGS_CONSTANT.put("LegDeliveryType", "DeliveryType");
        NOLEGS_CONSTANT.put("LegDeliveryType2", "DeliveryType2");
        NOLEGS_CONSTANT.put("LegOrderQty", "OrderQty");
        NOLEGS_CONSTANT.put("LegLastQty", "LastQty");
        NOLEGS_CONSTANT.put("LegSettlType", "SettlType");
        NOLEGS_CONSTANT.put("LegClearingMethod", "ClearingMethod");
        NOLEGS_CONSTANT.put("LegDirtyPrice", "DirtyPrice");
        NOLEGS_CONSTANT.put("LegAccruedInterestAmt", "AccruedInterestAmt");
        NOLEGS_CONSTANT.put("LegSettlCurrAmt", "SettlCurrAmt");
        NOLEGS_CONSTANT.put("LegTotalPrincipal", "TotalPrincipal");
        NOLEGS_CONSTANT.put("LegTradeCashAmt", "TradeCashAmt");

        /**
         * CMDS_Details_MDEntries
         */
        CMDS_Details_MDEntries_CONSTANT.put("LAST_DEALT_RATE","LastDealtRate");
        CMDS_Details_MDEntries_CONSTANT.put("BEST_RATE","BestRate");
        CMDS_Details_MDEntries_CONSTANT.put("LAST_ALL_IN_DEALT_RATE","LastAllInDealtRate");
        CMDS_Details_MDEntries_CONSTANT.put("INDEX_VALUE_OR_BENCHMARK_VALUE","IndexValueOrBenchmarkValue");
        CMDS_Details_MDEntries_CONSTANT.put("OPENING_PRICE","OpeningPrice");
        CMDS_Details_MDEntries_CONSTANT.put("CLOSING_PRICE","ClosingPrice");
        CMDS_Details_MDEntries_CONSTANT.put("OTHER","Other");
        CMDS_Details_MDEntries_CONSTANT.put("TRADING_SESSION_HIGH_DEALT_PRICE","TradingSessionHighDealtPrice");
        CMDS_Details_MDEntries_CONSTANT.put("TRADING_SESSION_LOW_DEALT_PRICE","TradingSessionLowDealtPrice");
        CMDS_Details_MDEntries_CONSTANT.put("NEAR_LEG_HIGH","NearLegHigh");
        CMDS_Details_MDEntries_CONSTANT.put("FAR_LEG_HIGH","FarLegHigh");
        CMDS_Details_MDEntries_CONSTANT.put("TRADE_VOLUME","TradeVolume");
        CMDS_Details_MDEntries_CONSTANT.put("NEAR_LEG_LOW","NearLegLow");
        CMDS_Details_MDEntries_CONSTANT.put("FAR_LEG_LOW","FarLegLow");
        CMDS_Details_MDEntries_CONSTANT.put("NEAR_LEG_OPEN","NearLegOpen");
        CMDS_Details_MDEntries_CONSTANT.put("FAR_LEG_OPEN","FarLegOpen");
        CMDS_Details_MDEntries_CONSTANT.put("NEAR_LEG_LAST","NearLegLast");
        CMDS_Details_MDEntries_CONSTANT.put("MID_PRICE_OR_CENTRAL_PARITY_RATE","MidPriceOrCentralParityRate");
        CMDS_Details_MDEntries_CONSTANT.put("FAR_LEG_LAST","FarLegLast");
        CMDS_Details_MDEntries_CONSTANT.put("NET_BASIS_CHANGE_OVER_PREVIOUS","NetBasisChangeOverPrevious");
        CMDS_Details_MDEntries_CONSTANT.put("NET_PERCENTAGE_CHANGE_OVER_MID_PRICE","NetPercentageChangeOverMidPrice");
        CMDS_Details_MDEntries_CONSTANT.put("NET_BASIS_CHANGE_OVER_MID_PRICE","NetBasisChangeOverMidPrice");
        CMDS_Details_MDEntries_CONSTANT.put("NET_PERCENTAGE_CHANGE_OVER_YIELD","NetPercentageChangeOverYield");
        CMDS_Details_MDEntries_CONSTANT.put("NET_BASIS_CHANGE_OVER_YIELD","NetBasisChangeOverYield");
        CMDS_Details_MDEntries_CONSTANT.put("GOLD_BENCHMARK_VALUE","GoldBenchmarkValue");
        CMDS_Details_MDEntries_CONSTANT.put("VALUATION_PRICE","ValuationPrice");
        CMDS_Details_MDEntries_CONSTANT.put("REFERENCE_PRICE","ReferencePrice");
        CMDS_Details_MDEntries_CONSTANT.put("LAST_EXPECTED_ALL_IN_PRICE","LastExpectedAllInPrice");
        CMDS_Details_MDEntries_CONSTANT.put("PREVIOUS_CLOSING_EXPECTED_ALL_IN_PRICE","PreviousClosingExpectedAllInPrice");
        CMDS_Details_MDEntries_CONSTANT.put("CLOSING_EXPECTED_ALL_IN_PRICE","ClosingExpectedAllInPrice");
        CMDS_Details_MDEntries_CONSTANT.put("WEIGHTED_AVERAGE_EXPECTED_ALL_IN_PRICE","WeightedAverageExpectedAllInPrice");
        CMDS_Details_MDEntries_CONSTANT.put("PREVIOUS_WEIGHTED_AVERAGE_EXPECTED_ALL_IN_PRICE","PreviousWeightedAverageExpectedAllInPrice");
        CMDS_Details_MDEntries_CONSTANT.put("OPEN_EXPECTED_ALL_IN_PRICE","OpenExpectedAllInPrice");
        CMDS_Details_MDEntries_CONSTANT.put("HIGHEST_EXPECTED_ALL_IN_PRICE","HighestExpectedAllInPrice");
        CMDS_Details_MDEntries_CONSTANT.put("LOWEST_EXPECTED_ALL_IN_PRICE","LowestExpectedAllInPrice");
        CMDS_Details_MDEntries_CONSTANT.put("SETTLEMENT_DATE","SettlementDate");
        CMDS_Details_MDEntries_CONSTANT.put("CHANGE_OVER","ChangeOver");
        CMDS_Details_MDEntries_CONSTANT.put("TRADE_AMOUT","TradeAmout");
        CMDS_Details_MDEntries_CONSTANT.put("TRADING_BANK_UPPER_LIMIT","TradingBankUpperLimit");
        CMDS_Details_MDEntries_CONSTANT.put("TRADING_BANK_LOWER_LIMIT","TradingBankLowerLimit");
        CMDS_Details_MDEntries_CONSTANT.put("LATEST_PRICE","LatestPrice");
        CMDS_Details_MDEntries_CONSTANT.put("PREVIOUS_CLOSING_PRICE","PreviousClosingPrice");
        CMDS_Details_MDEntries_CONSTANT.put("WEIGHTED_AVERAGE_PRICE","WeightedAveragePrice");
        CMDS_Details_MDEntries_CONSTANT.put("PREVIOUS_WEIGHTED_AVERAGE_PRICE","PreviousWeightedAveragePrice");
        CMDS_Details_MDEntries_CONSTANT.put("PREVIOUS_CLOSING_YIELD","PreviousClosingYield");
        CMDS_Details_MDEntries_CONSTANT.put("PREVIOUS_WEIGHTED_AVERAGE_YIELD","PreviousWeightedAverageYield");
        CMDS_Details_MDEntries_CONSTANT.put("OPEN_YIELD","OpenYield");
        CMDS_Details_MDEntries_CONSTANT.put("LAST_YIELD","LastYield");
        CMDS_Details_MDEntries_CONSTANT.put("HIGHEST_YIELD","HighestYield");
        CMDS_Details_MDEntries_CONSTANT.put("LOWEST_YIELD","LowestYield");
        CMDS_Details_MDEntries_CONSTANT.put("CLOSING_YIELD","ClosingYield");
        CMDS_Details_MDEntries_CONSTANT.put("WEIGHTED_AVERAGE_YIELD","WeightedAverageYield");
        CMDS_Details_MDEntries_CONSTANT.put("PREVIOUS_CLOSING_SPREAD","PreviousClosingSpread");
        CMDS_Details_MDEntries_CONSTANT.put("PREVIOUS_WEIGHTED_AVERAGE_SPREAD","PreviousWeightedAverageSpread");
        CMDS_Details_MDEntries_CONSTANT.put("OPEN_SPREAD","OpenSpread");
        CMDS_Details_MDEntries_CONSTANT.put("LAST_SPREAD","LastSpread");
        CMDS_Details_MDEntries_CONSTANT.put("LOWEST_SPREAD","LowestSpread");
        CMDS_Details_MDEntries_CONSTANT.put("HIGHEST_SPREAD","HighestSpread");
        CMDS_Details_MDEntries_CONSTANT.put("CLOSING_SPREAD","ClosingSpread");
        CMDS_Details_MDEntries_CONSTANT.put("WEIGHTED_AVERAGE_SPREAD","WeightedAverageSpread");
        CMDS_Details_MDEntries_CONSTANT.put("BEST_ALL_IN_PRICE","BestAllInPrice");
        CMDS_Details_MDEntries_CONSTANT.put("SESSION_REFERENCE_PRICE","SessionReferencePrice");
        CMDS_Details_MDEntries_CONSTANT.put("MDBookType","BookType");
        CMDS_Details_MDEntries_CONSTANT.put("MDEntrySide","Side");
        CMDS_Details_MDEntries_CONSTANT.put("MDPriceLevel","PriceLevel");

        /**
         * CMDS_Details_Benchmarks
         */
        CMDS_Details_Benchmarks_CONSTANT.put("BenchmarkCurveName", "CurveName");

        //------------------------------------------------------------------------------数据库表字段的添加
        CMDS_Details_Legs_List.add("IID");
        CMDS_Details_Legs_List.add("Side");
        CMDS_Details_Legs_List.add("PriceType");
        CMDS_Details_Legs_List.add("BenchmarkCurveName");
        CMDS_Details_Legs_List.add("BenchmarkSpread");
        CMDS_Details_Legs_List.add("CouponPaymentFrequency");
        CMDS_Details_Legs_List.add("DayCount");
        CMDS_Details_Legs_List.add("InterestAccrualMethod");
        CMDS_Details_Legs_List.add("InterestAccrualResetFrequency");
        CMDS_Details_Legs_List.add("AccruedInterestAmt");
        CMDS_Details_Legs_List.add("AccruedInterestTotalAmt");
        CMDS_Details_Legs_List.add("ClearingMethod");
        CMDS_Details_Legs_List.add("CouponPaymentDate");
        CMDS_Details_Legs_List.add("CouponPaymentDateReset");
        CMDS_Details_Legs_List.add("DeliveryType");
        CMDS_Details_Legs_List.add("DeliveryType2");
        CMDS_Details_Legs_List.add("DirtyPrice");
        CMDS_Details_Legs_List.add("InterestAccrualDate");
        CMDS_Details_Legs_List.add("InterestAccuralDaysAdjustment");
        CMDS_Details_Legs_List.add("IOIQty");
        CMDS_Details_Legs_List.add("LastQty");
        CMDS_Details_Legs_List.add("OrderQty");
        CMDS_Details_Legs_List.add("Price");
        CMDS_Details_Legs_List.add("SettlCurrAmt");
        CMDS_Details_Legs_List.add("SettlCurrAmt2");
        CMDS_Details_Legs_List.add("SettlType");
        CMDS_Details_Legs_List.add("TotalPrincipal");
        CMDS_Details_Legs_List.add("TradeCashAmt");
        CMDS_Details_Legs_List.add("StrikeYield");
        CMDS_Details_Legs_List.add("Yield2");
        CMDS_Details_Legs_List.add("FkID");

        CMDS_Details_MarginInfos_List.add("IID");
        CMDS_Details_MarginInfos_List.add("Type");
        CMDS_Details_MarginInfos_List.add("PartyRole");
        CMDS_Details_MarginInfos_List.add("Replacement");
        CMDS_Details_MarginInfos_List.add("TotalAmt");
        CMDS_Details_MarginInfos_List.add("SubmitDate");
        CMDS_Details_MarginInfos_List.add("Securities");
        CMDS_Details_MarginInfos_List.add("FkID");

        CMDS_Details_Parties_List.add("IID");
        CMDS_Details_Parties_List.add("PartyID");
        CMDS_Details_Parties_List.add("PartyRole");
        CMDS_Details_Parties_List.add("TraderName");
        CMDS_Details_Parties_List.add("SettlementBankName");
        CMDS_Details_Parties_List.add("CashAccountNumber");
        CMDS_Details_Parties_List.add("FirmFullChineseName");
        CMDS_Details_Parties_List.add("FirmShortChineseName");
        CMDS_Details_Parties_List.add("EligibleCounterParty");
        CMDS_Details_Parties_List.add("SecuritiesAccNumber");
        CMDS_Details_Parties_List.add("PostalAddress");
        CMDS_Details_Parties_List.add("FirmShortName");
        CMDS_Details_Parties_List.add("SecuritiesAccName");
        CMDS_Details_Parties_List.add("CashAccountName");
        CMDS_Details_Parties_List.add("MarginSettlementAccNumber");
        CMDS_Details_Parties_List.add("MarginCustodianAccNumber");
        CMDS_Details_Parties_List.add("MarginSettlementBankName");
        CMDS_Details_Parties_List.add("MarginCustodianInstitutionName");
        CMDS_Details_Parties_List.add("CustodianInstitutionName");
        CMDS_Details_Parties_List.add("SettlementBankSortCode");
        CMDS_Details_Parties_List.add("MarginSettlementAccName");
        CMDS_Details_Parties_List.add("MarginCustodianAccName");
        CMDS_Details_Parties_List.add("MarginSettlementBankSortCode");
        CMDS_Details_Parties_List.add("MarginCustodianEntityCode");
        CMDS_Details_Parties_List.add("TraderChineseName");
        CMDS_Details_Parties_List.add("CfetsMarginSettlementAccNumber");
        CMDS_Details_Parties_List.add("CollateralManagementInstitutionID");
        CMDS_Details_Parties_List.add("OtherSystemCode");
        CMDS_Details_Parties_List.add("FarLegCashAccName");
        CMDS_Details_Parties_List.add("FarLegSettlementBankName");
        CMDS_Details_Parties_List.add("FarLegCashAccNumber");
        CMDS_Details_Parties_List.add("PhoneNo");
        CMDS_Details_Parties_List.add("FkID");
        CMDS_Details_Parties_List.add("TraderCode");

        CMDS_Details_Underlyings_List.add("IID");
        CMDS_Details_Underlyings_List.add("SecurityID");
        CMDS_Details_Underlyings_List.add("Symbol");
        CMDS_Details_Underlyings_List.add("Qty");
        CMDS_Details_Underlyings_List.add("HairCut");
        CMDS_Details_Underlyings_List.add("Yield");
        CMDS_Details_Underlyings_List.add("Yield2");
        CMDS_Details_Underlyings_List.add("StrikeYield");
        CMDS_Details_Underlyings_List.add("Px");
        CMDS_Details_Underlyings_List.add("Px2");
        CMDS_Details_Underlyings_List.add("AccruedInterestAmt");
        CMDS_Details_Underlyings_List.add("DirtyPrice");
        CMDS_Details_Underlyings_List.add("AccruedInterestAmt2");
        CMDS_Details_Underlyings_List.add("DirtyPrice2");
        CMDS_Details_Underlyings_List.add("CouponPaymentDate");
        CMDS_Details_Underlyings_List.add("CouponRate");
        CMDS_Details_Underlyings_List.add("Discount");
        CMDS_Details_Underlyings_List.add("FkID");


        CMDS_Orders_List.add("IID");
        CMDS_Orders_List.add("SysID");
        CMDS_Orders_List.add("SysOriMsg");
        CMDS_Orders_List.add("SysTimestamp");
        CMDS_Orders_List.add("ClOrdID");
        CMDS_Orders_List.add("ExecID");
        CMDS_Orders_List.add("Price");
        CMDS_Orders_List.add("SecurityID");
        CMDS_Orders_List.add("Side");
        CMDS_Orders_List.add("Text");
        CMDS_Orders_List.add("TransactTime");
        CMDS_Orders_List.add("SettlDate");
        CMDS_Orders_List.add("TradeDate");
        CMDS_Orders_List.add("QuoteID");
        CMDS_Orders_List.add("ExecType");
        CMDS_Orders_List.add("AccruedInterestTotalAmt");
        CMDS_Orders_List.add("SettlDate2");
        CMDS_Orders_List.add("CashHoldingDays");
        CMDS_Orders_List.add("MarketIndicator");
        CMDS_Orders_List.add("RemarkIndicator");
        CMDS_Orders_List.add("SettlCurrAmt2");
        CMDS_Orders_List.add("LastQty");
        CMDS_Orders_List.add("ContingencyIndicator");
        CMDS_Orders_List.add("DealTransType");
        CMDS_Orders_List.add("TradeLimitDays");
        CMDS_Orders_List.add("TradeTime");
        CMDS_Orders_List.add("TradeType");
        CMDS_Orders_List.add("TradeMethod");
        CMDS_Orders_List.add("DataCategoryIndicator");
        CMDS_Orders_List.add("SettlCurrency");
        CMDS_Orders_List.add("RepoMethod");
        CMDS_Orders_List.add("DeliveryType");
        CMDS_Orders_List.add("DeliveryType2");
        CMDS_Orders_List.add("ClearingMethod");
        CMDS_Orders_List.add("SequelIndicator");
        CMDS_Orders_List.add("OrigTradeID");
        CMDS_Orders_List.add("TradeCashAmt");
        CMDS_Orders_List.add("MarginRequired");
        CMDS_Orders_List.add("Reference");
        CMDS_Orders_List.add("AccruedInterestAmt");
        CMDS_Orders_List.add("DirtyPrice");
        CMDS_Orders_List.add("Principal");
        CMDS_Orders_List.add("TotalPrincipal");
        CMDS_Orders_List.add("TermToMaturity");
        CMDS_Orders_List.add("CashBondIndicator");
        CMDS_Orders_List.add("SettlCurrAmt");
        CMDS_Orders_List.add("SecurityGroup");
        CMDS_Orders_List.add("LastPx");
        CMDS_Orders_List.add("ClosePositionIndicator");
        CMDS_Orders_List.add("Symbol");
        CMDS_Orders_List.add("StartDate");
        CMDS_Orders_List.add("EndDate");
        CMDS_Orders_List.add("CouponPaymentDateReset");
        CMDS_Orders_List.add("InterestAccuralDaysAdjustment");
        CMDS_Orders_List.add("FirstPeriodStartDate");
        CMDS_Orders_List.add("TrdType");
        CMDS_Orders_List.add("DisputeSettlementMethod");
        CMDS_Orders_List.add("CouponPaymentIndicator");
        CMDS_Orders_List.add("BenchmarkCurveName");
        CMDS_Orders_List.add("CouponPaymentDate");
        CMDS_Orders_List.add("DayCount");
        CMDS_Orders_List.add("InterestFixDate");
        CMDS_Orders_List.add("TradeFwdDays");
        CMDS_Orders_List.add("PaymentDate");
        CMDS_Orders_List.add("StrikePrice");
        CMDS_Orders_List.add("DeliveryForm");
        CMDS_Orders_List.add("OptPayoutType");
        CMDS_Orders_List.add("MaturityDate");
        CMDS_Orders_List.add("OptPremiumAmt");
        CMDS_Orders_List.add("Spread");
        CMDS_Orders_List.add("CouponPaymentFrequency");
        CMDS_Orders_List.add("StrikeYield");
        CMDS_Orders_List.add("Yield2");
        CMDS_Orders_List.add("StopYield");
        CMDS_Orders_List.add("Discount");
        CMDS_Orders_List.add("IniExReqIndicator");
        CMDS_Orders_List.add("IniExAmount");
        CMDS_Orders_List.add("IniExDate");
        CMDS_Orders_List.add("IniExDirIndicator");
        CMDS_Orders_List.add("MiscFeeAmt");
        CMDS_Orders_List.add("CalculateAgency");
        CMDS_Orders_List.add("OrdQtyResetFrequency");
        CMDS_Orders_List.add("OrdQtyResetPercentage");
        CMDS_Orders_List.add("OrdQtyResetDate");
        CMDS_Orders_List.add("OrdQtyResetType");
        CMDS_Orders_List.add("OrdQtyResetAmount");
        CMDS_Orders_List.add("OrdQtyResetRequired");
        CMDS_Orders_List.add("StubIndicator");
        CMDS_Orders_List.add("StubRateFixedDate2");
        CMDS_Orders_List.add("StubRateFixedDate");
        CMDS_Orders_List.add("SettlType");

        CMDS_Quotes_List.add("IID");
        CMDS_Quotes_List.add("SysID");
        CMDS_Quotes_List.add("SysOriMsg");
        CMDS_Quotes_List.add("SysTimestamp");
        CMDS_Quotes_List.add("ClOrdID");
        CMDS_Quotes_List.add("TransType");
        CMDS_Quotes_List.add("ID");
        CMDS_Quotes_List.add("Qty");
        CMDS_Quotes_List.add("Price");
        CMDS_Quotes_List.add("SecurityID");
        CMDS_Quotes_List.add("Side");
        CMDS_Quotes_List.add("TransactTime");
        CMDS_Quotes_List.add("Text");
        CMDS_Quotes_List.add("ValidUntilTime");
        CMDS_Quotes_List.add("SettlType");
        CMDS_Quotes_List.add("QuoteStatus");
        CMDS_Quotes_List.add("QuoteType");
        CMDS_Quotes_List.add("DeliveryType");
        CMDS_Quotes_List.add("AccruedInterestTotalAmt");
        CMDS_Quotes_List.add("ContingencyIndicator");
        CMDS_Quotes_List.add("DeliveryType2");
        CMDS_Quotes_List.add("MarketIndicator");
        CMDS_Quotes_List.add("QuoteTime");
        CMDS_Quotes_List.add("RemarkIndicator");
        CMDS_Quotes_List.add("SettlCurrAmt2");
        CMDS_Quotes_List.add("TradeCashAmt");
        CMDS_Quotes_List.add("TradeLimitDays");
        CMDS_Quotes_List.add("DataCategoryIndicator");
        CMDS_Quotes_List.add("SettlCurrency");
        CMDS_Quotes_List.add("RepoMethod");
        CMDS_Quotes_List.add("ClearingMethod");
        CMDS_Quotes_List.add("NegotiationCount");
        CMDS_Quotes_List.add("SequelIndicator");
        CMDS_Quotes_List.add("OrigTradeID");
        CMDS_Quotes_List.add("Symbol");
        CMDS_Quotes_List.add("SettlDate");
        CMDS_Quotes_List.add("SettlCurrAmt");
        CMDS_Quotes_List.add("MarginRequired");
        CMDS_Quotes_List.add("AccruedInterestAmt");
        CMDS_Quotes_List.add("DirtyPrice");
        CMDS_Quotes_List.add("Principal");
        CMDS_Quotes_List.add("TotalPrincipal");
        CMDS_Quotes_List.add("CashBondIndicator");
        CMDS_Quotes_List.add("LastQty");
        CMDS_Quotes_List.add("MaxFloor");
        CMDS_Quotes_List.add("AnonymousIndicator");
        CMDS_Quotes_List.add("MinTickSize");
        CMDS_Quotes_List.add("TradeType");
        CMDS_Quotes_List.add("OrdStatus");
        CMDS_Quotes_List.add("OrdType");
        CMDS_Quotes_List.add("SplitIndicator");
        CMDS_Quotes_List.add("StartDate");
        CMDS_Quotes_List.add("EndDate");
        CMDS_Quotes_List.add("CalculateAgency");
        CMDS_Quotes_List.add("SettlDate2");
        CMDS_Quotes_List.add("CashHoldingDays");
        CMDS_Quotes_List.add("DisputeSettlementMethod");
        CMDS_Quotes_List.add("BenchmarkCurveName");
        CMDS_Quotes_List.add("TradeFwdDays");
        CMDS_Quotes_List.add("InterestFixDate");
        CMDS_Quotes_List.add("MiscFeeAmt");
        CMDS_Quotes_List.add("IniExReqIndicator");
        CMDS_Quotes_List.add("IniExAmount");
        CMDS_Quotes_List.add("IniExDate");
        CMDS_Quotes_List.add("IniExDirIndicator");
        CMDS_Quotes_List.add("OrdQtyResetFrequency");
        CMDS_Quotes_List.add("OrdQtyResetPercentage");
        CMDS_Quotes_List.add("OrdQtyResetDate");
        CMDS_Quotes_List.add("OrdQtyResetType");
        CMDS_Quotes_List.add("OrdQtyResetAmount");
        CMDS_Quotes_List.add("OrdQtyResetRequired");
        CMDS_Quotes_List.add("StubIndicator");
        CMDS_Quotes_List.add("StrikeYield");
        CMDS_Quotes_List.add("Yield2");
        CMDS_Quotes_List.add("StopYield");
        CMDS_Quotes_List.add("Yield");
        CMDS_Quotes_List.add("Discount");
        CMDS_Quotes_List.add("BClearingMethod");
        CMDS_Quotes_List.add("SClearingMethod");
        CMDS_Quotes_List.add("LeavesQty");
        CMDS_Quotes_List.add("BDeliveryTypeOption");
        CMDS_Quotes_List.add("SDeliveryTypeOption");
        CMDS_Quotes_List.add("QuoteReqID");
        CMDS_Quotes_List.add("QueryRequestID");

        CMDS_Details_Benchmarks_List.add("IID");
        CMDS_Details_Benchmarks_List.add("CurveName");
        CMDS_Details_Benchmarks_List.add("SysCreateTime");
        CMDS_Details_Benchmarks_List.add("SysUpdateTime");
        CMDS_Details_Benchmarks_List.add("FkID");

        CMDS_Details_MDEntries_List.add("IID");
        CMDS_Details_MDEntries_List.add("SecurityID");
        CMDS_Details_MDEntries_List.add("SecurityGroup");
        CMDS_Details_MDEntries_List.add("BookType");
        CMDS_Details_MDEntries_List.add("MarketDepth");
        CMDS_Details_MDEntries_List.add("Symbol");
        CMDS_Details_MDEntries_List.add("TermToMaturity");
        CMDS_Details_MDEntries_List.add("AvgTerm");
        CMDS_Details_MDEntries_List.add("TransactionNum");
        CMDS_Details_MDEntries_List.add("Side");
        CMDS_Details_MDEntries_List.add("PriceLevel");
        CMDS_Details_MDEntries_List.add("OrdType");
        CMDS_Details_MDEntries_List.add("NumberOfOrders");
        CMDS_Details_MDEntries_List.add("OptPayoutType");
        CMDS_Details_MDEntries_List.add("MaturityDate");
        CMDS_Details_MDEntries_List.add("LastDealtRate");
        CMDS_Details_MDEntries_List.add("BestRate");
        CMDS_Details_MDEntries_List.add("LastAllInDealtRate");
        CMDS_Details_MDEntries_List.add("IndexValueOrBenchmarkValue");
        CMDS_Details_MDEntries_List.add("OpeningPrice");
        CMDS_Details_MDEntries_List.add("ClosingPrice");
        CMDS_Details_MDEntries_List.add("TradingSessionHighDealtPrice");
        CMDS_Details_MDEntries_List.add("TradingSessionLowDealtPrice");
        CMDS_Details_MDEntries_List.add("NearLegHigh");
        CMDS_Details_MDEntries_List.add("FarLegHigh");
        CMDS_Details_MDEntries_List.add("TradeVolume");
        CMDS_Details_MDEntries_List.add("NearLegLow");
        CMDS_Details_MDEntries_List.add("FarLegLow");
        CMDS_Details_MDEntries_List.add("NearLegOpen");
        CMDS_Details_MDEntries_List.add("FarLegOpen");
        CMDS_Details_MDEntries_List.add("NearLegLast");
        CMDS_Details_MDEntries_List.add("MidPriceOrCentralParityRate");
        CMDS_Details_MDEntries_List.add("FarLegLast");
        CMDS_Details_MDEntries_List.add("NetBasisChangeOverPrevious");
        CMDS_Details_MDEntries_List.add("NetPercentageChangeOverMidPrice");
        CMDS_Details_MDEntries_List.add("NetBasisChangeOverMidPrice");
        CMDS_Details_MDEntries_List.add("NetPercentageChangeOverYield");
        CMDS_Details_MDEntries_List.add("NetBasisChangeOverYield");
        CMDS_Details_MDEntries_List.add("GoldBenchmarkValue");
        CMDS_Details_MDEntries_List.add("ValuationPrice");
        CMDS_Details_MDEntries_List.add("ReferencePrice");
        CMDS_Details_MDEntries_List.add("LastExpectedAllInPrice");
        CMDS_Details_MDEntries_List.add("PreviousClosingExpectedAllInPrice");
        CMDS_Details_MDEntries_List.add("ClosingExpectedAllInPrice");
        CMDS_Details_MDEntries_List.add("WeightedAverageExpectedAllInPrice");
        CMDS_Details_MDEntries_List.add("PreviousWeightedAverageExpectedAllInPrice");
        CMDS_Details_MDEntries_List.add("OpenExpectedAllInPrice");
        CMDS_Details_MDEntries_List.add("HighestExpectedAllInPrice");
        CMDS_Details_MDEntries_List.add("LowestExpectedAllInPrice");
        CMDS_Details_MDEntries_List.add("SettlementDate");
        CMDS_Details_MDEntries_List.add("ChangeOver");
        CMDS_Details_MDEntries_List.add("TradeAmout");
        CMDS_Details_MDEntries_List.add("TradingBankUpperLimit");
        CMDS_Details_MDEntries_List.add("TradingBankLowerLimit");
        CMDS_Details_MDEntries_List.add("LatestPrice");
        CMDS_Details_MDEntries_List.add("PreviousClosingPrice");
        CMDS_Details_MDEntries_List.add("WeightedAveragePrice");
        CMDS_Details_MDEntries_List.add("PreviousWeightedAveragePrice");
        CMDS_Details_MDEntries_List.add("PreviousClosingYield");
        CMDS_Details_MDEntries_List.add("PreviousWeightedAverageYield");
        CMDS_Details_MDEntries_List.add("OpenYield");
        CMDS_Details_MDEntries_List.add("LastYield");
        CMDS_Details_MDEntries_List.add("HighestYield");
        CMDS_Details_MDEntries_List.add("LowestYield");
        CMDS_Details_MDEntries_List.add("ClosingYield");
        CMDS_Details_MDEntries_List.add("WeightedAverageYield");
        CMDS_Details_MDEntries_List.add("PreviousClosingSpread");
        CMDS_Details_MDEntries_List.add("PreviousWeightedAverageSpread");
        CMDS_Details_MDEntries_List.add("OpenSpread");
        CMDS_Details_MDEntries_List.add("LastSpread");
        CMDS_Details_MDEntries_List.add("LowestSpread");
        CMDS_Details_MDEntries_List.add("HighestSpread");
        CMDS_Details_MDEntries_List.add("ClosingSpread");
        CMDS_Details_MDEntries_List.add("WeightedAverageSpread");
        CMDS_Details_MDEntries_List.add("BestAllInPrice");
        CMDS_Details_MDEntries_List.add("SessionReferencePrice");
        CMDS_Details_MDEntries_List.add("SysCreateTime");
        CMDS_Details_MDEntries_List.add("SysUpdateTime");
        CMDS_Details_MDEntries_List.add("FkID");

        CMDS_MarketData_List.add("IID");
        CMDS_MarketData_List.add("SysID");
        CMDS_MarketData_List.add("TransactTime");
        CMDS_MarketData_List.add("MDType");
        CMDS_MarketData_List.add("IOPValue");
        CMDS_MarketData_List.add("MarketIndicator");
        CMDS_MarketData_List.add("MDSubType");
        CMDS_MarketData_List.add("TradeMethod");
        CMDS_MarketData_List.add("ClearingMethod");
        CMDS_MarketData_List.add("TradeFwdDays");
        CMDS_MarketData_List.add("TradeLimitDays");
        CMDS_MarketData_List.add("StartDate");
        CMDS_MarketData_List.add("EndDate");
        CMDS_MarketData_List.add("SysCreateTime");
        CMDS_MarketData_List.add("SysUpdateTime");
    }


    /**
     * 是否为空
     *
     * @param string
     * @return
     */
    private static boolean isEmpty(String string) {
        if (null == string || "".equals(string)) {
            return true;
        }
        return false;
    }

    //------------------------------------------------------------节点名称的映射
    /**
     * 自定义映射
     *
     * @param original    原始值
     * @param constantMap 映射列表.是一个JSON对象。
     */
    private static String defineMap(String original, Map<String, String> constantMap) {
        String value = constantMap.get(original);
        if (isEmpty(value)) {
            return original;
        }
        return value;
    }

    /**
     * 获取对话报价的映射结果
     * @param original
     * @return
     */
    public static String getDialogQuoteMap(String original) {
        return defineMap(original, QUOTE_CONSTANT);
    }

    /**
     * 获取交易方映射结果
     * @param original
     * @return
     */
    public static String getPartyMap(String original) {
        return defineMap(original, PARTY_CONSTANT);
    }

    /**
     * 获取成交报价映射结果
     * @param original
     * @return
     */
    public static String getExecutionReportMap(String original) {
        return defineMap(original, ExecutionReport_CONSTANT);
    }

    /**
     * 获取 NoUnderlyings 的映射
     * @param original
     * @return
     */
    public static String getNoUnderlyingsMap(String original) {
        return defineMap(original, NOUNDERLYING_CONSTANT);
    }


    /**
     * 获取 NoMarginInfos 的映射
     * @param original
     * @return
     */
    public static String getNoMarginInfosMap(String original) {
        return defineMap(original, NOMARGININFOS_CONSTANT);
    }

    /**
     * 获取 NoLegs 的映射
     * @param original
     * @return
     */
    public static String getNoLegsMap(String original) {
        return defineMap(original, NOLEGS_CONSTANT);
    }

    /**
     * 获取 CMDS NoMDEntries 的映射
     * @param original
     * @return
     */
    public static String getNoMDEntriesMap(String original) {
        return defineMap(original, CMDS_Details_MDEntries_CONSTANT);
    }

    /**
     * 获取 CMDS NoBenchmarks 的映射
     * @param original
     * @return
     */
    public static String getNoBenchmarksMap(String original) {
        return defineMap(original, CMDS_Details_Benchmarks_CONSTANT);
    }

    /**
     * 为普通的节点内容添加 <![CDATA[  ]]>
     * @param marginSecuritiesID
     * @param marginAMT
     * @param marginSymbol
     * @return
     */
    public static String getNoMarginSecurities(String marginSecuritiesID, String marginAMT, String marginSymbol) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("<Security>");
        stringBuilder.append(String.format("<MarginSecuritiesID>%s</MarginSecuritiesID>", marginSecuritiesID));
        stringBuilder.append(String.format("<MarginAMT>%s</MarginAMT>", marginAMT));
        stringBuilder.append(String.format("<MarginSymbol>%s</MarginSymbol>", marginSymbol));
        stringBuilder.append("</Security>");
        return stringBuilder.toString();
    }


    //------------------------------------------------------------对数据的格式化

    /**
     * 获取格式化的日期。如果不需要对利率进行互换，使用这个。
     * @see #getFormatValue(String)
     * @param original 原始日期。如：20170216-14:53:35.026
     * @returns {*} 将-替换后的日期。如：20170216 14:53:35.026
     */
    public static String getFormatDate(String original) {
        String dateReg = "^[0-9]{8}-[0-9]{2}:[0-9]{2}:[0-9]{2}\\.[0-9]{3}$";
        if (original.matches(dateReg)) {
            return original.replace('-', ' ');
        }
        return original;
    }


    /**
     * 对日期进行格式化；对利率进行处理。
     *
     * @param nodeName 节点名称
     * @param original 原始值
     * @return
     */
    public static String getFormatDateAndRate(String nodeName, String original) {
        if ("Price".equals(nodeName)) {
            return getRate(original);
        } else {
            return getFormatValue(original);
        }
    }

    /**
     * 获取交易方式-格式化数据
     * @param originalVal
     * @return
     */
    public static String getTransTypeFormatValue(final String originalVal) {
        if("0".equals(originalVal)) {
            return "N"; //新建
        } else if("5".equals(originalVal)) {
            return "R"; //修改
        }
        return originalVal;
    }

    /**
     * 对原始内容进行格式化
     * @param original 原始内容
     * @return
     */
    public static String getFormatValue(String original) {
        //1. yyyyMMdd-HH:mm:ss.SSS
        String dateReg = "^[0-9]{8}-[0-9]{2}:[0-9]{2}:[0-9]{2}\\.[0-9]{3}$";
        if (original.matches(dateReg)) {
            return original.replace('-', ' ');
        }

        //2. yyyyMMdd-HH:mm:ss
        String dateWithOutMillsReg = "^[0-9]{8}-[0-9]{2}:[0-9]{2}:[0-9]{2}";
        if (original.matches(dateWithOutMillsReg)) {
            return original.replace('-', ' ');
        }
        return original;
    }

    /**
     * 获取当前金额对应的利率
     *
     * @param original 原始金额
     * @return 对金额进行运算之后的结果
     */
    public static String getRate(String original) {
        try {
            Double value = Double.valueOf(original);
            Double rateVal = value / 100.0;
            return rateVal.toString();
        } catch (NumberFormatException e) {
            return original;
        }
    }


    /**
     * 从数据-LEG表-是否包含对应的xml字段
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isDetailsLegsContains(String xmlFieldName) {
        return listContains(CMDS_Details_Legs_List, xmlFieldName);
    }

    /**
     * 从数据-质押权表-是否包含对应的xml字段
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isDetailsMarginInfosContains(String xmlFieldName) {
        return listContains(CMDS_Details_MarginInfos_List, xmlFieldName);
    }

    /**
     * 从数据-交易方表-是否包含对应的xml字段
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isDetailsPartiesContains(String xmlFieldName) {
        return listContains(CMDS_Details_Parties_List, xmlFieldName);
    }

    /**
     * 从数据-Underlyings表-是否包含对应的xml字段
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isDetailsUnderlyingsContains(String xmlFieldName) {
        return listContains(CMDS_Details_Underlyings_List, xmlFieldName);
    }

    /**
     * 从数据-Underlyings表-是否包含对应的xml字段
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isMarketDataSnapshotContains(String xmlFieldName) {
        return listContains(CMDS_MarketDataSnapshot_List, xmlFieldName);
    }

    /**
     * 主数据-报价表-是否包含对应的xml字段
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isQuoteContains(String xmlFieldName) {
        return listContains(CMDS_Quotes_List, xmlFieldName);
    }

    /**
     * 主数据-成交表-是否包含对应的xml字段
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isOrderContains(String xmlFieldName) {
        return listContains(CMDS_Orders_List, xmlFieldName);
    }


    /**
     * 主数据-DetailsBenchmarks-是否包含对应的xml字段
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isDetailsBenchmarksContains(String xmlFieldName) {
        return listContains(CMDS_Details_Benchmarks_List, xmlFieldName);
    }

    /**
     * 主数据-DetailsMDEntries-是否包含对应的xml字段
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isDetailsMDEntriesContains(String xmlFieldName) {
        return listContains(CMDS_Details_MDEntries_List, xmlFieldName);
    }

    /**
     * 主数据-DetailsBenchmarks-是否包含对应的xml字段
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isMarketDataContains(String xmlFieldName) {
        return listContains(CMDS_MarketData_List, xmlFieldName);
    }

    /**
     * 判断字符串列表是否包含字段。
     * @param strings 字符串列表
     * @param string 字符串
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    private static String listContains(List<String> strings, String string) {
        boolean isContains = strings.contains(string);
        if(isContains) {
            return "1";
        }
        return "0";
    }

}
