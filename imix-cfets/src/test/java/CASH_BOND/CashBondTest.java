package CASH_BOND;


import base.BaseTest;
import org.junit.Test;

/**
 * Created by bbhou on 2017/7/8.
 */
public class CashBondTest extends BaseTest {

    @Override
    protected String getTargetFilePath() {
        return "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\result\\CASH_BOND\\";
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



    //-------------------------------------------对话报价
    @Test
    public void requestOrderToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\CASH_BOND\\requestOrder.xml";
        final String targetFileName = "requestOrder.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void requestOrderToSqlTest() {
        final String filePath = "";
        final String targetFileName = "";
        super.toSql(filePath, targetFileName);
    }

    @Test
    public void requestQuoteCreateModifyToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\CASH_BOND\\requestQuoteCreateModify.xml";
        final String targetFileName = "requestQuoteCreateModify.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void requestQuoteCreateModifyToSqlTest() {
        final String filePath = "";
        final String targetFileName = "";
        super.toSql(filePath, targetFileName);
    }

    @Test
    public void requestQuoteCancelToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\CASH_BOND\\requestQuoteCancel.xml";
        final String targetFileName = "requestQuoteCancel.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void requestQuoteCancelToSqlTest() {
        final String filePath = "";
        final String targetFileName = "";
        super.toXml(filePath, targetFileName);
    }

}
