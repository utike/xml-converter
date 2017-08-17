package Other;

import base.BaseTest;
import org.junit.Test;

/**
 * Created by bbhou on 2017/8/16.
 */
public class OtherTest extends BaseTest {
    @Override
    protected String getTargetFilePath() {
        return "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\Other\\";
    }

    //orderToQuote 成交(8)
    @Test
    public void OrderToQuoteToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\Other\\OrderToQuoteCase.xml";
        final String targetFileName = "OrderToQuote.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void OrderToQuoteToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\Other\\OrderToQuote.xml";
        final String targetFileName = "OrderToQuote.sql";
        super.toSql(filePath, targetFileName);
    }

}
