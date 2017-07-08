package cn.com.haiyi.cstp.xstl.util;


import java.io.File;

/**
 * 获取所有的类路径
 * (1) https://my.oschina.net/willSoft/blog/28471
 * Created by houbinbin on 16/5/25.
 * @since 1.7
 */
public class PathUtil {


    /**
     * 结果不确定
     * @return
     */
    @Deprecated
    public static String getPath() {
        return System.getProperty("user.dir");
    }

    /**
     * 获取的target路径
     * @return
     */
    public static String getRootPath() {
        return Class.class.getClass().getResource("/").getPath();
    }


    /**
     * 获取项目根路径。
     * @return 本项目中返回: /Users/houbinbin/IT/code/script-generator
     */
    public static String getAppRootPath() {
        File emptyFile = new File("");
        return emptyFile.getAbsolutePath();
    }

    /**
     * 获取资源文件默认存放路径。
     * @return
     */
    public static String getAppResourcesPath() {
        return getAppRootPath()+ PathConstant.SRC_MAIN_RESOURCES_PATH;
    }

    public static String getAppTestResourcesPath() {
        return getAppRootPath()+"/src/test/resources";
    }

    /**
     * 类似getPath(Class), 只是不包含类的路径,而是获取到当前类包的根路径。
     * 如:
     * filelist:/Users/houbinbin/IT/code/script-generator/script-generator-tool/target/classes/
     * 转化为:
     * /Users/houbinbin/IT/code/script-generator/script-generator-tool/src/main/java
     * @param clazz
     * @return
     */
    public static String getRootPath(Class clazz) {
        String URIPath = clazz.getResource(PathConstant.ROOT_PATH).toString();
        String result = URIPath.replace(PathConstant.FILE_PATH_PREFIX, "")
                .replace(PathConstant.TARGET_CLASSES_PATH_SUFFIX, PathConstant.SRC_MAIN_JAVA_PATH);
        return result;
    }

    /**
     * 直接class.getResource("")拿到的是编译后的路径。
     * 如:
     * filelist:/Users/houbinbin/IT/code/script-generator/script-generator-tool/target/classes/com/ryo/script-generator/util/
     * 转化成:
     * /Users/houbinbin/IT/code/script-generator/script-generator-tool/src/main/java/com/ryo/script-generator/util/
     * @param clazz 类
     * @return 转换后的路径
     */
    public static String getPath(Class clazz) {
        String URIPath = clazz.getResource("").toString();
        String resultPath = URIPath.replace(PathConstant.FILE_PATH_PREFIX, "")
                .replace(PathConstant.TARGET_CLASSES_PATH_SUFFIX, PathConstant.SRC_MAIN_JAVA_PATH);
        return resultPath;
    }

    public static void main(String[] args) {
        System.out.println(getAppRootPath());
    }

}


