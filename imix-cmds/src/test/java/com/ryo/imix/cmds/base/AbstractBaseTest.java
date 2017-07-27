package com.ryo.imix.cmds.base;


import com.ryo.xslt.util.XmlConverterUtil;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Created by bbhou on 2017/7/8.
 */
public abstract class AbstractBaseTest {


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
    protected String xmlRoutePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\main\\resources\\root\\xmlRoute.xsl";

    /**
     * sql 路由文件路径
     */
    protected String sqlRoutePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\main\\resources\\root\\sqlRoute.xsl";

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
            System.out.println(originalXmlPath);
            e.printStackTrace();
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
            e.printStackTrace();
        }
    }

}
