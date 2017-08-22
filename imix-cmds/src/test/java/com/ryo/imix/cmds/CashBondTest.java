package com.ryo.imix.cmds;

import com.ryo.imix.cmds.base.AbstractBaseTest;
import com.ryo.imix.cmds.util.CmdsDataFilterUtil;
import com.ryo.imix.cmds.util.CmdsDataUtil;
import org.junit.Test;

import java.io.IOException;
import java.util.List;

/**
 * 现券买卖
 * Created by bbhou on 2017/7/27.
 */
public class CashBondTest extends AbstractBaseTest {

    @Override
    protected String getTargetFilePath() {
        return "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\result\\cashBond\\";
    }

    @Override
    public void indicatorQuote2XmlTest() throws IOException {
//        MDSubType
    }

    @Override
    public void indicatorQuote2SqlTest() throws IOException {

    }

    @Test
    public void executionReport2XmlTest() throws IOException {
        final String path = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\cashBond\\cashBond_executionReport.xml";
        super.toXml(path, "executionReport.xml");
//        super.execute(path);
    }

    @Override
    public void executionReport2SqlTest() throws IOException {
        final String path = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\result\\cashBond\\executionReport.xml";
        super.toSql(path, "executionReport.sql");
    }

    /**
     * 现券买卖(7)
     */
    @Test
    public void TRADING_PRODUCT_MARKET_STATISTICS_Test() {
        final String path = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\marketData0724To0822.md";
        List<String> stringList = CmdsDataFilterUtil.getCBTTRADING_PRODUCT_MARKET_STATISTICS(path);
        for(String filePath : stringList) {
            super.execute(filePath);
        }
    }

    /**
     * CBT-现券清洗后实时行情 or 现券清洗后收盘行情(44)
     */
    @Test
    public void CBTMARKETSTATISTICS_EXCLUDING_ABNORMAL_Test() {
        final String path = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\marketData0724To0822.md";
        List<String> stringList = CmdsDataFilterUtil.getCBTMARKETSTATISTICS_EXCLUDING_ABNORMAL(path);
        for(String filePath : stringList) {
            super.execute(filePath);
        }
    }

    /**
     * 成交
     */
    public void executionReportExecuteTest() {
//        final String allPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\xml20170728_readme.md";
        final String allPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\xml20170727_readme.md";
        List<String> stringList = CmdsDataUtil.getCBOrderFiles(allPath);
        for(String path : stringList) {
            super.execute(path);
        }
    }



}
