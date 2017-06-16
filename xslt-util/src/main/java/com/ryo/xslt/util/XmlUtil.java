package com.ryo.xslt.util;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.io.DocumentSource;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.UnsupportedEncodingException;

/**
 * @author houbinbin
 * @version 1.0
 * @on 2017/6/16
 * @since 1.7
 */
public class XmlUtil {


    public static void main(String[] args) {
        dom4jTest();
    }

    public static void dom4jTest()  {
        try {
            String srcStr = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
                    "<ROOt>values</ROOt>";

            StreamSource s = new StreamSource(new File("/Users/houbinbin/IT/fork/xml-converter/xslt-util/src/main/resources/root/newtest.xsl"));
            TransformerFactory tf = TransformerFactory.newInstance(); //转换器工厂
            Transformer t = tf.newTransformer(s); //转换器对象，并绑定XSLT对象

            Document document = DocumentHelper.parseText(srcStr); //读取XML源文件

            DocumentSource source = new DocumentSource(document); //XML源文件对象
//		DocumentResult result = new DocumentResult(); //转换结果对象
            ByteArrayOutputStream arrayOutputStream = new ByteArrayOutputStream();
            t.transform(source, new StreamResult(arrayOutputStream)); //进行转换操作

            System.out.println(new String(arrayOutputStream.toByteArray(),"gb2312")); //显示转换结果对象内容
//		System.out.println(result); //显示转换结果对象内容
        } catch (DocumentException e) {
            e.printStackTrace();
        } catch (TransformerException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }


}
