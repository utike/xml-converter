package cn.com.haiyi.trade.xstl;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * @author xml转换工具类
 * @since 1.7
 * Created by bbhou on 2017/6/16.
 */
public class XsltApiUtil {

    /**
     * xml 和 table 字段之间的映射
     */
    private static Map<String, String> PARTY_CONSTANT = new HashMap<>();
    private static Map<String, String> QUOTE_CONSTANT = new HashMap<>();
    private static Map<String, String> ExecutionReport_CONSTANT = new HashMap<>();
    private static Map<String, String> NOUNDERLYING_CONSTANT = new HashMap<>();
    private static Map<String, String> NOMARGININFOS_CONSTANT = new HashMap<>();
    private static Map<String, String> NOLEGS_CONSTANT = new HashMap<>();

    private static Map<String, String> ORDER_TO_QUOTE_CONSTANT = new HashMap<>();   //订单转化为报价

    /**
     * 数据库表字段列表
     */
    private static List<String> cfets_error_List = new LinkedList<>();
    private static List<String> details_mdEntries_List = new LinkedList<>();
    private static List<String> cfets_marketdata_ack_List = new LinkedList<>();
    private static List<String> cfets_orders_List = new LinkedList<>();
    private static List<String> cfets_quotes_List = new LinkedList<>();
    private static List<String> details_legs_List = new LinkedList<>();
    private static List<String> cfets_marketdata_List = new LinkedList<>();
    private static List<String> error_List = new LinkedList<>();
    private static List<String> details_underlyings_List = new LinkedList<>();
    private static List<String> details_marginInfos_List = new LinkedList<>();
    private static List<String> serialNo_List = new LinkedList<>();
    private static List<String> details_parties_List = new LinkedList<>();

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
         * 订单转化为报价
         */
        ORDER_TO_QUOTE_CONSTANT.put("QuoteTransType", "TransType");
        ORDER_TO_QUOTE_CONSTANT.put("LastQty", "Qty");
        ORDER_TO_QUOTE_CONSTANT.put("GrossTradeAmt", "TradeCashAmt");
        ORDER_TO_QUOTE_CONSTANT.put("QuoteID", "ID");


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

