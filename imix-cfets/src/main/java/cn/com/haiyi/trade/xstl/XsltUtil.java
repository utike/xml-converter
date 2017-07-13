package cn.com.haiyi.trade.xstl;

import java.util.HashMap;
import java.util.Map;

/**
 * @author xml转换工具类
 * @since 1.7
 * Created by bbhou on 2017/6/16.
 */
public class XsltUtil {

    private static Map<String, String> PARTY_CONSTANT = new HashMap<>();
    private static Map<String, String> QUOTE_CONSTANT = new HashMap<>();
    private static Map<String, String> ExecutionReport_CONSTANT = new HashMap<>();
    private static Map<String, String> NOUNDERLYING_CONSTANT = new HashMap<>();
    private static Map<String, String> NOMARGININFOS_CONSTANT = new HashMap<>();
    private static Map<String, String> NOLEGS_CONSTANT = new HashMap<>();

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
    @Deprecated
    private static String getFormatDate(String original) {
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

}
