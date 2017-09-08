package com.ryo.xml.convert.test.imix;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

/**
 * Created by bbhou on 2017/9/5.
 */
public class BaseImixTest {

    /**
     * 获取对应每一行的内容
     * @param filePath
     * @return
     */
    protected List<String> getStringList(final String filePath) {
        try {
            List<String> stringList = Files.readAllLines(Paths.get(filePath));
            return stringList;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 转为驼峰语法
     * HELLO_WORLD=> HelloWorld
     * @author:Dragon-Y
     * @version:2017年8月9日
     * @description:处理enum
     */
    protected String transNodeName(String name) {

        if (name != null) {
            String[] names = name.replaceAll(" ", "").split("\\_");
            String transName = "";
            for (String str : names) {
                String trans = str.toLowerCase();
                char[] cs = trans.toCharArray();
                cs[0] -= 32;
                transName += String.valueOf(cs);
            }
            return transName;
        }
        return "";
    }

}