        //-------------------------------------------------------------------------------field List
        cfets_error_List.add("IID");
        cfets_error_List.add("SysID");
        cfets_error_List.add("SysOriMsg");
        cfets_error_List.add("SysDirect");
        cfets_error_List.add("SysStatus");
        cfets_error_List.add("SysSenderApp");
        cfets_error_List.add("SysSender");
        cfets_error_List.add("SysTimestamp");
        cfets_error_List.add("ClOrdID");
        cfets_error_List.add("ApplErrorCode");
        cfets_error_List.add("ApplErrorDesc");
        cfets_error_List.add("RefMsgType");
        cfets_error_List.add("insertTime");
        cfets_error_List.add("TransactTime");
        details_mdEntries_List.add("IID");
        details_mdEntries_List.add("FkID");
        details_mdEntries_List.add("MDEntryType");
        details_mdEntries_List.add("LastPx");
        details_mdEntries_List.add("MDEntryPx");
        details_mdEntries_List.add("MDEntrySize");
        details_mdEntries_List.add("MDEntryDate");
        details_mdEntries_List.add("MDEntryTime");
        details_mdEntries_List.add("MDPriceLevel");
        details_mdEntries_List.add("MDQuoteType");
        details_mdEntries_List.add("MinQty");
        details_mdEntries_List.add("QuoteEntryID");
        details_mdEntries_List.add("SettlCurrency");
        details_mdEntries_List.add("SettlDate");
        details_mdEntries_List.add("SettlType");
        details_mdEntries_List.add("ClearingMethod");
        details_mdEntries_List.add("BDeliveryTypeOption");
        details_mdEntries_List.add("SDeliveryTypeOption");
        cfets_marketdata_ack_List.add("IID");
        cfets_marketdata_ack_List.add("SysID");
        cfets_marketdata_ack_List.add("SysOriMsg");
        cfets_marketdata_ack_List.add("SysDirect");
        cfets_marketdata_ack_List.add("SysStatus");
        cfets_marketdata_ack_List.add("SysSenderApp");
        cfets_marketdata_ack_List.add("SysSender");
        cfets_marketdata_ack_List.add("SysTimestamp");
        cfets_marketdata_ack_List.add("TransactTime");
        cfets_marketdata_ack_List.add("MDBookType");
        cfets_marketdata_ack_List.add("SubscriptionRequestType");
        cfets_marketdata_ack_List.add("MDReqID");
        cfets_marketdata_ack_List.add("SubscriptionStatus");
        cfets_marketdata_ack_List.add("Text");
        cfets_marketdata_ack_List.add("SecurityID");
        cfets_marketdata_ack_List.add("MarketIndicator");
        cfets_marketdata_ack_List.add("SecurityType");
        cfets_orders_List.add("IID");
        cfets_orders_List.add("SysID");
        cfets_orders_List.add("SysOriMsg");
        cfets_orders_List.add("SysDirect");
        cfets_orders_List.add("SysStatus");
        cfets_orders_List.add("SysSenderApp");
        cfets_orders_List.add("SysSender");
        cfets_orders_List.add("SysTimestamp");
        cfets_orders_List.add("ClOrdID");
        cfets_orders_List.add("ExecID");
        cfets_orders_List.add("Price");
        cfets_orders_List.add("SecurityID");
        cfets_orders_List.add("Side");
        cfets_orders_List.add("Text");
        cfets_orders_List.add("TransactTime");
        cfets_orders_List.add("SettlDate");
        cfets_orders_List.add("TradeDate");
        cfets_orders_List.add("QuoteID");
        cfets_orders_List.add("ExecType");
        cfets_orders_List.add("AccruedInterestTotalAmt");
        cfets_orders_List.add("SettlDate2");
        cfets_orders_List.add("CashHoldingDays");
        cfets_orders_List.add("MarketIndicator");
        cfets_orders_List.add("RemarkIndicator");
        cfets_orders_List.add("SettlCurrAmt2");
        cfets_orders_List.add("LastQty");
        cfets_orders_List.add("ContingencyIndicator");
        cfets_orders_List.add("DealTransType");
        cfets_orders_List.add("TradeLimitDays");
        cfets_orders_List.add("TradeTime");
        cfets_orders_List.add("TradeType");
        cfets_orders_List.add("TradeMethod");
        cfets_orders_List.add("DataCategoryIndicator");
        cfets_orders_List.add("SettlCurrency");
        cfets_orders_List.add("RepoMethod");
        cfets_orders_List.add("DeliveryType");
        cfets_orders_List.add("DeliveryType2");
        cfets_orders_List.add("ClearingMethod");
        cfets_orders_List.add("SequelIndicator");
        cfets_orders_List.add("OrigTradeID");
        cfets_orders_List.add("TradeCashAmt");
        cfets_orders_List.add("MarginRequired");
        cfets_orders_List.add("Reference");
        cfets_orders_List.add("AccruedInterestAmt");
        cfets_orders_List.add("DirtyPrice");
        cfets_orders_List.add("Principal");
        cfets_orders_List.add("TotalPrincipal");
        cfets_orders_List.add("TermToMaturity");
        cfets_orders_List.add("CashBondIndicator");
        cfets_orders_List.add("SettlCurrAmt");
        cfets_orders_List.add("SecurityGroup");
        cfets_orders_List.add("LastPx");
        cfets_orders_List.add("ClosePositionIndicator");
        cfets_orders_List.add("Symbol");
        cfets_orders_List.add("StartDate");
        cfets_orders_List.add("EndDate");
        cfets_orders_List.add("CouponPaymentDateReset");
        cfets_orders_List.add("InterestAccuralDaysAdjustment");
        cfets_orders_List.add("FirstPeriodStartDate");
        cfets_orders_List.add("TrdType");
        cfets_orders_List.add("DisputeSettlementMethod");
        cfets_orders_List.add("CouponPaymentIndicator");
        cfets_orders_List.add("BenchmarkCurveName");
        cfets_orders_List.add("CouponPaymentDate");
        cfets_orders_List.add("DayCount");
        cfets_orders_List.add("InterestFixDate");
        cfets_orders_List.add("TradeFwdDays");
        cfets_orders_List.add("PaymentDate");
        cfets_orders_List.add("StrikePrice");
        cfets_orders_List.add("DeliveryForm");
        cfets_orders_List.add("OptPayoutType");
        cfets_orders_List.add("MaturityDate");
        cfets_orders_List.add("OptPremiumAmt");
        cfets_orders_List.add("Spread");
        cfets_orders_List.add("CouponPaymentFrequency");
        cfets_orders_List.add("StrikeYield");
        cfets_orders_List.add("Yield2");
        cfets_orders_List.add("StopYield");
        cfets_orders_List.add("Discount");
        cfets_orders_List.add("IniExReqIndicator");
        cfets_orders_List.add("IniExAmount");
        cfets_orders_List.add("IniExDate");
        cfets_orders_List.add("IniExDirIndicator");
        cfets_orders_List.add("MiscFeeAmt");
        cfets_orders_List.add("CalculateAgency");
        cfets_orders_List.add("OrdQtyResetFrequency");
        cfets_orders_List.add("OrdQtyResetPercentage");
        cfets_orders_List.add("OrdQtyResetDate");
        cfets_orders_List.add("OrdQtyResetType");
        cfets_orders_List.add("OrdQtyResetAmount");
        cfets_orders_List.add("OrdQtyResetRequired");
        cfets_orders_List.add("StubIndicator");
        cfets_orders_List.add("StubRateFixedDate2");
        cfets_orders_List.add("StubRateFixedDate");
        cfets_orders_List.add("SettlType");
        cfets_quotes_List.add("IID");
        cfets_quotes_List.add("SysID");
        cfets_quotes_List.add("SysOriMsg");
        cfets_quotes_List.add("SysDirect");
        cfets_quotes_List.add("SysStatus");
        cfets_quotes_List.add("SysSenderApp");
        cfets_quotes_List.add("SysSender");
        cfets_quotes_List.add("SysTimestamp");
        cfets_quotes_List.add("ClOrdID");
        cfets_quotes_List.add("TransType");
        cfets_quotes_List.add("ID");
        cfets_quotes_List.add("Qty");
        cfets_quotes_List.add("Price");
        cfets_quotes_List.add("SecurityID");
        cfets_quotes_List.add("Side");
        cfets_quotes_List.add("TransactTime");
        cfets_quotes_List.add("Text");
        cfets_quotes_List.add("ValidUntilTime");
        cfets_quotes_List.add("SettlType");
        cfets_quotes_List.add("QuoteStatus");
        cfets_quotes_List.add("QuoteType");
        cfets_quotes_List.add("DeliveryType");
        cfets_quotes_List.add("AccruedInterestTotalAmt");
        cfets_quotes_List.add("ContingencyIndicator");
        cfets_quotes_List.add("DeliveryType2");
        cfets_quotes_List.add("MarketIndicator");
        cfets_quotes_List.add("QuoteTime");
        cfets_quotes_List.add("RemarkIndicator");
        cfets_quotes_List.add("SettlCurrAmt2");
        cfets_quotes_List.add("TradeCashAmt");
        cfets_quotes_List.add("TradeLimitDays");
        cfets_quotes_List.add("DataCategoryIndicator");
        cfets_quotes_List.add("SettlCurrency");
        cfets_quotes_List.add("RepoMethod");
        cfets_quotes_List.add("ClearingMethod");
        cfets_quotes_List.add("NegotiationCount");
        cfets_quotes_List.add("SequelIndicator");
        cfets_quotes_List.add("OrigTradeID");
        cfets_quotes_List.add("Symbol");
        cfets_quotes_List.add("SettlDate");
        cfets_quotes_List.add("SettlCurrAmt");
        cfets_quotes_List.add("MarginRequired");
        cfets_quotes_List.add("AccruedInterestAmt");
        cfets_quotes_List.add("DirtyPrice");
        cfets_quotes_List.add("Principal");
        cfets_quotes_List.add("TotalPrincipal");
        cfets_quotes_List.add("CashBondIndicator");
        cfets_quotes_List.add("LastQty");
        cfets_quotes_List.add("MaxFloor");
        cfets_quotes_List.add("AnonymousIndicator");
        cfets_quotes_List.add("MinTickSize");
        cfets_quotes_List.add("TradeType");
        cfets_quotes_List.add("OrdStatus");
        cfets_quotes_List.add("OrdType");
        cfets_quotes_List.add("SplitIndicator");
        cfets_quotes_List.add("StartDate");
        cfets_quotes_List.add("EndDate");
        cfets_quotes_List.add("CalculateAgency");
        cfets_quotes_List.add("SettlDate2");
        cfets_quotes_List.add("CashHoldingDays");
        cfets_quotes_List.add("DisputeSettlementMethod");
        cfets_quotes_List.add("BenchmarkCurveName");
        cfets_quotes_List.add("TradeFwdDays");
        cfets_quotes_List.add("InterestFixDate");
        cfets_quotes_List.add("MiscFeeAmt");
        cfets_quotes_List.add("IniExReqIndicator");
        cfets_quotes_List.add("IniExAmount");
        cfets_quotes_List.add("IniExDate");
        cfets_quotes_List.add("IniExDirIndicator");
        cfets_quotes_List.add("OrdQtyResetFrequency");
        cfets_quotes_List.add("OrdQtyResetPercentage");
        cfets_quotes_List.add("OrdQtyResetDate");
        cfets_quotes_List.add("OrdQtyResetType");
        cfets_quotes_List.add("OrdQtyResetAmount");
        cfets_quotes_List.add("OrdQtyResetRequired");
        cfets_quotes_List.add("StubIndicator");
        cfets_quotes_List.add("StrikeYield");
        cfets_quotes_List.add("Yield2");
        cfets_quotes_List.add("StopYield");
        cfets_quotes_List.add("Yield");
        cfets_quotes_List.add("Discount");
        cfets_quotes_List.add("BClearingMethod");
        cfets_quotes_List.add("SClearingMethod");
        cfets_quotes_List.add("LeavesQty");
        cfets_quotes_List.add("BDeliveryTypeOption");
        cfets_quotes_List.add("SDeliveryTypeOption");
        cfets_quotes_List.add("QuoteReqID");
        cfets_quotes_List.add("QueryRequestID");
        cfets_quotes_List.add("TradeMethod");
        details_legs_List.add("IID");
        details_legs_List.add("Side");
        details_legs_List.add("PriceType");
        details_legs_List.add("BenchmarkCurveName");
        details_legs_List.add("BenchmarkSpread");
        details_legs_List.add("CouponPaymentFrequency");
        details_legs_List.add("DayCount");
        details_legs_List.add("InterestAccrualMethod");
        details_legs_List.add("InterestAccrualResetFrequency");
        details_legs_List.add("AccruedInterestAmt");
        details_legs_List.add("AccruedInterestTotalAmt");
        details_legs_List.add("ClearingMethod");
        details_legs_List.add("CouponPaymentDate");
        details_legs_List.add("CouponPaymentDateReset");
        details_legs_List.add("DeliveryType");
        details_legs_List.add("DeliveryType2");
        details_legs_List.add("DirtyPrice");
        details_legs_List.add("InterestAccrualDate");
        details_legs_List.add("InterestAccuralDaysAdjustment");
        details_legs_List.add("IOIQty");
        details_legs_List.add("LastQty");
        details_legs_List.add("OrderQty");
        details_legs_List.add("Price");
        details_legs_List.add("SettlCurrAmt");
        details_legs_List.add("SettlCurrAmt2");
        details_legs_List.add("SettlType");
        details_legs_List.add("TotalPrincipal");
        details_legs_List.add("TradeCashAmt");
        details_legs_List.add("StrikeYield");
        details_legs_List.add("Yield2");
        details_legs_List.add("FkID");
        cfets_marketdata_List.add("IID");
        cfets_marketdata_List.add("SysID");
        cfets_marketdata_List.add("SysOriMsg");
        cfets_marketdata_List.add("SysDirect");
        cfets_marketdata_List.add("SysStatus");
        cfets_marketdata_List.add("SysSenderApp");
        cfets_marketdata_List.add("SysSender");
        cfets_marketdata_List.add("SysTimestamp");
        cfets_marketdata_List.add("SecurityID");
        cfets_marketdata_List.add("Symbol");
        cfets_marketdata_List.add("TransactTime");
        cfets_marketdata_List.add("SecurityType");
        cfets_marketdata_List.add("MarketDepth");
        cfets_marketdata_List.add("MDBookType");
        cfets_marketdata_List.add("MarketIndicator");
        error_List.add("IID");
        error_List.add("SMM_MKT_SRNO");
        error_List.add("SMM_MESG_CODE_NMBR");
        error_List.add("SMM_MESG_STRING_CLAUSE");
        error_List.add("SMM_MESG_STRING_ENCD_CLAUSE");
        details_underlyings_List.add("IID");
        details_underlyings_List.add("SecurityID");
        details_underlyings_List.add("Symbol");
        details_underlyings_List.add("Qty");
        details_underlyings_List.add("HairCut");
        details_underlyings_List.add("Yield");
        details_underlyings_List.add("Yield2");
        details_underlyings_List.add("StrikeYield");
        details_underlyings_List.add("Px");
        details_underlyings_List.add("Px2");
        details_underlyings_List.add("AccruedInterestAmt");
        details_underlyings_List.add("DirtyPrice");
        details_underlyings_List.add("AccruedInterestAmt2");
        details_underlyings_List.add("DirtyPrice2");
        details_underlyings_List.add("CouponPaymentDate");
        details_underlyings_List.add("CouponRate");
        details_underlyings_List.add("Discount");
        details_underlyings_List.add("FkID");
        details_marginInfos_List.add("IID");
        details_marginInfos_List.add("Type");
        details_marginInfos_List.add("PartyRole");
        details_marginInfos_List.add("Replacement");
        details_marginInfos_List.add("TotalAmt");
        details_marginInfos_List.add("SubmitDate");
        details_marginInfos_List.add("Securities");
        details_marginInfos_List.add("FkID");
        serialNo_List.add("ClientName");
        serialNo_List.add("CreateDate");
        serialNo_List.add("Prefix");
        serialNo_List.add("SerialNo");
        details_parties_List.add("IID");
        details_parties_List.add("PartyID");
        details_parties_List.add("PartyRole");
        details_parties_List.add("TraderName");
        details_parties_List.add("SettlementBankName");
        details_parties_List.add("CashAccountNumber");
        details_parties_List.add("FirmFullChineseName");
        details_parties_List.add("FirmShortChineseName");
        details_parties_List.add("EligibleCounterParty");
        details_parties_List.add("SecuritiesAccNumber");
        details_parties_List.add("PostalAddress");
        details_parties_List.add("FirmShortName");
        details_parties_List.add("SecuritiesAccName");
        details_parties_List.add("CashAccountName");
        details_parties_List.add("MarginSettlementAccNumber");
        details_parties_List.add("MarginCustodianAccNumber");
        details_parties_List.add("MarginSettlementBankName");
        details_parties_List.add("MarginCustodianInstitutionName");
        details_parties_List.add("CustodianInstitutionName");
        details_parties_List.add("SettlementBankSortCode");
        details_parties_List.add("MarginSettlementAccName");
        details_parties_List.add("MarginCustodianAccName");
        details_parties_List.add("MarginSettlementBankSortCode");
        details_parties_List.add("MarginCustodianEntityCode");
        details_parties_List.add("TraderChineseName");
        details_parties_List.add("CfetsMarginSettlementAccNumber");
        details_parties_List.add("CollateralManagementInstitutionID");
        details_parties_List.add("OtherSystemCode");
        details_parties_List.add("FarLegCashAccName");
        details_parties_List.add("FarLegSettlementBankName");
        details_parties_List.add("FarLegCashAccNumber");
        details_parties_List.add("PhoneNo");
        details_parties_List.add("FkID");
        details_parties_List.add("TraderCode");
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
     * 获取订单转化为报价的映射结果
     * @param original
     * @return
     */
    public static String getOrderToQuoteMap(String original) {
        return defineMap(original, ORDER_TO_QUOTE_CONSTANT);
    }

