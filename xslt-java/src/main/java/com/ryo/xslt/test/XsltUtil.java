package com.ryo.xslt.test;

import java.util.HashMap;
import java.util.Map;

/**
 * @author xml转换工具类
 * Created by bbhou on 2017/6/16.
 */
public class XsltUtil {

    private static Map<String, String> PARTY_CONSTANT = new HashMap<>();
    private static Map<String, String> DIALOGQUOTE_CONSTANT = new HashMap<>();
    private static Map<String, String> ExecutionReport_CONSTANT = new HashMap<>();

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

        /**
         * DIALOGQUOTE(对话报价)
         */
        DIALOGQUOTE_CONSTANT.put("QuoteTransType", "TransType");
        DIALOGQUOTE_CONSTANT.put("OrderQty", "Qty");
        DIALOGQUOTE_CONSTANT.put("QuoteID", "ID");

        /**
         * ExecutionReport(成交报价)
         */
        ExecutionReport_CONSTANT.put("QuoteTransType", "TransType");
        ExecutionReport_CONSTANT.put("OrderQty", "Qty");
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
     * 获取格式化的日期。如果不需要对利率进行互换，使用这个。
     *
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
            return getFormatDate(original);
        }
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
     * 获取对话报价的映射结果
     * @param original
     * @return
     */
    public static String getDialogQuoteMap(String original) {
        return defineMap(original, DIALOGQUOTE_CONSTANT);
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

}
