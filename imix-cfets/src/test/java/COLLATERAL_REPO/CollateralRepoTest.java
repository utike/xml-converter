package COLLATERAL_REPO;

import base.BaseTest;
import org.junit.Test;

/**
 * Created by bbhou on 2017/7/8.
 */
public class CollateralRepoTest extends BaseTest {

    @Override
    protected String getTargetFilePath() {
        return "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\result\\COLLATERAL_REPO\\";
    }

    @Test
    public void dialogOrderToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\COLLATERAL_REPO\\dialogOrder.xml";
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
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\COLLATERAL_REPO\\dialogQuoteCreateModify.xml";
        final String targetFileName = "dialogQuoteCreateModify.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void dialogQuoteCreateModifyToSqlTest() {
        final String filePath = "";
        final String targetFileName = "";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void dialogQuoteCancelToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\COLLATERAL_REPO\\dialogQuoteCancel.xml";
        final String targetFileName = "dialogQuoteCancel.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void dialogQuoteCancelToSqlTest() {
        final String filePath = "";
        final String targetFileName = "";
        super.toXml(filePath, targetFileName);
    }

}