    /**
     * 获取对话报价的映射结果
     *
     * @param original
     * @return
     */
    public static String getDialogQuoteMap(String original) {
        return defineMap(original, QUOTE_CONSTANT);
    }

    /**
     * 获取交易方映射结果
     *
     * @param original
     * @return
     */
    public static String getPartyMap(String original) {
        return defineMap(original, PARTY_CONSTANT);
    }

    /**
     * 获取成交报价映射结果
     *
     * @param original
     * @return
     */
    public static String getExecutionReportMap(String original) {
        return defineMap(original, ExecutionReport_CONSTANT);
    }

    /**
     * 获取 NoUnderlyings 的映射
     *
     * @param original
     * @return
     */
    public static String getNoUnderlyingsMap(String original) {
        return defineMap(original, NOUNDERLYING_CONSTANT);
    }


    /**
     * 获取 NoMarginInfos 的映射
     *
     * @param original
     * @return
     */
    public static String getNoMarginInfosMap(String original) {
        return defineMap(original, NOMARGININFOS_CONSTANT);
    }

    /**
     * 获取 NoLegs 的映射
     *
     * @param original
     * @return
     */
    public static String getNoLegsMap(String original) {
        return defineMap(original, NOLEGS_CONSTANT);
    }

    /**
     * 为普通的节点内容添加 <![CDATA[  ]]>
     *
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
     *
     * @param original 原始日期。如：20170216-14:53:35.026
     * @returns {*} 将-替换后的日期。如：20170216 14:53:35.026
     * @see #getFormatValue(String)
     */
    @Deprecated
    private static String getFormatDate(String original) {
        String dateReg = "^[0-9]{8}-[0-9]{2}:[0-9]{2}:[0-9]{2}\\.[0-9]{3}$";
        if (original.matches(dateReg)) {
            return original.replace('-', ' ');
        }
        return original;
    }


