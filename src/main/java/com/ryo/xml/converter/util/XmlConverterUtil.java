package com.ryo.xml.converter.util;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.*;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamSource;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Created by bbhou on 2017/6/13.
 */
public class XmlConverterUtil {

    /**
     * 通过xsl对xml文件进行转换
     * @param originalPath 原始文件路径
     * @param xslPath 用于转换的xlsPath
     * @return
     */
    public static Document convertWithXsl(final String originalPath, final String xslPath) {
        try {
            Path path = Paths.get(originalPath);
            SAXReader reader = new SAXReader();
            ByteArrayInputStream bais = new ByteArrayInputStream(Files.readAllBytes(path));
            Document doc = reader.read(bais);
            Document transformDoc = transformDocument(doc,xslPath);
            return transformDoc;
        } catch (Exception e) {
            System.out.println("error: " +e);
        }

        return null;
    }


    /**
     * 通过xsl将xml数据文件转化doc对象
     * @param doc xml文档对象
     * @param xslPath xls文件路径
     * @return
     */
    private static Document transformDocument(Document doc, String xslPath){
        TransformerFactory factory = TransformerFactory.newInstance();
        Document transformerDoc = null;
        try {
            Transformer transformer = factory.newTransformer(new StreamSource(xslPath));
            DocumentSource docSource = new DocumentSource(doc);
            DocumentResult docResult = new DocumentResult();
            transformer.transform(docSource, docResult);
            transformerDoc = docResult.getDocument();
        } catch (Exception e) {
            System.out.println("error: " +e);
        }
        return transformerDoc;
    }

    /**
     * 将doc文档对象转化为html字符串
     * @param transformDoc doc文档
     * @return
     */
    private static String write2XMLString(Document transformDoc){
        StringWriter strWriter = new StringWriter();
        OutputFormat format = OutputFormat.createPrettyPrint();
        format.setEncoding(StandardCharsets.UTF_8.toString());
        format.setXHTML(true);
        XMLWriter xmlWriter = new XMLWriter(strWriter, format);
        format.setExpandEmptyElements(false);
        try {
            xmlWriter.write(transformDoc);
            xmlWriter.flush();
        } catch (IOException e) {
            System.out.println(e);
        }
        return strWriter.toString();
    }


    /**
     * 将doc文档对象转化为html字符串
     * @param transformDoc doc文档
     * @return
     */
    private static String write2HTMLString(Document transformDoc){
        StringWriter strWriter = new StringWriter();
        OutputFormat format = OutputFormat.createPrettyPrint();
        format.setEncoding(StandardCharsets.UTF_8.toString());
        format.setXHTML(true);
        HTMLWriter writer = new HTMLWriter(strWriter, format);
        format.setExpandEmptyElements(false);
        try {
            writer.write(transformDoc);
            writer.flush();
        } catch (IOException e) {
            System.out.println(e);
        }
        return strWriter.toString();
    }

    public static String getDateStr() {
        return "";
    }

    public static void main(String[] args) throws DocumentException {
//        String xmlPath = "/Users/houbinbin/IT/fork/result-converter/src/main/resources/original/5.result";
//        String xslPath = "/Users/houbinbin/IT/fork/result-converter/src/main/resources/common/INTER_BANK_OFFERING/_dialogQuote.xsl";

        final String xmlPath = "E:\\_java\\test.result";
        final String xslPath = "E:\\_java\\test.xsl";
//        final String xslPath = "E:\\CODE_GEN\\Fork\\result-converter\\imix-cstp\\src\\main\\resources\\root\\java.xsl";
//        final String xslPath = "E:\\CODE_GEN\\Fork\\result-converter\\src\\test\\resources\\withJava\\fruit.xsl";
        Document document = convertWithXsl(xmlPath, xslPath);
        System.out.println(write2XMLString(document));

        //创建SAXReader对象
//        SAXReader reader = new SAXReader();
//        //读取文件 转换成Document
//        Document document = reader.read(new File(xmlPath));
//        Element element= document.getRootElement();
//        System.out.println(element.getName());
    }

}
