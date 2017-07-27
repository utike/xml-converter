package com.ryo.xslt.util;

/**
 * Created by bbhou on 2017/7/27.
 */
public class CategoryFilesUtil {

    /**
     * 获取指定文件中的xml内容，并且依次将文件生成出来。
     * @param filePath
     */
    private static void getXmlIID(final String filePath) {
        final String targetDir = "E:\\CODE_GEN\\Fork\\xml-converter\\xslt-util\\src\\main\\resources\\data";
        int fileStartIndex = 0; //开始下标
        int fileEndIndex = 0;   //结束下标
        String fileContent = FileUtil.getFileContent(filePath);
        System.out.println(fileContent);
    }

    /**
     * 展示xml文件内容的标识
     * @param targetDir
     */
    private static void showXmlTags(final String targetDir) {

    }


    public static void main(String[] args) {
        final String dataPath = "E:\\CODE_GEN\\Fork\\xml-converter\\imix-cmds\\src\\test\\resources\\data\\original\\client.log";
        getXmlIID(dataPath);
    }
}
