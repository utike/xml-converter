package com.ryo.xslt.util;

import imix.field.MDSubType;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;

import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

/**
 * xml 文件过滤工具
 * Created by bbhou on 2017/8/21.
 */
public class XmlFilterUtil {

    /**
     * 生成映射关系图
     * TradeMethod:
     * 0 汇总行情
     * 1 询价成交
     * 2
     * 3 匿名
     * 4 请求报价
     * 5 点击报价行情
     * @see imix.field.TradeMethod
     * @param marketDataDir
     */
    public static void genMarketDataReadMeFile(final String marketDataDir, final String readmeFilePath) {
        Path path = Paths.get(marketDataDir);
        List<String> stringList = new LinkedList<>();
        try (DirectoryStream<Path> directoryStream = Files.newDirectoryStream(path, "*.*")) {
            SAXReader saxReader = new SAXReader();
            for (Path path1 : directoryStream) {
                Document document = saxReader.read(path1.toFile());
                Node marketIndicatorNode = document.selectSingleNode("message/body/groups[@name='NoMDTypes']/group/field[@name='MarketIndicator']/@enum");
                Node mDSubTypeNode = document.selectSingleNode("message/body/groups[@name='NoMDTypes']/group/field[@name='MDSubType']");
                Node tradeMethodNode = document.selectSingleNode("message/body/groups[@name='NoMDTypes']/group/field[@name='TradeMethod']");
                Node mDBookTypeNode = document.selectSingleNode("message/body/groups[@name='NoMDTypes']/group/groups[@name='MDInstrumentGrp']/group/field[@name='MDBookType']");

                String result = String.format("%s;%s;%s;%s", getStringValue(marketIndicatorNode),
                        getStringValue(mDSubTypeNode), getStringValue(tradeMethodNode), getStringValue(mDBookTypeNode));
//                System.out.println(result);
//                System.out.println(path1);

                stringList.add(result);
                stringList.add(path1.toString());
            }

            Path readmePath = Paths.get(readmeFilePath);
            Files.write(readmePath, stringList);
        } catch (IOException | DocumentException e) {
            e.printStackTrace();
        }

    }

    private static String getStringValue(Node node) {
        if (node != null) {
            return node.getStringValue();
        }
        return "";
    }

//    MsgType & MDType 可忽略都是一样的;
//    属性之间;分割
//    MarketIndicator
//    $TradeMethod
//    $MDBookType


    /**
     * 获取文件的列表
     *
     * @param dir
     * @return
     */
    public static List<Path> getFileList(final String dir) {
        List<Path> pathList = new LinkedList<>();
        Path path = Paths.get(dir);
        try (DirectoryStream<Path> directoryStream = Files.newDirectoryStream(path, "*.*")) {

            directoryStream.forEach(p -> System.out.println(p.getFileName()));

            for (Path path1 : directoryStream) {
                pathList.add(path1);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return pathList;
    }


    /**
     * 展现产品信息
     * @param path
     */
    private static void showPathInfo(Path path) throws DocumentException {
        SAXReader saxReader = new SAXReader();
        Document document = saxReader.read(path.toFile());
        Node marketIndicatorNode = document.selectSingleNode("message/body/groups[@name='NoMDTypes']/group/field[@name='MarketIndicator']/@enum");
        Node mDSubTypeNode = document.selectSingleNode("message/body/groups[@name='NoMDTypes']/group/field[@name='MDSubType']");
        Node tradeMethodNode = document.selectSingleNode("message/body/groups[@name='NoMDTypes']/group/field[@name='TradeMethod']");
        Node mDBookTypeNode = document.selectSingleNode("message/body/groups[@name='NoMDTypes']/group/groups[@name='MDInstrumentGrp']/group/field[@name='MDBookType']");

        String result = String.format("%s;%s;%s;%s", getStringValue(marketIndicatorNode),
                getStringValue(mDSubTypeNode), getStringValue(tradeMethodNode), getStringValue(mDBookTypeNode));
        System.out.println(result);
        System.out.println(path);
    }

    public static void main(String[] args) throws DocumentException, IOException {
        Path path = Paths.get("E:\\CODE_GEN\\Fork\\xml-converter\\xslt-util\\src\\main\\resources\\data\\20170829\\error.txt");
        List<String> stringList = Files.readAllLines(path);

        Set<String> stringSet = new HashSet<>(stringList);
        for(String string : stringSet) {
            Path filePath = Paths.get(string);
            showPathInfo(filePath);
        }
    }

}
