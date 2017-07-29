package com.ryo.imix.cmds;

import com.ryo.imix.cmds.base.AbstractBaseTest;
import com.ryo.imix.cmds.util.CmdsDataUtil;
import org.junit.Test;

import java.io.IOException;
import java.util.List;

/**
 * 信用拆借
 * Created by bbhou on 2017/6/17.
 */
public class IBOTest extends AbstractBaseTest {

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
        final String allPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\xml20170728_readme.md";
        List<String> stringList = CmdsDataUtil.getIBOOrderFiles(allPath);
        for(String path : stringList) {
            super.execute(path);
        }
    }
}
