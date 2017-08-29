package Error;

import base.BaseTest;
import org.junit.Test;

/**
 * Created by bbhou on 2017/7/12.
 */
public class ErrorTest extends BaseTest {
    @Override
    protected String getTargetFilePath() {
        return "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\Error\\";
    }

    @Test
    public void ErrorToXmlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\orginal\\Error\\error.txt";
        final String targetFileName = "Error.xml";
        super.toXml(filePath, targetFileName);
    }
    @Test
    public void ErrorToSqlTest() {
        final String filePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-trader\\src\\test\\resources\\result\\Error\\Error.xml";
        final String targetFileName = "Error.sql";
        super.toSql(filePath, targetFileName);
    }

}
