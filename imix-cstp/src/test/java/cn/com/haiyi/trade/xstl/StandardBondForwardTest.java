package cn.com.haiyi.trade.xstl;

import org.junit.Test;

import java.io.IOException;

/**
 * 债券远期测试
 * Created by bbhou on 2017/6/20.
 */
public class StandardBondForwardTest extends AbstractBaseTest {

    private String targetPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\standardBondForward\\";


    @Override
    @Test
    public void executionReport2XmlTest() throws IOException {
       final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\STANDARD_BOND_FORWARD_8_SELF.xml";
       super.executionReport2Xml(xmlPath, this.targetPath);
    }

    @Override
    @Test
    public void executionReport2SqlTest() throws IOException {
        super.executionReport2Sql(super.sqlRoutePath, this.targetPath);
    }
}
