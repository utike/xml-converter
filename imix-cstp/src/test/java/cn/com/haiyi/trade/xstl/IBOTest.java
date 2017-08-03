package cn.com.haiyi.trade.xstl;

import cn.com.haiyi.trade.xstl.base.TwoWayQuoteTest;
import org.junit.Test;

import java.io.IOException;

/**
 * 信用拆借
 * Created by bbhou on 2017/6/17.
 */
public class IBOTest extends BaseTest implements TwoWayQuoteTest {

    private String targetPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\ibo\\";

    @Override
    @Test
    public void indicatorQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\indicator_INTER_BANK_OFFERING.xml";
        super.indicatorQuote2Xml(xmlPath, this.targetPath);
    }

    @Override
    @Test
    public void indicatorQuote2SqlTest() throws IOException {
        super.indicatorQuote2Sql(this.targetPath);
    }

    @Test
    @Override
    public void dialogQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\5.xml";
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
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\3.xml";
        super.executionReport2Xml(xmlPath, this.targetPath);
    }

    @Test
    @Override
    public void executionReport2SqlTest() throws IOException {
        super.executionReport2Sql(super.sqlRoutePath, this.targetPath);
    }

    @Override
    @Test
    public void twoWayQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\other\\INTER_BANK_OFFERING_IOI_TWO_WAY.xml";
        final String targetFileName = "twoWayQuote.xml";
        super.toXml(xmlPath, this.targetPath, targetFileName);
    }

    @Override
    @Test
    public void twoWayQuote2SqlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\ibo\\twoWayQuote.xml";
        final String targetFileName = "twoWayQuote.sql";
        super.toSql(xmlPath, this.targetPath, targetFileName);
    }
}
