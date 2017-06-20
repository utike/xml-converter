package cn.com.haiyi.cstp.xstl;

import org.junit.Test;

import java.io.IOException;

/**
 * Created by bbhou on 2017/6/20.
 */
public class InterestRateSwapTest extends BaseTest {

    private String targetPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\interestRateSwap\\";

    @Override
    public void dialogQuote2XmlTest() throws IOException {

    }

    @Override
    public void dialogQuote2SqlTest() throws IOException {

    }

    @Override
    public void executionReport2XmlTest() throws IOException {

    }

    @Override
    public void executionReport2SqlTest() throws IOException {

    }


    @Test
    public void fixFloatDialogQuote2XmlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\INTEREST_RATE_SWAP_J_S.xml";
        String targetFileName = "fixFloatDialogQuote.xml";
        super.toXml(originalXmlPath, this.targetPath, targetFileName);
    }

    @Test
    public void fixFloatDialogQuote2SqlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\interestRateSwap\\fixFloatDialogQuote.xml";
        String targetFileName = "fixFloatDialogQuote.sql";
        super.toSql(originalXmlPath, this.targetPath, targetFileName);
    }

    @Test
    public void fixFloatExecutionReport2XmlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\INTEREST_RATE_SWAP_J_8.xml";
        String targetFileName = "fixFloatExecutionReport.xml";
        super.toXml(originalXmlPath, this.targetPath, targetFileName);
    }

    @Test
    public void fixFloatExecutionReport2SqlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\interestRateSwap\\fixFloatExecutionReport.xml";
        String targetFileName = "fixFloatExecutionReport.sql";
        super.toSql(originalXmlPath, this.targetPath, targetFileName);
    }

}
