package cn.com.haiyi.trade.xstl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * 测试的基础类
 * 1. 所有SQL的测试类，首先需要确保执行了XML的生成。
 *
 * @author houbb
 * @date 2017-6-19 08:47:49
 * Created by bbhou on 2017/6/17.
 * @since 1.7
 */
public abstract class BaseTest {

    /**
     * xml 路由文件路径
     */
    protected String xmlRoutePath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\resources\\root\\xmlRoute.xsl";
    /**
     * sql 路由文件路径
     */
    protected String sqlRoutePath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\resources\\root\\sqlRoute.xsl";

    /**
     * 意向报价
     *
     * @throws IOException
     */
    public abstract void indicatorQuote2XmlTest() throws IOException;

    public abstract void indicatorQuote2SqlTest() throws IOException;

    /**
     * 对话报价转换
     */
    public abstract void dialogQuote2XmlTest() throws IOException;

    public abstract void dialogQuote2SqlTest() throws IOException;

    /**
     * 成交报价测试
     */
    public abstract void executionReport2XmlTest() throws IOException;

    public abstract void executionReport2SqlTest() throws IOException;


    /**
     * 意向报价转XML
     *
     * @param originalXmlPath
     * @param targetPath
     * @throws IOException
     */
    protected void indicatorQuote2Xml(String originalXmlPath, String targetPath) throws IOException {
        String xslPath = this.xmlRoutePath;
        String xmlResult = XmlConverterUtil.convertWithXsl(originalXmlPath, xslPath).asXML();

        String resultPath = targetPath + "indicatorQuote.xml";
        Path path = Paths.get(resultPath);
        Files.write(path, xmlResult.getBytes());
    }

    /**
     * 意向报价转 SQL
     * @param targetPath
     * @throws IOException
     */
    protected void indicatorQuote2Sql(String targetPath) throws IOException {
        String xmlPath = targetPath + "indicatorQuote.xml";
        String xslPath = this.sqlRoutePath;
        String xmlResult = XmlConverterUtil.transfer2CommonStr(xmlPath, xslPath);

        String resultPath = targetPath + "indicatorQuote.sql";
        Path path = Paths.get(resultPath);
        Files.write(path, xmlResult.getBytes());
    }

    /**
     * 对话报价转XML
     *
     * @param originalXmlPath 原始的XML文件路径
     * @param targetPath      目标文件路径
     * @throws IOException
     */
    protected void dialogQuote2Xml(String originalXmlPath, String targetPath) throws IOException {
//        String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\5.xml";
        String xslPath = this.xmlRoutePath;
        String xmlResult = XmlConverterUtil.convertWithXsl(originalXmlPath, xslPath).asXML();

        String resultPath = targetPath + "dialogQuote.xml";
        Path path = Paths.get(resultPath);
        Files.write(path, xmlResult.getBytes());
    }

    /**
     * 成交报价转XML
     *
     * @param originalXmlPath
     * @param targetPath
     * @throws IOException
     */
    protected void executionReport2Xml(String originalXmlPath, String targetPath) throws IOException {
//        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\25.xml";
        final String xslPath = xmlRoutePath;
        String xmlResult = XmlConverterUtil.convertWithXsl(originalXmlPath, xslPath).asXML();

        String resultPath = targetPath + "executionReport.xml";
        Path path = Paths.get(resultPath);
        Files.write(path, xmlResult.getBytes());
    }


    /**
     * 对话报价转SQL
     *
     * @param sqlRoutePath
     * @param targetPath
     */
    protected void dialogQuote2Sql(String sqlRoutePath, String targetPath) {
        try {
            String xmlPath = targetPath + "dialogQuote.xml";
            String xslPath = sqlRoutePath;
            String xmlResult = XmlConverterUtil.transfer2CommonStr(xmlPath, xslPath);

            String resultPath = targetPath + "dialogQuote.sql";
            Path path = Paths.get(resultPath);
            Files.write(path, xmlResult.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 成交报价转SQL
     *
     * @param sqlRoutePath sql 路由
     * @param targetPath   目标路径
     */
    protected void executionReport2Sql(String sqlRoutePath, String targetPath) {
        try {
            String xmlPath = targetPath + "executionReport.xml";
            String xslPath = sqlRoutePath;
            String xmlResult = XmlConverterUtil.transfer2CommonStr(xmlPath, xslPath);

            String resultPath = targetPath + "executionReport.sql";
            Path path = Paths.get(resultPath);
            Files.write(path, xmlResult.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     * 转换成为XML
     *
     * @param originalXmlPath
     * @param targetFilePath
     * @param targetFileName
     */
    protected void toXml(String originalXmlPath, String targetFilePath, String targetFileName) throws IOException {
        final String xslPath = this.xmlRoutePath;
        String xmlResult = XmlConverterUtil.convertWithXsl(originalXmlPath, xslPath).asXML();

        String resultPath = targetFilePath + targetFileName;
        Path path = Paths.get(resultPath);
        Files.write(path, xmlResult.getBytes());
    }

    /**
     * 转换成为SQL
     *
     * @param originalXmlPath
     * @param targetFilePath
     * @param targetFileName
     */
    protected void toSql(String originalXmlPath, String targetFilePath, String targetFileName) throws IOException {
        final String xslPath = this.sqlRoutePath;
        String xmlResult = XmlConverterUtil.transfer2CommonStr(originalXmlPath, xslPath);

        String resultPath = targetFilePath + targetFileName;
        Path path = Paths.get(resultPath);
        Files.write(path, xmlResult.getBytes());
    }
}
