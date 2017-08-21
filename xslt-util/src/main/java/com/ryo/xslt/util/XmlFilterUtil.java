package com.ryo.xslt.util;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;

import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.LinkedList;
import java.util.List;

/**
 * xml 文件过滤工具
 * Created by bbhou on 2017/8/21.
 */
public class XmlFilterUtil {

    /**
     * 生成映射关系图
     *
     * @param marketDataDir
     */
    public static void genMarketDataReadMeFile(final String marketDataDir) {
        Path path = Paths.get(marketDataDir);
//        path.
        try (DirectoryStream<Path> directoryStream = Files.newDirectoryStream(path, "*.*")) {

//            directoryStream.forEach(p -> System.out.println(p.getFileName()));

            SAXReader saxReader = new SAXReader();
            for (Path path1 : directoryStream) {
                Document document = saxReader.read(path1.toFile());
                System.out.println(path1);
                Node marketIndicatorNode = document.selectSingleNode("message/body/field[@name='MarketIndicator']");
                System.out.println(marketIndicatorNode.getStringValue());
            }


        } catch (IOException e) {
            e.printStackTrace();
        } catch (DocumentException e) {
            e.printStackTrace();
        }
    }

//    MsgType & MDType 可忽略都是一样的;
//    属性之间;分割
//    MarketIndicator
//    $TradeMethod
//    $MDBookType


    /**
     * 获取文件的列表
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

    public static void main(String[] args) throws DocumentException {
        final String path = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\original\\marketData20170727\\1.xml";
        SAXReader saxReader = new SAXReader();
        Document document = saxReader.read(path);

        Node marketIndicatorNode = document.selectSingleNode("message/body/groups[@name='NoMDTypes']/group/field[@name='MarketIndicator']/@enum");
        System.out.println(marketIndicatorNode.getStringValue());
    }

}
