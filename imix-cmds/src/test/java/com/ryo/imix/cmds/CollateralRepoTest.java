package com.ryo.imix.cmds;

import com.ryo.imix.cmds.base.AbstractBaseTest;
import com.ryo.imix.cmds.util.CmdsDataFilterUtil;
import com.ryo.imix.cmds.util.CmdsDataUtil;
import com.ryo.xslt.util.AttrPathUtil;
import org.junit.Test;

import java.io.IOException;
import java.util.List;

/**
 * 抵押式回购
 * Created by bbhou on 2017/6/17.
 */
public class CollateralRepoTest extends AbstractBaseTest {


    @Override
    protected String getTargetFilePath() {
        return null;
    }

    @Override
    public void indicatorQuote2XmlTest() throws IOException {

    }

    @Override
    public void indicatorQuote2SqlTest() throws IOException {

    }

    @Override
    public void executionReport2XmlTest() throws IOException {

    }

    @Override
    public void executionReport2SqlTest() throws IOException {

    }

    @Test
    public void executionReportExecutionTest() {
        final String allPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\xml20170727_readme.md";
        List<String> stringList = CmdsDataUtil.getCROrderFiles(allPath);
        for(String path : stringList) {
            super.execute(path);
        }
    }

    @Test
    public void toXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\marketData0724To0822\\10.xml";
        super.toXml(filePath, "CRREPO_RATE_STATISTICS.xml");
    }


    /**
     * 质押式回购利率行情数据(8)
     */
    @Test
    public void CRREPO_RATE_STATISTICS_Test() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\marketData0724To0822.md";
        List<String> stringList = CmdsDataFilterUtil.getCRREPO_RATE_STATISTICS(filePath);
        for(String path : stringList) {
            super.execute(path);
        }
    }

    /**
     * 存款类机构间质押式回购行情(37)
     */
    @Test
    public void CRSAVINGINSITITUTIONMD_Test() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\marketData0724To0822.md";
        List<String> stringList = CmdsDataFilterUtil.getCRSAVINGINSITITUTIONMD(filePath);
        for(String path : stringList) {
            super.execute(path);
        }
    }

    /**
     * 质押式回购匿名点击成交行情
     */
    @Test
    public void CRDEAL_MARKET_STATISTICS_3_Test() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\marketData0724To0822.md";
        List<String> stringList = CmdsDataFilterUtil.getCRDEAL_MARKET_STATISTICS_3(filePath);
        for(String path : stringList) {
            super.execute(path);
        }
    }

}
