package cn.com.haiyi.cstp.xstl.review;

import com.ryo.xslt.util.CSTPDaoUtil;
import com.ryo.xslt.util.XmlConverterUtil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.SQLException;

/**
 * Created by bbhou on 2017/8/29.
 */
public class AbstractReViewBaseTest {

    protected static final Logger LOGGER = LogManager.getLogger(AbstractReViewBaseTest.class);


    /**
     * xml 路由文件路径
     */
    protected static String xmlRoutePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cstp\\src\\resources\\root\\xmlRoute.xsl";

    /**
     * sql 路由文件路径
     */
    protected static String sqlRoutePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cstp\\src\\resources\\root\\sqlRoute.xsl";

    /**
     * 执行SQL脚本。
     * @param originalXmlPath
     * @throws SQLException
     */
    public void execute(final String originalXmlPath) {
        //1. 获取转换模板
        String xmlResult = XmlConverterUtil.convertWithXsl(originalXmlPath, xmlRoutePath).asXML();

        //2. 获取转换SQL
        String sqlResult = XmlConverterUtil.transfer2WithSrc(xmlResult, sqlRoutePath);

        //3. 执行脚本
        try {
            CSTPDaoUtil.execute(sqlResult);
        } catch (SQLException e) {
            LOGGER.error("error path is: "+originalXmlPath);
            LOGGER.error("execute meet ex: {}", e, e);
        }
    }

}
