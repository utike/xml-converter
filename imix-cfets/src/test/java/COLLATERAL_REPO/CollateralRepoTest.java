package COLLATERAL_REPO;

import base.BaseTest;
import org.junit.Test;

/**
 * Created by bbhou on 2017/7/8.
 */
public class CollateralRepoTest extends BaseTest {

    //quote 报价(AI)
    @Test
    public void QuoteStatusReportToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\orginal\\COLLATERAL_REPO\\crQuoteCreate.xml";
        final String targetFileName = "QuoteStatusReport.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void QuoteStatusReportToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\result\\COLLATERAL_REPO\\QuoteStatusReport.xml";
        final String targetFileName = "QuoteStatusReport.sql";
        super.toSql(filePath, targetFileName);
    }

    //quote 成交(8)
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

    @Override
    protected String getTargetFilePath() {
        return "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cfets\\src\\test\\resources\\result\\COLLATERAL_REPO\\";
    }
}
