package CASH_BOND;


import base.BaseTest;
import org.junit.Test;

/**
 * Created by bbhou on 2017/7/8.
 */
public class CashBondTest extends BaseTest {

    @Override
    protected String getTargetFilePath() {
//        return "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\result\\CASH_BOND\\";

        return "/Users/houbinbin/IT/fork/xml-converter/imix-cfets/src/test/resources/result/CASH_BOND/";
    }

    //----------------------------------------------对话报价
    @Test
    public void QuoteStatusReportToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\CASH_BOND\\createDialogQuote.xml";
        final String targetFileName = "QuoteStatusReport.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void QuoteStatusReportToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\result\\CASH_BOND\\QuoteStatusReport.xml";
        final String targetFileName = "QuoteStatusReport.sql";
        super.toSql(filePath, targetFileName);
    }

    @Test
    public void ExecutionReportToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\CASH_BOND\\confirmDialogQuote.xml";
        final String targetFileName = "ExecutionReport.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void ExecutionReportToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\result\\CASH_BOND\\ExecutionReport.xml";
        final String targetFileName = "ExecutionReport.sql";
        super.toSql(filePath, targetFileName);
    }

    @Test
    public void dialogQuoteCancelToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\CASH_BOND\\dialogQuoteCancel.xml";
        final String targetFileName = "dialogQuoteCancel.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void dialogQuoteCancelToSqlTest() {
        final String filePath = "";
        final String targetFileName = "";
        super.toXml(filePath, targetFileName);
    }


    //----------------------------------------------限价报价
    @Test
    public void limitQuoteCreateToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\CASH_BOND\\createLimitQuote.xml";
        final String targetFileName = "createLimitQuote.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void limitQuoteCreateToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\result\\CASH_BOND\\createLimitQuote.xml";
        final String targetFileName = "createLimitQuote.sql";
        super.toSql(filePath, targetFileName);
    }




    //-------------------------------------------请求报价
    @Test
    public void quoteRequestAckToXmlTest() {
        final String filePath = "/Users/houbinbin/IT/fork/xml-converter/imix-cfets/src/test/resources/orginal/CASH_BOND/quoteRequestAck.xml";
        final String targetFileName = "quoteRequestAck.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void quoteRequestAckToSqlTest() {

    }

    //-------------------------------------------深度行情
    @Test
    public void ListMarketDataAckToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\CASH_BOND\\qtAck.xml";
        final String targetFileName = "ListMarketDataAck.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void ListMarketDataAckToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\result\\CASH_BOND\\ListMarketDataAck.xml";
        final String targetFileName = "ListMarketDataAck.sql";
        super.toSql(filePath, targetFileName);
    }


}
