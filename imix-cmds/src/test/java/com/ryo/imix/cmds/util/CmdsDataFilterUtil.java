package com.ryo.imix.cmds.util;

import com.ryo.xslt.util.AttrPathUtil;

import java.util.List;

/**
 * @see com.ryo.xslt.util.CategoryFilesUtil
 * @see com.ryo.xslt.util.AttrPathUtil
 * Created by bbhou on 2017/8/22.
 */
public class CmdsDataFilterUtil {

    /**
     * CBT-现券买卖(7)
     * @return
     */
    public static List<String> getCBTTRADING_PRODUCT_MARKET_STATISTICS(final String originalFilePath) {
        final String filter = "CASH_BOND;7;";
        return AttrPathUtil.getFilterFiles(originalFilePath, filter);
    }

    /**
     * CBT-现券清洗后实时行情 or 现券清洗后收盘行情(44)
     * @return
     */
    public static List<String> getCBTMARKETSTATISTICS_EXCLUDING_ABNORMAL(final String originalFilePath) {
        final String filter = "CASH_BOND;44;";
        return AttrPathUtil.getFilterFiles(originalFilePath, filter);
    }



}
