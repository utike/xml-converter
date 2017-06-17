package com.ryo.xslt.test;

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

    private String xmlRoutePath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\resources\\root\\xmlRoute.xsl";
    private String sqlRoutePath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\resources\\root\\sqlRoute.xsl";

    @Test
    public void dialog2XmlTest() throws IOException {
        String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\2.xml";
        String xslPath = xmlRoutePath;
        String xmlResult = XmlConverterUtil.convertWithXsl(xmlPath, xslPath).asXML();

        String resultPath = targetPath+"dialogQuote.xml";
        Path path = Paths.get(resultPath);
        Files.write(path, xmlResult.getBytes());
    }

    /**
     * 需要确保首先生成了XML
     */
    @Test
    public void dialog2SqlTest() throws IOException {
        super.dialogQuote2Sql(sqlRoutePath, targetPath);
    }


    @Test
    public void executionReport2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\25.xml";
        final String xslPath = xmlRoutePath;
        String xmlResult = XmlConverterUtil.convertWithXsl(xmlPath, xslPath).asXML();

        String resultPath = targetPath+"executionReport.xml";
        Path path = Paths.get(resultPath);
        Files.write(path, xmlResult.getBytes());
    }

    @Test
    public void executionReport2SqlTest() throws IOException {
        super.executionReport2Sql(sqlRoutePath, targetPath);
    }

}
