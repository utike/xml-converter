package com.ryo.xml.convert.test;

import org.junit.Test;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

/**
 * Created by bbhou on 2017/6/12.
 */
public class XmlTest {

    @Test
    public void readXmlTest()
    {
        try {
            String xmlFilePath = "E:\\CODE_GEN\\Fork\\xml-converter\\src\\main\\resources\\xml\\city.xml";

            //解析文档
            DocumentBuilderFactory domFactory = DocumentBuilderFactory.newInstance();
            domFactory.setNamespaceAware(true); // never forget this!
            DocumentBuilder builder = domFactory.newDocumentBuilder();
            Document doc = builder.parse(xmlFilePath);

            XPathFactory factory = XPathFactory.newInstance(); //创建 XPathFactory
            XPath xpath = factory.newXPath();//用这个工厂创建 XPath 对象

            NodeList nodes = (NodeList)xpath.evaluate("location/property", doc, XPathConstants.NODESET);
            String name = "";
            String value = "";
            for (int i = 0; i < nodes.getLength(); i++) {
                Node node = nodes.item(i);
                name = (String) xpath.evaluate("name", node, XPathConstants.STRING);
                value = (String) xpath.evaluate("value", node, XPathConstants.STRING);
                System.out.println("name="+name+";value="+value);
            }

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

}