    /**
     * 1. 对日期进行格式化；
     * 2. 对利率进行处理。(暂时不做处理)
     *
     * @param nodeName 节点名称
     * @param original 原始值
     * @return
     */
    public static String getFormatDateAndRate(String nodeName, String original) {
        return getFormatValue(original);
    }

    /**
     * 获取交易方式-格式化数据
     *
     * @param originalVal
     * @return
     */
    public static String getTransTypeFormatValue(final String originalVal) {
        if ("0".equals(originalVal)) {
            return "N"; //新建
        } else if ("5".equals(originalVal)) {
            return "R"; //修改
        }
        return originalVal;
    }

    /**
     * 对原始内容进行格式化
     *
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
    @Deprecated
    private static String getRate(String original) {
        try {
            Double value = Double.valueOf(original);
            Double rateVal = value / 100.0;
            return rateVal.toString();
        } catch (NumberFormatException e) {
            return original;
        }
    }


    /**
     * cfets_error是否包含对应的xml字段
     *
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isCfetsErrorContains(String xmlFieldName) {
        return listContains(cfets_error_List, xmlFieldName);
    }

    /**
     * details_mdEntries是否包含对应的xml字段
     *
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isDetailsMdEntriesContains(String xmlFieldName) {
        return listContains(details_mdEntries_List, xmlFieldName);
    }

    /**
     * cfets_marketdata_ack是否包含对应的xml字段
     *
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isCfetsMarketdataAckContains(String xmlFieldName) {
        return listContains(cfets_marketdata_ack_List, xmlFieldName);
    }

    /**
     * cfets_orders是否包含对应的xml字段
     *
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isCfetsOrdersContains(String xmlFieldName) {
        return listContains(cfets_orders_List, xmlFieldName);
    }

    /**
     * cfets_quotes是否包含对应的xml字段
     *
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isCfetsQuotesContains(String xmlFieldName) {
        return listContains(cfets_quotes_List, xmlFieldName);
    }

    /**
     * details_legs是否包含对应的xml字段
     *
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isDetailsLegsContains(String xmlFieldName) {
        return listContains(details_legs_List, xmlFieldName);
    }

    /**
     * cfets_marketdata是否包含对应的xml字段
     *
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isCfetsMarketdataContains(String xmlFieldName) {
        return listContains(cfets_marketdata_List, xmlFieldName);
    }

    /**
     * error是否包含对应的xml字段
     *
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isErrorContains(String xmlFieldName) {
        return listContains(error_List, xmlFieldName);
    }

    /**
     * details_underlyings是否包含对应的xml字段
     *
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isDetailsUnderlyingsContains(String xmlFieldName) {
        return listContains(details_underlyings_List, xmlFieldName);
    }

    /**
     * details_marginInfos是否包含对应的xml字段
     *
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isDetailsMarginInfosContains(String xmlFieldName) {
        return listContains(details_marginInfos_List, xmlFieldName);
    }

    /**
     * serialNo是否包含对应的xml字段
     *
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isSerialNoContains(String xmlFieldName) {
        return listContains(serialNo_List, xmlFieldName);
    }

    /**
     * details_parties是否包含对应的xml字段
     *
     * @param xmlFieldName xml字段名称
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    public static String isDetailsPartiesContains(String xmlFieldName) {
        return listContains(details_parties_List, xmlFieldName);
    }

    /**
     * 判断字符串列表是否包含字段。
     *
     * @param strings 字符串列表
     * @param string  字符串
     * @return {@code 0} 不包含 {@code 1} 包含
     */
    private static String listContains(List<String> strings, String string) {
        boolean isContains = strings.contains(string);
        if (isContains) {
            return "1";
        }
        return "0";
    }

}
