package cn.com.haiyi.cstp.xstl;

import org.junit.Test;

import java.io.IOException;

/**
 * Created by bbhou on 2017/6/19.
 */
public class SecurityLendingTest extends BaseTest {
    private String targetPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\securityLending\\";

    @Override
    public void indicatorQuote2XmlTest() throws IOException {

    }

    @Override
    public void indicatorQuote2SqlTest() throws IOException {

    }

    @Test
    @Override
    public void dialogQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\19.xml";
        super.dialogQuote2Xml(xmlPath, this.targetPath);
    }

    @Test
    @Override
    public void dialogQuote2SqlTest() throws IOException {
        super.dialogQuote2Sql(super.sqlRoutePath, this.targetPath);
    }

    @Test
    @Override
    public void executionReport2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\17.xml";
        super.executionReport2Xml(xmlPath, this.targetPath);
    }

    @Test
    @Override
    public void executionReport2SqlTest() throws IOException {
        super.executionReport2Sql(super.sqlRoutePath, this.targetPath);
    }

}
