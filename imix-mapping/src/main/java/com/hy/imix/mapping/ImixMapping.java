package com.hy.imix.mapping;

import java.util.HashMap;
import java.util.Map;

/**
 * imix 803 mapping
 * Created by bbhou on 2017/6/13.
 */
public class ImixMapping {

    private static Map<String, String> map = new HashMap<>();

    /**
     * 获取实际对应的结果
     * 1. 如果没有对应值，则返回KEY本身。
     * @param key
     * @return
     */
    public static String getActualVal(String key) {
        String result = map.get(key);
        if(result == null
                || "".equals(result)) {
            result = key;
        }
        return result;
    }

    static {
        map.put("SECURITIES_ACCOUNT_NUMBER", "SECURITIES_ACCOUNT_NUMBER");
        map.put("TRADER_NAME", "TraderName");
        map.put("SHORT_LEGAL_NAME_OF_FIRM", "SHORT_LEGAL_NAME_OF_FIRM");
        map.put("CONTACT_METHOD_OF_TRADER", "CONTACT_METHOD_OF_TRADER");
        map.put("MEMBERS_OR_CLIENTS", "MEMBERS_OR_CLIENTS");
        map.put("NON_MARKET_MAKER", "NON_MARKET_MAKER");
        map.put("MARGIN_SETTLEMENT_ACCOUNT_NUMBER", "MARGIN_SETTLEMENT_ACCOUNT_NUMBER");
        map.put("MARGIN_CUSTODIAN_ACCOUNT_NUMBER", "MARGIN_CUSTODIAN_ACCOUNT_NUMBER");
        map.put("MARGIN_SETTLEMENT_BANK_NAME", "MARGIN_SETTLEMENT_BANK_NAME");
        map.put("MARGIN_CUSTODIAN_INSTITUTION_NAME", "MARGIN_CUSTODIAN_INSTITUTION_NAME");
        map.put("REGISTRATION_NUMBER", "REGISTRATION_NUMBER");
        map.put("SETTLEMENT_BANK_NAME", "SETTLEMENT_BANK_NAME");
        map.put("CUSTODIAN_INSTITUTION_NAME", "CUSTODIAN_INSTITUTION_NAME");
        map.put("SETTLEMENT_BANK_SORT_CODE", "SETTLEMENT_BANK_SORT_CODE");
        map.put("CUSTODIAN_BANK_NAME", "CUSTODIAN_BANK_NAME");
        map.put("CUSTODIAN_ACCOUNT_NAME", "CUSTODIAN_ACCOUNT_NAME");
        map.put("CUSTODIAN_ACCOUNT_NUMBER", "CUSTODIAN_ACCOUNT_NUMBER");
        map.put("MARGIN_SETTLEMENT_ACCOUNT_NAME", "MARGIN_SETTLEMENT_ACCOUNT_NAME");
        map.put("MARGIN_CUSTODIAN_ACCOUNT_NAME", "MARGIN_CUSTODIAN_ACCOUNT_NAME");
        map.put("CHINESE_NAME_OF_CASH_ACCOUNT", "CHINESE_NAME_OF_CASH_ACCOUNT");
        map.put("STATUS_OF_SECURITIES_ACCOUNT", "STATUS_OF_SECURITIES_ACCOUNT");
        map.put("REGISTERED_ADDRESS", "REGISTERED_ADDRESS");
        map.put("STATUS_OF_CASH_ACCOUNT", "STATUS_OF_CASH_ACCOUNT");
        map.put("MARGIN_SETTLEMENT_BANK_SORT_CODE", "MARGIN_SETTLEMENT_BANK_SORT_CODE");
        map.put("MARGIN_CUSTODIAN_ENTITY_CODE", "MARGIN_CUSTODIAN_ENTITY_CODE");
        map.put("CUSTODIAN_ENTITY_CODE", "CUSTODIAN_ENTITY_CODE");
        map.put("FULL_LEGAL_CHINESE_NAME_OF_FIRM", "FULL_LEGAL_CHINESE_NAME_OF_FIRM");
        map.put("SHORT_LEGAL_CHINESE_NAME_OF_FIRM", "SHORT_LEGAL_CHINESE_NAME_OF_FIRM");
        map.put("TRADER_CHINESE_NAME", "TRADER_CHINESE_NAME");
        map.put("ZIP_CODE", "ZIP_CODE");
        map.put("CFETS_MARGIN_SETTLEMENT_ACCOUNT_NUMBER", "CFETS_MARGIN_SETTLEMENT_ACCOUNT_NUMBER");
        map.put("OTHER_MARGIN_SETTLEMENT_ACCOUNT_NUMBER", "OTHER_MARGIN_SETTLEMENT_ACCOUNT_NUMBER");
        map.put("FIRM_CODE", "FIRM_CODE");
        map.put("MULTI_CURRENCY_ACCOUNT_DESCRIPTION", "MULTI_CURRENCY_ACCOUNT_DESCRIPTION");
        map.put("COLLATERAL_MANAGEMENT_INSTITUTION_ID", "COLLATERAL_MANAGEMENT_INSTITUTION_ID");
        map.put("COLLATERAL_MANAGEMENT_INSTITUTION_NAME", "COLLATERAL_MANAGEMENT_INSTITUTION_NAME");
        map.put("INSTITUTION_GROUP_NAME", "INSTITUTION_GROUP_NAME");
        map.put("FIRM_ID", "FIRM_ID");
        map.put("CLEARING_INSTITUTION", "CLEARING_INSTITUTION");
        map.put("SETTLEMENT_CURRENCY_NAME", "SETTLEMENT_CURRENCY_NAME");
        map.put("SETTLEMENT_CURRENCY_REMARK", "SETTLEMENT_CURRENCY_REMARK");
        map.put("CONTRA_CCY_SETTLEMENT_BANK_NAME", "CONTRA_CCY_SETTLEMENT_BANK_NAME");
        map.put("CONTRA_CCY_CHINESE_NAME_OF_CASH_ACCOUNT", "CONTRA_CCY_CHINESE_NAME_OF_CASH_ACCOUNT");
        map.put("CONTRA_CCY_ENGLISH_NAME_OF_CASH_ACCOUNT", "CONTRA_CCY_ENGLISH_NAME_OF_CASH_ACCOUNT");
        map.put("CONTRA_CCY_SWIFT_CODE", "CONTRA_CCY_SWIFT_CODE");
        map.put("CONTRA_CCY_NAME", "CONTRA_CCY_NAME");
        map.put("CONTRA_CCY_REMARK", "CONTRA_CCY_REMARK");
        map.put("INTERNAL_GROUP_THE_TRADER_BELONGED_TO", "INTERNAL_GROUP_THE_TRADER_BELONGED_TO");
        map.put("DEAL_CONFIRM_CONTACT_NAME", "DEAL_CONFIRM_CONTACT_NAME");
        map.put("DEPOSIT_ACCOUNT", "DEPOSIT_ACCOUNT");
        map.put("CURRENT_ACCOUNT", "CURRENT_ACCOUNT");
        map.put("CASH_ACCOUNT_NUMBER", "CASH_ACCOUNT_NUMBER");
        map.put("HIGH_VALUE_PAYMENT_SYSTEM_CODE", "HIGH_VALUE_PAYMENT_SYSTEM_CODE");
        map.put("SECURITIES_ACCOUNT_CHINESE_NAME", "SECURITIES_ACCOUNT_CHINESE_NAME");
        map.put("RMB_MEMBER_ID", "RMB_MEMBER_ID");
        map.put("FX_MEMBER_ID", "FX_MEMBER_ID");
        map.put("FX_SYSTEM_ENGLISH_SHORT_NAME", "FX_SYSTEM_ENGLISH_SHORT_NAME");
        map.put("OTHER_SYSTEM_CODE", "OTHER_SYSTEM_CODE");
        map.put("CUSTODY_MANAGEMENT_INSTITUTION", "CUSTODY_MANAGEMENT_INSTITUTION");
        map.put("INSTITUTION_ID_IN_COMSTAR_SYSTEM", "INSTITUTION_ID_IN_COMSTAR_SYSTEM");
        map.put("SWIFT_BIC_CODE", "SWIFT_BIC_CODE");
        map.put("USER_NAME", "USER_NAME");
        map.put("PASSWORD", "PASSWORD");
        map.put("MEMBER_TYPE", "MEMBER_TYPE");
        map.put("PAYMENT_SYSTEM_CODE_OF_THE_LOCAL_PEOPLE_BANK", "PAYMENT_SYSTEM_CODE_OF_THE_LOCAL_PEOPLE_BANK");
        map.put("SETTLEMENT_BANK_BIC_CODE", "SETTLEMENT_BANK_BIC_CODE");
        map.put("ACCOUNTTYPE", "ACCOUNTTYPE");
        map.put("BRANCHID", "BRANCHID");
        map.put("SETTLEMENT_BANK_CHINESE_NAME", "SETTLEMENT_BANK_CHINESE_NAME");
        map.put("USER_INPUT_TRADES", "USER_INPUT_TRADES");
        map.put("AGENT_USER_INPUT_TRADES", "AGENT_USER_INPUT_TRADES");
        map.put("CONTRA_CCY_SETTLEMENT_BANK_CHINESE_NAME", "CONTRA_CCY_SETTLEMENT_BANK_CHINESE_NAME");
        map.put("CONTRA_CCY_CASH_ACCOUNT_NUMBER", "CONTRA_CCY_CASH_ACCOUNT_NUMBER");
        map.put("CONTRA_CCY_HIGH_VALUE_PAYMENT_SYSTEM_CODE", "CONTRA_CCY_HIGH_VALUE_PAYMENT_SYSTEM_CODE");
        map.put("SETTLEMENT_CURRENCY_NAME_OF_NEAR_LEG", "SETTLEMENT_CURRENCY_NAME_OF_NEAR_LEG");
        map.put("CASH_ACCOUNT_NAME_OF_NEAR_LEG", "CASH_ACCOUNT_NAME_OF_NEAR_LEG");
        map.put("CHINESE_NAME_OF_CASH_ACCOUNT_OF_NEAR_LEG", "CHINESE_NAME_OF_CASH_ACCOUNT_OF_NEAR_LEG");
        map.put("SETTLEMENT_BANK_NAME_OF_NEAR_LEG", "SETTLEMENT_BANK_NAME_OF_NEAR_LEG");
        map.put("SETTLEMENT_BANK_CHINESE_NAME_OF_NEAR_LEG", "SETTLEMENT_BANK_CHINESE_NAME_OF_NEAR_LEG");
        map.put("CASH_ACCOUNT_NUMBER_OF_NEAR_LEG", "CASH_ACCOUNT_NUMBER_OF_NEAR_LEG");
        map.put("HIGH_VALUE_PAYMENT_SYSTEM_CODE_OF_NEAR_LEG", "HIGH_VALUE_PAYMENT_SYSTEM_CODE_OF_NEAR_LEG");
        map.put("SWIFT_BIC_CODE_OF_NEAR_LEG", "SWIFT_BIC_CODE_OF_NEAR_LEG");
        map.put("CONTRA_CCY_NAME_OF_NEAR_LEG", "CONTRA_CCY_NAME_OF_NEAR_LEG");
        map.put("CONTRA_CCY_ENGLISH_NAME_OF_CASH_ACCOUNT_OF_NEAR_LEG", "CONTRA_CCY_ENGLISH_NAME_OF_CASH_ACCOUNT_OF_NEAR_LEG");
        map.put("CONTRA_CCY_CHINESE_NAME_OF_CASH_ACCOUNT_OF_NEAR_LEG", "CONTRA_CCY_CHINESE_NAME_OF_CASH_ACCOUNT_OF_NEAR_LEG");
        map.put("CONTRA_CCY_SETTLEMENT_BANK_NAME_OF_NEAR_LEG", "CONTRA_CCY_SETTLEMENT_BANK_NAME_OF_NEAR_LEG");
        map.put("CONTRA_CCY_SETTLEMENT_BANK_CHINESE_NAME_OF_NEAR_LEG", "CONTRA_CCY_SETTLEMENT_BANK_CHINESE_NAME_OF_NEAR_LEG");
        map.put("CONTRA_CCY_CASH_ACCOUNT_NUMBER_OF_NEAR_LEG", "CONTRA_CCY_CASH_ACCOUNT_NUMBER_OF_NEAR_LEG");
        map.put("CONTRA_CCY_HIGH_VALUE_PAYMENT_SYSTEM_CODE_OF_NEAR_LEG", "CONTRA_CCY_HIGH_VALUE_PAYMENT_SYSTEM_CODE_OF_NEAR_LEG");
        map.put("CONTRA_CCY_SWIFT_CODE_OF_NEAR_LEG", "CONTRA_CCY_SWIFT_CODE_OF_NEAR_LEG");
        map.put("SETTLEMENT_CURRENCY_NAME_OF_FAR_LEG", "SETTLEMENT_CURRENCY_NAME_OF_FAR_LEG");
        map.put("CASH_ACCOUNT_NAME_OF_FAR_LEG", "CASH_ACCOUNT_NAME_OF_FAR_LEG");
        map.put("CHINESE_NAME_OF_CASH_ACCOUNT_OF_FAR_LEG", "CHINESE_NAME_OF_CASH_ACCOUNT_OF_FAR_LEG");
        map.put("SETTLEMENT_BANK_NAME_OF_FAR_LEG", "SETTLEMENT_BANK_NAME_OF_FAR_LEG");
        map.put("SETTLEMENT_BANK_CHINESE_NAME_OF_FAR_LEG", "SETTLEMENT_BANK_CHINESE_NAME_OF_FAR_LEG");
        map.put("CASH_ACCOUNT_NUMBER_OF_FAR_LEG", "CASH_ACCOUNT_NUMBER_OF_FAR_LEG");
        map.put("HIGH_VALUE_PAYMENT_SYSTEM_CODE_OF_FAR_LEG", "HIGH_VALUE_PAYMENT_SYSTEM_CODE_OF_FAR_LEG");
        map.put("SWIFT_BIC_CODE_OF_FAR_LEG", "SWIFT_BIC_CODE_OF_FAR_LEG");
        map.put("CONTRA_CCY_NAME_OF_FAR_LEG", "CONTRA_CCY_NAME_OF_FAR_LEG");
        map.put("TRADER_CODE", "TRADER_CODE");
        map.put("CONTRA_CCY_ENGLISH_NAME_OF_CASH_ACCOUNT_OF_FAR_LEG", "CONTRA_CCY_ENGLISH_NAME_OF_CASH_ACCOUNT_OF_FAR_LEG");
        map.put("CONTRA_CCY_CHINESE_NAME_OF_CASH_ACCOUNT_OF_FAR_LEG", "CONTRA_CCY_CHINESE_NAME_OF_CASH_ACCOUNT_OF_FAR_LEG");
        map.put("CONTRA_CCY_SETTLEMENT_BANK_NAME_OF_FAR_LEG", "CONTRA_CCY_SETTLEMENT_BANK_NAME_OF_FAR_LEG");
        map.put("CONTRA_CCY_SETTLEMENT_BANK_CHINESE_NAME_OF_FAR_LEG", "CONTRA_CCY_SETTLEMENT_BANK_CHINESE_NAME_OF_FAR_LEG");
        map.put("CONTRA_CCY_CASH_ACCOUNT_NUMBER_OF_FAR_LEG", "CONTRA_CCY_CASH_ACCOUNT_NUMBER_OF_FAR_LEG");
        map.put("CONTRA_CCY_HIGH_VALUE_PAYMENT_SYSTEM_CODE_OF_FAR_LEG", "CONTRA_CCY_HIGH_VALUE_PAYMENT_SYSTEM_CODE_OF_FAR_LEG");
        map.put("CONTRA_CCY_SWIFT_CODE_OF_FAR_LEG", "CONTRA_CCY_SWIFT_CODE_OF_FAR_LEG");
        map.put("CORRESPONDENT_BANK_ACCOUNT", "CORRESPONDENT_BANK_ACCOUNT");
        map.put("CONTRA_CCY_CORRESPONDENT_BANK_ACCOUNT", "CONTRA_CCY_CORRESPONDENT_BANK_ACCOUNT");
        map.put("INTERMEDIARY_BANK", "INTERMEDIARY_BANK");
        map.put("CONTRA_CCY_INTERMEDIARY_BANK", "CONTRA_CCY_INTERMEDIARY_BANK");
        map.put("INTERMEDIARY_BANK_BIC_CODE", "INTERMEDIARY_BANK_BIC_CODE");
        map.put("CONTRA_CCY_INTERMEDIARY_BANK_BIC_CODE", "CONTRA_CCY_INTERMEDIARY_BANK_BIC_CODE");
        map.put("INTERMEDIARY_BANK_ACCOUNT", "INTERMEDIARY_BANK_ACCOUNT");
        map.put("CONTRA_CCY_INTERMEDIARY_BANK_ACCOUNT", "CONTRA_CCY_INTERMEDIARY_BANK_ACCOUNT");
        map.put("INTERMEDIARY_BANK_OF_NEAR_LEG", "INTERMEDIARY_BANK_OF_NEAR_LEG");
        map.put("CONTRA_CCY_INTERMEDIARY_BANK_OF_FAR_LEG", "CONTRA_CCY_INTERMEDIARY_BANK_OF_FAR_LEG");
        map.put("INTERMEDIARY_BANK_BIC_CODE_OF_NEAR_LEG", "INTERMEDIARY_BANK_BIC_CODE_OF_NEAR_LEG");
        map.put("CONTRA_CCY_INTERMEDIARY_BANK_BIC_CODE_OF_FAR_LEG", "CONTRA_CCY_INTERMEDIARY_BANK_BIC_CODE_OF_FAR_LEG");
        map.put("INTERMEDIARY_BANK_ACCOUNT_OF_NEAR_LEG", "INTERMEDIARY_BANK_ACCOUNT_OF_NEAR_LEG");
        map.put("SECURITIES_ACCOUNT_NAME", "SECURITIES_ACCOUNT_NAME");
        map.put("CONTRA_CCY_INTERMEDIARY_BANK_ACCOUNT_OF_FAR_LEG", "CONTRA_CCY_INTERMEDIARY_BANK_ACCOUNT_OF_FAR_LEG");
        map.put("CORRESPONDENT_BANK_ACCOUNT_OF_NEAR_LEG", "CORRESPONDENT_BANK_ACCOUNT_OF_NEAR_LEG");
        map.put("CONTRA_CCY_CORRESPONDENT_BANK_ACCOUNT_OF_FAR_LEG", "CONTRA_CCY_CORRESPONDENT_BANK_ACCOUNT_OF_FAR_LEG");
        map.put("PERSON_ID", "PERSON_ID");
        map.put("CASH_ACCOUNT_NAME", "CASH_ACCOUNT_NAME");
        map.put("UNIFIED_SOCIAL_CREDIT_CODE", "UNIFIED_SOCIAL_CREDIT_CODE");
        map.put("ALTERNATIVE_NAME", "ALTERNATIVE_NAME");
        map.put("DEPARTMENT", "DEPARTMENT");
        map.put("MARKET_MAKER", "MARKET_MAKER");
        map.put("ELIGIBLE_COUNTERPARTY", "ELIGIBLE_COUNTERPARTY");
        map.put("EXECUTION_VENUE", "EXECUTION_VENUE");
        map.put("FAX_NO", "FAX_NO");
        map.put("LEGAL_REPRESENTATIVE", "LEGAL_REPRESENTATIVE");
        map.put("FULL_LEGAL_NAME_OF_FIRM", "FULL_LEGAL_NAME_OF_FIRM");
        map.put("POSTAL_ADDRESS", "POSTAL_ADDRESS");
        map.put("PHONE_NUMBER", "PHONE_NUMBER");
        map.put("CONTACT_NAME", "CONTACT_NAME");
    }


}