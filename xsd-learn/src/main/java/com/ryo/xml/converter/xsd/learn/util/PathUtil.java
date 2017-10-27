package com.ryo.xml.converter.xsd.learn.util;

import java.io.File;

/**
 * Created by bbhou on 2017/7/3.
 */
public class PathUtil {

    /**
     * 获取项目根路径。
     * @return 本项目中返回: D:\CODE\webService
     */
    public static String getAppRootPath() {
        File emptyFile = new File("");
        return emptyFile.getAbsolutePath();
    }

    /**
     * 根据文件路程，获取对应的全路径
     * @param xsdFileName
     * @return
     */
    public static String getXsdPath(String xsdFileName) {
        return getAppRootPath()+"/xsd"+"/"+xsdFileName;
    }

    public static void main(String[] args) {
        System.out.println(getAppRootPath());
    }
}
