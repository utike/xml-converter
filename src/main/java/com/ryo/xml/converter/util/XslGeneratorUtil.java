package com.ryo.xml.converter.util;

import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import java.io.File;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by bbhou on 2017/6/13.
 */
public class XslGeneratorUtil {

    private static List<String> special_list = new LinkedList<>();

    static {
        /**
         * 对于这个节点 每一个 group 都应该是 一个对象。
         * 在 message 构建时忽略掉。
         */
        special_list.add("NoUnderlyings");
    }

    /**
     * 1. 根据解析拼接处对应的 xsl 内容
     * 2. 根据 mapping 替换掉太长的名称。
     * 3. 返回最后的结果
     * @param xmlPath xml 文件路径
     * @return
     */
    private static String generatorMessageXslContent(final String xmlPath)  {
        StringBuilder stringBuilder = new StringBuilder();

        //创建SAXReader对象
        SAXReader reader = new SAXReader();
        //读取文件 转换成Document
        org.dom4j.Document document = null;
        try {
            document = reader.read(new File(xmlPath));
            //获取根节点元素对象
            Element root = document.getRootElement();
            List<Element> eles = root.element("body").elements("groups");
            for (Element element : eles) {
                System.out.println(element.attribute("name").getValue());
            }

            return stringBuilder.toString();
        } catch (DocumentException e) {
            e.printStackTrace();
            return "";
        }
    }

    /**
     * 生成 xsl 内容
     * @return
     */
    private static String generatorNoUnderlyingsXslContent() {
        return "";
    }

    public static void main(String[] args) {
        final String xmlPath = "E:\\CODE_GEN\\Fork\\xml-converter\\src\\main\\resources\\original\\1.txt";
//        String content = generatorXslContent(xmlPath);
//        System.out.println(content);
    }



}
