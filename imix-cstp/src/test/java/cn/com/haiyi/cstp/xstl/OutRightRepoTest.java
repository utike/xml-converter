package cn.com.haiyi.cstp.xstl;

import org.junit.Test;

import java.io.IOException;

/**
 * 买断式回购测试
 * Created by bbhou on 2017/6/19.
 */
public class OutRightRepoTest extends BaseTest {

    private String targetPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cstp\\src\\test\\resources\\result\\outRightRepo\\";

    @Override
    @Test
    public void indicatorQuote2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cstp\\src\\test\\resources\\original\\indicator_OUTRIGHT_REPO.xml";
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
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cstp\\src\\test\\resources\\original\\4.xml";
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
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cstp\\src\\test\\resources\\original\\6.xml";
        super.executionReport2Xml(xmlPath, this.targetPath);
    }

    @Test
    @Override
    public void executionReport2SqlTest() throws IOException {
        super.executionReport2Sql(super.sqlRoutePath, this.targetPath);
    }
}
