package cn.com.haiyi.cstp.xstl;

import org.junit.Test;

import java.io.IOException;

/**
 * 债券远期测试
 * Created by bbhou on 2017/6/20.
 */
public class BondForwardTest extends BaseTest {

    private String targetPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cstp\\src\\test\\resources\\result\\bondForward\\";

    @Test
    @Override
    public void indicatorQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cstp\\src\\test\\resources\\original\\indicator_BOND_FORWARD.xml";
        super.indicatorQuote2Xml(xmlPath, this.targetPath);
    }

    @Test
    @Override
    public void indicatorQuote2SqlTest() throws IOException {
        super.indicatorQuote2Sql(this.targetPath);
    }

    @Override
    @Test
    public void dialogQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cstp\\src\\test\\resources\\original\\BOND_FORWARD_S.xml";
        super.dialogQuote2Xml(xmlPath, this.targetPath);
    }


    @Override
    @Test
    public void dialogQuote2SqlTest() throws IOException {
        super.dialogQuote2Sql(super.sqlRoutePath, this.targetPath);
    }

    @Override
    @Test
    public void executionReport2XmlTest() throws IOException {
       final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cstp\\src\\test\\resources\\original\\BOND_FORWARD_8.xml";
       super.executionReport2Xml(xmlPath, this.targetPath);
    }

    @Override
    @Test
    public void executionReport2SqlTest() throws IOException {
        super.executionReport2Sql(super.sqlRoutePath, this.targetPath);
    }
}
