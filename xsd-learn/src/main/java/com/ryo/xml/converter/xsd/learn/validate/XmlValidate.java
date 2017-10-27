package com.ryo.xml.converter.xsd.learn.validate;

import com.ryo.xml.converter.xsd.learn.util.PathUtil;
import org.dom4j.Document;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.SAXValidator;
import org.dom4j.io.XMLWriter;
import org.dom4j.util.XMLErrorHandler;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;

/**
 * https://stackoverflow.com/questions/4126988/restricting-xml-elements-based-on-another-element-via-xsd
 * [demo](http://zvon.org/xxl/SchematronTutorial/General/toc.html)
 * [java](http://blog.csdn.net/rongbo_j/article/details/50589856)
 * http://blog.csdn.net/yezi1305/article/details/4338384
 * http://lavasoft.blog.51cto.com/62575/97597/
 * Created by bbhou on 2017/7/3.
 */
public class XmlValidate {

    public static void validateXMLByXSD(String xsdFileName,String xmlFileName) {
        try {
            //创建默认的XML错误处理器
            XMLErrorHandler errorHandler =  new XMLErrorHandler();

            //获取基于 SAX 的解析器的实例
            SAXParserFactory factory = SAXParserFactory.newInstance();
            //解析器在解析时验证 XML 内容。
            factory.setValidating(true);
            //指定由此代码生成的解析器将提供对 XML 名称空间的支持。
            factory.setNamespaceAware(true);
            //使用当前配置的工厂参数创建 SAXParser 的一个新实例。
            SAXParser parser = factory.newSAXParser();
            //创建一个读取工具
            SAXReader xmlReader = new SAXReader();
            //获取要校验xml文档实例
            Document xmlDocument = (Document) xmlReader.read(new File(xmlFileName));
            //设置 XMLReader 的基础实现中的特定属性。核心功能和属性列表可以在 [url]http://sax.sourceforge.NET/?selected=get-set[/url] 中找到。
            parser.setProperty(
                    "http://java.sun.com/xml/jaxp/properties/schemaLanguage",
                    "http://www.w3.org/2001/XMLSchema");
            parser.setProperty(
                    "http://java.sun.com/xml/jaxp/properties/schemaSource",
                    "file:" + xsdFileName);
            //创建一个SAXValidator校验工具，并设置校验工具的属性
            SAXValidator validator = new SAXValidator(parser.getXMLReader());
            //设置校验工具的错误处理器，当发生错误时，可以从处理器对象中得到错误信息。
            validator.setErrorHandler(errorHandler);

            //校验
            validator.validate(xmlDocument);
            OutputFormat format = OutputFormat.createPrettyPrint();
            format.setEncoding("UTF-8");


            XMLWriter writer = new XMLWriter(OutputFormat.createPrettyPrint());
            //如果错误信息不为空，说明校验失败，打印错误信息
            if (errorHandler.getErrors().hasContent()) {
                System.out.println("XML文件通过XSD文件校验失败！");
                writer.write(errorHandler.getErrors());
            } else {
                System.out.println("Good! XML文件通过XSD文件校验成功！");
            }

        } catch (Exception ex) {
            System.out.println("XML文件: " + xmlFileName + " 通过XSD文件:" + xsdFileName + "检验失败。/n原因： " + ex.getMessage());
            ex.printStackTrace();
        }
    }


    /**
     * 利用XSD校验XML的字符串
     * @param xsdFileName
     * @param xmlStr
     */
    public static void validateXmlStrByXSD(String xsdFileName,String xmlStr) throws Exception {
            String msg = String.format("Start to validate xsdFileName: %s, xmlStr: %s", xsdFileName, xmlStr);
//            logger.info(msg);

            //创建默认的XML错误处理器
            XMLErrorHandler errorHandler =  new XMLErrorHandler();

            //获取基于 SAX 的解析器的实例
            SAXParserFactory factory = SAXParserFactory.newInstance();
            //解析器在解析时验证 XML 内容。
            factory.setValidating(true);
            //指定由此代码生成的解析器将提供对 XML 名称空间的支持。
            factory.setNamespaceAware(true);
            //使用当前配置的工厂参数创建 SAXParser 的一个新实例。
            SAXParser parser = factory.newSAXParser();
            //创建一个读取工具
            SAXReader xmlReader = new SAXReader();

            InputStream in = new ByteArrayInputStream(xmlStr.getBytes());
            //获取要校验xml文档实例
            Document xmlDocument = (Document) xmlReader.read(in);
            //设置 XMLReader 的基础实现中的特定属性。核心功能和属性列表可以在 [url]http://sax.sourceforge.NET/?selected=get-set[/url] 中找到。
            parser.setProperty(
                    "http://java.sun.com/xml/jaxp/properties/schemaLanguage",
                    "http://www.w3.org/2001/XMLSchema");
            parser.setProperty(
                    "http://java.sun.com/xml/jaxp/properties/schemaSource",
                    "file:" + xsdFileName);
            //创建一个SAXValidator校验工具，并设置校验工具的属性
            SAXValidator validator = new SAXValidator(parser.getXMLReader());
            //设置校验工具的错误处理器，当发生错误时，可以从处理器对象中得到错误信息。
            validator.setErrorHandler(errorHandler);

            //校验
            validator.validate(xmlDocument);
            OutputFormat format = OutputFormat.createPrettyPrint();
            format.setEncoding("UTF-8");


            XMLWriter writer = new XMLWriter(OutputFormat.createPrettyPrint());
            //如果错误信息不为空，说明校验失败，打印错误信息
            if (errorHandler.getErrors().hasContent()) {
                System.out.println("XML文件通过XSD文件校验失败！");

                String message = errorHandler.getErrors().getStringValue();
                System.out.println(message);

                System.out.println("errorHandler.getErrors()");
                writer.write(errorHandler.getErrors());

                throw new IllegalArgumentException(message);
//                System.out.println(errorHandler.getErrors().);
//                String error = errorHandler.getErrors().toString();
//                System.out.println(error);
            }
    }

    public static void main(String[] args) {
//        String xmlPath = "D:\\CODE\\webService\\xsd\\employee.xml";
//        String xsdPath = "D:\\CODE\\webService\\xsd\\1.xsd";
        String xsdPath = PathUtil.getXsdPath("moreThanOne.xsd");
//        validateXMLByXSD(xmlPath, xsdPath);

        String xmlStr = "<?xml version=\"1.0\" ?>\n" +
                "<CBLimitQuote>\n" +
                "    <MaturityYield>3.35</MaturityYield>\n" +
                "    <StrikeYield>3.25</StrikeYield>\n" +
                "</CBLimitQuote>\n" +
                "\n";
        try {
            validateXmlStrByXSD(xsdPath, xmlStr);
        } catch (Exception e) {
            System.out.println(e.getMessage());
//            e.printStackTrace();
        }
    }

}
