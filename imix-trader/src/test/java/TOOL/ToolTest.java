package TOOL;

import base.BaseTest;
import org.junit.Test;

/**
 * Created by bbhou on 2017/9/15.
 */
public class ToolTest extends BaseTest {
    @Override
    protected String getTargetFilePath() {
        return "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\TOOL\\";
    }

    @Test
    public void userResponseToXmlTest() {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\TOOL\\BFUserResponse.xml";
        super.toXml(xmlPath, "userResponse.xml");
    }

    @Test
    public void userResponseToSqlTest() {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\TOOL\\userResponse.xml";
        super.toSql(xmlPath, "userResponse.sql");
    }

    @Test
    public void queryResultToXmlTest() {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\TOOL\\U01QueryResultImix.xml";
        super.toXml(xmlPath, "queryResult.xml");
    }

    @Test
    public void queryResultToSqlTest() {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\TOOL\\queryResult.xml";
        super.toSql(xmlPath, "queryResult.sql");
    }

}
