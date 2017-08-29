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


    //------------------------------------------------------------------------------CR
    /**
     * 质押式回购利率行情数据(8)
     * @param originalFilePath
     * @return
     */
    public static List<String> getCRREPO_RATE_STATISTICS(final String originalFilePath) {
        final String filter = "COLLATERAL_REPO;8;";
        return AttrPathUtil.getFilterFiles(originalFilePath, filter);
    }


    /**
     * 存款类机构间质押式回购行情(37)
     * @param originalFilePath
     * @return
     */
    public static List<String> getCRSAVINGINSITITUTIONMD(final String originalFilePath) {
        final String filter = "COLLATERAL_REPO;37;";
        return AttrPathUtil.getFilterFiles(originalFilePath, filter);
    }

    /**
     * 质押式回购匿名点击成交行情
     * @param originalFilePath
     * @return
     */
    public static List<String> getCRDEAL_MARKET_STATISTICS_3(final String originalFilePath) {
        final String filter = "COLLATERAL_REPO;0;3;";
        return AttrPathUtil.getFilterFiles(originalFilePath, filter);
    }

    /**
     * 获取所有行情数据
     * @param originalFilePath
     * @return
     */
    public static List<String> getAllMARKET_STATISTICS(final String originalFilePath) {
        final String filter = ";7;";
        return AttrPathUtil.getFilterFiles(originalFilePath, filter);
    }

}
