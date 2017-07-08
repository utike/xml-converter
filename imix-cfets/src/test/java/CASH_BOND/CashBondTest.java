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
    public void dialogOrderToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\CASH_BOND\\dialogOrder.xml";
        final String targetFileName = "dialogOrder.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void dialogOrderToSqlTest() {
        final String filePath = "";
        final String targetFileName = "";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void dialogQuoteCreateModifyToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\CASH_BOND\\dialogQuoteCreateModify.xml";
        final String targetFileName = "dialogQuoteCreateModify.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void dialogQuoteCreateModifyToSqlTest() {
        final String filePath = "";
        final String targetFileName = "";
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
    public void limitQuoteCreateModifyToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\CASH_BOND\\limitQuoteCreateModify.xml";
        final String targetFileName = "limitQuoteCreateModify.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void limitQuoteCreateModifyToSqlTest() {
        final String filePath = "";
        final String targetFileName = "";
        super.toSql(filePath, targetFileName);
    }

    @Test
    public void limitQuoteCancelToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\CASH_BOND\\limitQuoteCancel.xml";
        final String targetFileName = "limitQuoteCancel.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void limitQuoteCancelToSqlTest() {
        final String filePath = "";
        final String targetFileName = "";
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
