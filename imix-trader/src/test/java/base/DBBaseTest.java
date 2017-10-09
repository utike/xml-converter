package base;


import com.ryo.xslt.util.DaoUtil;
import com.ryo.xslt.util.XmlConverterUtil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by bbhou on 2017/7/8.
 */
public abstract class DBBaseTest extends BaseTest {


    protected static final Logger LOGGER = LogManager.getLogger(DBBaseTest.class);


    /**
     * 执行SQL脚本。
     * @param originalXmlPath
     * @throws SQLException
     */
    public void execute(final String originalXmlPath) {
        LOGGER.info("==================== Start execute: "+originalXmlPath);
        //1. 获取转换模板
        String xmlResult = XmlConverterUtil.convertWithXsl(originalXmlPath, super.xmlRoutePath).asXML();

        //2. 获取转换SQL
        String sqlResult = XmlConverterUtil.transfer2WithSrc(xmlResult, super.sqlRoutePath);

        //3. 执行脚本
        try {
            executeSql(sqlResult);
            LOGGER.info("==================== End execute: "+originalXmlPath);
        } catch (SQLException e) {
            LOGGER.error("error path is: "+originalXmlPath);
            LOGGER.error("execute meet ex: {}", e, e);
        }
    }

    /**
     * 执行脚本
     * @param sql
     */
    private void executeSql(final String sql) throws SQLException {
        final String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=cfets_trader";
        Connection connection = DaoUtil.getConnection(url, "sa", "hydb001*");
        Statement statement = connection.createStatement();
        statement.execute(sql);
    }

}
