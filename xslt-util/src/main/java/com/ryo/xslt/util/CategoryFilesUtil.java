package com.ryo.xslt.util;

import java.util.List;

/**
 * imix 消息工具方法
 * @see DaoUtil 数据入库
 * @see Imix2XmlTest imix=>xml
 * @see XmlFilterUtil 内容过滤
 * Created by bbhou on 2017/7/27.
 */
public class CategoryFilesUtil {

    /**
     * 获取指定文件中的xml内容，并且依次将文件生成出来。
     * @param filePath
     */
    private static void getXmlIID(final String filePath) {
//        final String targetDir = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-util\\src\\main\\resources\\data";
//        int fileStartIndex = 0; //开始下标
//        int fileEndIndex = 0;   //结束下标
//        String fileContent = FileUtil.getFileContent(filePath);
//        System.out.println(fileContent);
        final String spliter = "CmdsMessageListener - receive a message:";
        List<String> stringList = FileUtil.getFileContentEachLine(filePath, 0);
        for(String string : stringList) {

            if(string.contains(spliter)) {
                String imix = string.split(spliter)[1];
                System.out.println(imix);
            }
        }
    }

    /**
     * 得到想要的imix 消息
     * @param filePath
     */
    private static void trimImixData(final String filePath) {
        List<String> stringList = FileUtil.getFileContentEachLine(filePath, 0);

        for(String string : stringList) {
            if(string.contains("35=8")
                    || string.contains("35=6")) {
                System.out.println(string);
            }
        }
    }

    /**
     * 市场行情数据
     * @param filePath
     */
    private static void trimImixForMarketData(final String filePath) {
        List<String> stringList = FileUtil.getFileContentEachLine(filePath, 0);

        for(String string : stringList) {
            if(string.contains("35=W")) {
                System.out.println(string);
            }
        }
    }

    /**
     * 生成对应的 xml 信息
     * @param filePath
     */
    private static void genXml(final String filePath) {
        List<String> stringList = FileUtil.getFileContentEachLine(filePath, 0);

    }


    /**
     * 展示xml文件内容的标识
     * @param targetDir
     */
    private static void showXmlTags(final String targetDir) {

    }


    public static void main(String[] args) {
        final String dataPath = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-util\\src\\main\\resources\\data\\20170728\\imix.data";
        trimImixForMarketData(dataPath);
    }

}
