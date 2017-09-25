package CASH_BOND;


import base.BaseTest;
import org.junit.Test;

import javax.annotation.Resource;

/**
 * Created by bbhou on 2017/7/8.
 */
public class CashBondTest extends BaseTest {

    @Override
    protected String getTargetFilePath() {
        return "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\";

//        return "/Users/houbinbin/IT/fork/xml-converter/imix-trader/src/test/resources/result/CASH_BOND/";
    }

    //----------------------------------------------限价报价-8
    @Test
    public void limitQuoteExecutionReportTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\limitQuoteExecutionReport.xml";
        final String targetFileName = "limitQuoteExecutionReport.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void limitQuoteExecutionReportWithoutIDTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\limitQuoteExecutionReportWithOutID.xml";
        final String targetFileName = "limitQuoteExecutionReportWithOutID.xml";
        super.toXml(filePath, targetFileName);
    }

    //----------------------------------------------对话报价
    //quote (S)
    @Test
    public void QuoteToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\CBTQuoteWithStriker.xml";
        final String targetFileName = "CBTQuoteWithStriker.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void QuoteToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\QuoteWithYeild2.xml";
        final String targetFileName = "QuoteWithYeild2.sql";
        super.toSql(filePath, targetFileName);
    }

    //请求报价(S) QuoteType=113
    @Test
    public void RequestQuoteToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\requestQuote.xml";
        final String targetFileName = "requestQuote.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void RequestQuoteToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\requestQuote.xml";
        final String targetFileName = "requestQuote.sql";
        super.toSql(filePath, targetFileName);
    }

    //quote 报价(AI)
    @Test
    public void QuoteStatusReportToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\createDialogQuote.xml";
        final String targetFileName = "QuoteStatusReport.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void QuoteStatusReportToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\QuoteStatusReport.xml";
        final String targetFileName = "QuoteStatusReport.sql";
        super.toSql(filePath, targetFileName);
    }

    //quote 成交(8)
    @Test
    public void ExecutionReportToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\20170823-4-8.xml";
        final String targetFileName = "ExecutionReport.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void ExecutionReportToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\20170823-4-8.xml";
        final String targetFileName = "20170823-4-8.sql";
        super.toSql(filePath, targetFileName);
    }

    //
    @Test
    public void dialogQuoteCancelToXmlTest() {
//        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\dialogQuoteCancel.xml";
//        final String targetFileName = "dialogQuoteCancel.xml";
//        super.toXml(filePath, targetFileName);
    }
    @Test
    public void dialogQuoteCancelToSqlTest() {
//        final String filePath = "";
//        final String targetFileName = "";
//        super.toXml(filePath, targetFileName);
    }


    //----------------------------------------------限价报价
    @Test
    public void newOrderSingleToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\newOrderSingle.xml";
        final String targetFileName = "newOrderSingle.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void newOrderSingleToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\newOrderSingle.xml";
        final String targetFileName = "newOrderSingle.sql";
        super.toSql(filePath, targetFileName);
    }

    @Test
    public void createLimitQuoteToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\createLimitQuote.xml";
        final String targetFileName = "createLimitQuote.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void createLimitQuoteToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\createLimitQuote.xml";
        final String targetFileName = "createLimitQuote.sql";
        super.toSql(filePath, targetFileName);
    }


    //-------------------------------------------请求报价
    //请求报价查询(R)
    @Test
    public void quoteRequestToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\quoteRequest.xml";
        final String targetFileName = "quoteRequest.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void quoteRequestToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\quoteRequest.xml";
        final String targetFileName = "quoteRequest.sql";
        super.toSql(filePath, targetFileName);
    }

    //请求报价取消(Z)
    @Test
    public void quoteCancelToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\quoteCancel.xml";
        final String targetFileName = "quoteCancel.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void quoteCancelToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\quoteCancel.xml";
        final String targetFileName = "quoteCancel.sql";
        super.toSql(filePath, targetFileName);
    }

    //请求报价响应(U29)
    @Test
    public void quoteRequestAckToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\quoteRequestAck.xml";
        final String targetFileName = "quoteRequestAck.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void quoteRequestAckToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\quoteRequestAck.xml";
        final String targetFileName = "quoteRequestAck.sql";
        super.toSql(filePath, targetFileName);
    }

    @Test
    public void quoteU32CBTToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\U32BT.xml";
        final String targetFileName = "U32BT.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void quoteU32CBTToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\U32BT.xml";
        final String targetFileName = "U32BT.sql";
        super.toSql(filePath, targetFileName);
    }

    //(Z)
    //请求报价撤销请求报价
    //接收交易完成通知
    //请求报价过期
    //所有做事方拒绝请求报价
    //请求报价系统自动撤销通知。
    @Test
    public void quoteRequestCancelToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\quoteCancel.xml";
        final String targetFileName = "quoteCancel.xml";
        super.toXml(filePath, targetFileName);
    }

    @Test
    public void quoteRequestCancelToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\quoteCancel.xml";
        final String targetFileName = "quoteRequestCancel.sql";
        super.toSql(filePath, targetFileName);
    }

    //-------------------------------------------深度行情
    //U100
    @Test
    public void ListMarketDataAckToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\qtAck.xml";
        final String targetFileName = "ListMarketDataAck.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void ListMarketDataAckToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\ListMarketDataAck.xml";
        final String targetFileName = "ListMarketDataAck.sql";
        super.toSql(filePath, targetFileName);
    }


    //w
    @Test
    public void MarketDataSnapshotFullRefreshToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\refreshWithParty.xml";
        final String targetFileName = "refreshWithPartyStandard.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void MarketDataSnapshotFullRefreshToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\refreshWithPartyStandard.xml";
        final String targetFileName = "refreshWithPartyStandard.sql";
        super.toSql(filePath, targetFileName);
    }

    //aj
    @Test
    public void QuoteResponseToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\CASH_BOND\\quoteResponse.xml";
        final String targetFileName = "quoteResponse.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void QuoteResponseToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\CASH_BOND\\quoteResponse.xml";
        final String targetFileName = "quoteResponse.sql";
        super.toSql(filePath, targetFileName);
    }

    public static void main(String[] args) {
//        QuoteStatus
    }

}