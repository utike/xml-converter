package cn.com.haiyi.cstp.xstl;

import org.junit.Test;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * 抵押式回购
 * Created by bbhou on 2017/6/17.
 */
public class CollateralRepoTest extends BaseTest {

    private String targetPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\collateralRepo\\";

    @Override
    @Test
    public void indicatorQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\indicator_COLLATERAL_REPO.xml";
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
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\2.xml";
        super.dialogQuote2Xml(xmlPath, this.targetPath);
    }

    @Test
    @Override
    public void dialogQuote2SqlTest() throws IOException {
        super.dialogQuote2Sql(super.sqlRoutePath, this.targetPath);
    }

    @Test
    public void executionReport2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\25.xml";
        super.executionReport2Xml(xmlPath, this.targetPath);
    }

    @Test
    public void executionReport2SqlTest() throws IOException {
        super.executionReport2Sql(super.sqlRoutePath, this.targetPath);
    }

}
