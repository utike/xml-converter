package cn.com.haiyi.trade.xstl;

import org.junit.Test;

import java.io.IOException;

/**
 * Created by bbhou on 2017/6/20.
 */
public class InterestRateSwapTest extends AbstractBaseTest {

    private String targetPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\interestRateSwap\\";


    /**
     * 标准-SH
     * @throws IOException
     */
    @Test
    public void standardSHFixFloatIndicatorQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\STANDARD_INTEREST_RATE_SWAP_J_8_SH.xml";
        String targetFileName = "standardSHFixFloatIndicatorQuote.xml";
        super.toXml(xmlPath, this.targetPath, targetFileName);
    }

    /**
     * 标准-SH
     * @throws IOException
     */
    @Test
    public void standardSHFixFloatIndicatorQuote2SqlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\interestRateSwap\\standardSHFixFloatIndicatorQuote.xml";
        String targetFileName = "standardSHFixFloatIndicatorQuote.sql";
        super.toSql(xmlPath, this.targetPath, targetFileName);
    }

    /**
     * 标准-SH
     * @throws IOException
     */
    @Test
    public void standardSelfFixFloatIndicatorQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\STANDARD_INTEREST_RATE_SWAP_J_8_SELF.xml";
        String targetFileName = "standardSelfFixFloatIndicatorQuote.xml";
        super.toXml(xmlPath, this.targetPath, targetFileName);
    }

    /**
     * 标准-SH
     * @throws IOException
     */
    @Test
    public void standardSelfFixFloatIndicatorQuote2SqlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\interestRateSwap\\standardSelfFixFloatIndicatorQuote.xml";
        String targetFileName = "standardSelfFixFloatIndicatorQuote.sql";
        super.toSql(xmlPath, this.targetPath, targetFileName);
    }

    /**
     * 固定-浮动 == 意向报价XML
     */
    @Test
    public void fixFloatIndicatorQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\indicator_FIXED_RATE_TO_FLOAT_RATE.xml";
        String targetFileName = "fixFloatIndicatorQuote.xml";
        super.toXml(xmlPath, this.targetPath, targetFileName);
    }

    /**
     * 固定-浮动 == 意向报价SQL
     */
    @Test
    public void fixFloatIndicatorQuote2SqlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\interestRateSwap\\fixFloatIndicatorQuote.xml";
        String targetFileName = "fixFloatIndicatorQuote.sql";
        super.toSql(xmlPath, this.targetPath, targetFileName);
    }

    /**
     * 浮动-浮动 == 意向报价XML
     * @throws IOException
     */
    @Test
    public void floatFloatIndicatorQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\indicator_FLOAT_RATE_TO_FLOAT_RATE.xml";
        String targetFileName = "floatFloatIndicatorQuote.xml";
        super.toXml(xmlPath, this.targetPath, targetFileName);
    }

    /**
     * 浮动-浮动 == 意向报价SQL
     */
    @Test
    public void floatFloatIndicatorQuote2SqlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\interestRateSwap\\floatFloatIndicatorQuote.xml";
        String targetFileName = "floatFloatIndicatorQuote.sql";
        super.toSql(xmlPath, this.targetPath, targetFileName);
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

    @Test
    public void fixFloatTwoWayQuote2XmlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\other\\INTEREST_RATE_SWAP_IOI_J_TWO_WAY.xml";
        String targetFileName = "fixFloatTwoWayQuote.xml";
        super.toXml(originalXmlPath, this.targetPath, targetFileName);
    }

    @Test
    public void fixFloatTwoWayQuote2SqlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\interestRateSwap\\fixFloatTwoWayQuote.xml";
        String targetFileName = "fixFloatTwoWayQuote.sql";
        super.toSql(originalXmlPath, this.targetPath, targetFileName);
    }

    @Test
    public void fixFloatClickAndDealQuote2XmlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\other\\INTEREST_RATE_SWAP_S_J_CLICK_AND_NEGOTIATE_QUOTE.xml";
        String targetFileName = "fixFloatClickAndDealQuote.xml";
        super.toXml(originalXmlPath, this.targetPath, targetFileName);
    }

    @Test
    public void fixFloatClickAndDealQuote2SqlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\interestRateSwap\\fixFloatClickAndDealQuote.xml";
        String targetFileName = "fixFloatClickAndDealQuote.sql";
        super.toSql(originalXmlPath, this.targetPath, targetFileName);
    }

    @Test
    public void floatFloatDialogQuote2XmlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\INTEREST_RATE_SWAP_K_S.xml";
        String targetFileName = "floatFloatDialogQuote.xml";
        super.toXml(originalXmlPath, this.targetPath, targetFileName);
    }

    @Test
    public void floatFloatDialogQuote2SqlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\interestRateSwap\\floatFloatDialogQuote.xml";
        String targetFileName = "floatFloatDialogQuote.sql";
        super.toSql(originalXmlPath, this.targetPath, targetFileName);
    }


    @Test
    public void floatFloatExecutionReport2XmlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\INTEREST_RATE_SWAP_K_8.xml";
        String targetFileName = "floatFloatExecutionReport.xml";
        super.toXml(originalXmlPath, this.targetPath, targetFileName);
    }

    @Test
    public void floatFloatExecutionReport2SqlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\interestRateSwap\\floatFloatExecutionReport.xml";
        String targetFileName = "floatFloatExecutionReport.sql";
        super.toSql(originalXmlPath, this.targetPath, targetFileName);
    }

    @Test
    public void floatFloatTwoWayQuote2XmlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\other\\INTEREST_RATE_SWAP_IOI_K_TWO_WAY.xml";
        String targetFileName = "floatFloatTwoWayQuote.xml";
        super.toXml(originalXmlPath, this.targetPath, targetFileName);
    }

    @Test
    public void floatFloatTwoWayQuote2SqlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\interestRateSwap\\floatFloatTwoWayQuote.xml";
        String targetFileName = "floatFloatTwoWayQuote.sql";
        super.toSql(originalXmlPath, this.targetPath, targetFileName);
    }

    @Test
    public void floatFloatClickAndDealQuote2XmlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\other\\INTEREST_RATE_SWAP_S_K_CLICK_AND_NEGOTIATE_QUOTE.xml";
        String targetFileName = "floatFloatClickAndDealQuote.xml";
        super.toXml(originalXmlPath, this.targetPath, targetFileName);
    }

    @Test
    public void floatFloatClickAndDealQuote2SqlTest() throws IOException {
        final String originalXmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\interestRateSwap\\floatFloatClickAndDealQuote.xml";
        String targetFileName = "floatFloatClickAndDealQuote.sql";
        super.toSql(originalXmlPath, this.targetPath, targetFileName);
    }

}
