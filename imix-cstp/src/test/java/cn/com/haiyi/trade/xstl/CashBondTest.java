package cn.com.haiyi.trade.xstl;

import cn.com.haiyi.trade.xstl.base.ClickAndDealQuoteTest;
import cn.com.haiyi.trade.xstl.base.MarketMakingTest;
import cn.com.haiyi.trade.xstl.base.NewOrderSingleQuoteTest;
import org.junit.Test;

import java.io.IOException;

/**
 * 买断式回购测试
 * Created by bbhou on 2017/6/19.
 */
public class CashBondTest extends BaseTest
    implements ClickAndDealQuoteTest, NewOrderSingleQuoteTest,
        MarketMakingTest {

    private String targetPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\cashBond\\";

    @Override
    @Test
    public void indicatorQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\indicator_CASH_BOND.xml";
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
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\13.xml";
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
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\10.xml";
        super.executionReport2Xml(xmlPath, this.targetPath);
    }

    @Test
    @Override
    public void executionReport2SqlTest() throws IOException {
        super.executionReport2Sql(super.sqlRoutePath, this.targetPath);
    }

    @Override
    @Test
    public void clickAndDealQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\other\\CASH_BOND_S_CLICK_AND_DEAL_QUOTE.xml";
        final String targetFileName = "clickAndDealQuote.xml";
        super.toXml(xmlPath, this.targetPath, targetFileName);
    }

    @Override
    @Test
    public void clickAndDealQuote2SqlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\cashBond\\clickAndDealQuote.xml";
        final String targetFileName = "clickAndDealQuote.sql";
        super.toSql(xmlPath, this.targetPath, targetFileName);
    }

    @Override
    @Test
    public void newOrderSingleQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\other\\CASH_BOND_D.xml";
        final String targetFileName = "newOrderSingleQuote.xml";
        super.toXml(xmlPath, this.targetPath, targetFileName);
    }

    @Override
    @Test
    public void newOrderSingleQuote2SqlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\cashBond\\newOrderSingleQuote.xml";
        final String targetFileName = "newOrderSingleQuote.sql";
        super.toSql(xmlPath, this.targetPath, targetFileName);
    }

    @Override
    @Test
    public void marketMaking2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\other\\CASH_BOND_Market_MARKING.xml";
        final String targetFileName = "marketMaking.xml";
        super.toXml(xmlPath, this.targetPath, targetFileName);
    }

    @Override
    @Test
    public void marketMaking2SqlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\cashBond\\marketMaking.xml";
        final String targetFileName = "marketMaking.sql";
        super.toSql(xmlPath, this.targetPath, targetFileName);
    }
}
