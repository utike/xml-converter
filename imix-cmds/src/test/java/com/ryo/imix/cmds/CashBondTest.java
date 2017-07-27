package com.ryo.imix.cmds;

import com.ryo.imix.cmds.base.AbstractBaseTest;
import org.junit.Test;

import java.io.IOException;

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

    }

    @Override
    public void indicatorQuote2SqlTest() throws IOException {

    }

    @Override
    @Test
    public void executionReport2XmlTest() throws IOException {
        final String path = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\cashBond\\cashBond_executionReport.xml";
        super.toXml(path, "executionReport.xml");
    }

    @Override
    @Test
    public void executionReport2SqlTest() throws IOException {
        final String path = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\result\\cashBond\\executionReport.xml";
        super.toSql(path, "executionReport.sql");
    }

}
