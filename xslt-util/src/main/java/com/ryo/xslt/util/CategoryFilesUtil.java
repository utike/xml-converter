package com.ryo.xslt.util;

import java.util.LinkedList;
import java.util.List;

/**
 * imix 消息工具方法
 * @see DaoUtil 数据入库
 * @see Imix2XmlTest imix=>xml
 * @see XmlFilterUtil 内容过滤
 * @see AttrPathUtil 属性-路径 分析工具类
 * Created by bbhou on 2017/7/27.
 */
public class CategoryFilesUtil {


    /**
     * 1.
     * 获取指定路径文件的所有 imix 消息;
     * @param filePath
     * @return
     */
    private static List<String> getImixContent(final String filePath) {
        List<String> resultList = new LinkedList<>();
        StringBuilder stringBuilder = new StringBuilder();

        final String spliter = "CmdsMessageListener - receive a message:";
        List<String> stringList = FileUtil.getFileContentEachLine(filePath, 0);
        for(String string : stringList) {
            if(string.contains(spliter)) {
                String imix = string.split(spliter)[1];
                //trimImixForMarketData
                if(imix.contains("35=W")) {
                    resultList.add(imix);
                }
            }
        }

        return resultList;
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
     * todo: 一键生成。制定好所有的路径。
     * @param args
     */
    public static void main(String[] args) {
        final String originalLogFilePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\data\\original\\client.log";
        final String xmlTargetDir = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\marketData0724To0822\\";
        final String readmeFilePath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\marketData0724To0822.md";
        List<String> marketDataImixList = getImixContent(originalLogFilePath);
        Imix2XmlTest.genXml(marketDataImixList, xmlTargetDir);
        XmlFilterUtil.genMarketDataReadMeFile(xmlTargetDir, readmeFilePath);
    }

}
