package com.ryo.imix.cmds.base;


import com.ryo.xslt.util.DaoUtil;
import com.ryo.xslt.util.XmlConverterUtil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.dom4j.Document;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.concurrent.ExecutionException;

/**
 * Created by bbhou on 2017/7/8.
 */
public abstract class AbstractBaseTest {


    protected static final Logger LOGGER = LogManager.getLogger(AbstractBaseTest.class);

    protected abstract String getTargetFilePath();

    /**
     * 意向报价-测试
     *
     * @throws IOException
     */
    public abstract void indicatorQuote2XmlTest() throws IOException;

    public abstract void indicatorQuote2SqlTest() throws IOException;

    /**
     * 本方成交报价-测试
     */
    public abstract void executionReport2XmlTest() throws IOException;

    public abstract void executionReport2SqlTest() throws IOException;


    /**
     * xml 路由文件路径
     */
    protected static String xmlRoutePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\main\\resources\\root\\xmlRoute.xsl";

    /**
     * sql 路由文件路径
     */
    protected static String sqlRoutePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\main\\resources\\root\\sqlRoute.xsl";

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
            DaoUtil.execute(sqlResult);
        } catch (SQLException e) {
            LOGGER.error("execute meet ex: {}", e, e);
        }
    }

    /**
     * 转换成为XML
     *
     * @param originalXmlPath
     * @param targetFileName
     */
    protected void toXml(String originalXmlPath, String targetFileName) {
        final String xslPath = this.xmlRoutePath;
        String xmlResult = XmlConverterUtil.convertWithXsl(originalXmlPath, xslPath).asXML();

        String resultPath = getTargetFilePath() + targetFileName;
        Path path = Paths.get(resultPath);
        try {
            Files.write(path, xmlResult.getBytes());
        } catch (IOException e) {
            LOGGER.error("execute meet ex: {}", e, e);
        }
    }

    /**
     * 转换成为SQL
     *
     * @param originalXmlPath
     * @param targetFileName
     */
    protected void toSql(String originalXmlPath, String targetFileName) {
        final String xslPath = this.sqlRoutePath;
        String xmlResult = XmlConverterUtil.transfer2CommonStr(originalXmlPath, xslPath);

        String resultPath = getTargetFilePath() + targetFileName;
        Path path = Paths.get(resultPath);
        try {
            Files.write(path, xmlResult.getBytes());
        } catch (IOException e) {
            LOGGER.error("execute meet ex: {}", e, e);
        }
    }

}
