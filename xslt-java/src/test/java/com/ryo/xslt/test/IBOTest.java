package com.ryo.xslt.test;

import org.junit.Test;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Created by bbhou on 2017/6/17.
 */
public class IBOTest {

    private String targetPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\result\\ibo\\";

    private String xmlRoutePath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\resources\\root\\xmlRoute.xsl";
    private String sqlRoutePath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\resources\\root\\sqlRoute.xsl";

    @Test
    public void dialog2XmlTest() throws IOException {
        String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\5.xml";
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
        String xmlPath = targetPath+"dialogQuote.xml";
        String xslPath = sqlRoutePath;
        String xmlResult = XmlConverterUtil.transfer2CommonStr(xmlPath, xslPath);

        String resultPath = targetPath+"dialogQuote.sql";
        Path path = Paths.get(resultPath);
        Files.write(path, xmlResult.getBytes());
    }


    @Test
    public void executionReport2XmlTest() throws IOException {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-java\\src\\test\\resources\\original\\3.xml";
        final String xslPath = xmlRoutePath;
        String xmlResult = XmlConverterUtil.convertWithXsl(xmlPath, xslPath).asXML();

        String resultPath = targetPath+"executionReport.xml";
        Path path = Paths.get(resultPath);
        Files.write(path, xmlResult.getBytes());
    }

    @Test
    public void executionReport2SqlTest() throws IOException {
        String xmlPath = targetPath+"executionReport.xml";
        String xslPath = sqlRoutePath;
        String xmlResult = XmlConverterUtil.transfer2CommonStr(xmlPath, xslPath);

        String resultPath = targetPath+"executionReport.sql";
        Path path = Paths.get(resultPath);
        Files.write(path, xmlResult.getBytes());
    }

}
