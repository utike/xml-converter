package com.ryo.xml.convert.test.util;

import com.ryo.xml.converter.util.PathUtil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Test;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Created by bbhou on 2017/6/15.
 */
public class PathUtilTest {

    private static final Logger LOGGER = LogManager.getLogger(PathUtilTest.class);

//    @Test
//    public void

    @Test
    public void getAbsolutePathTest() {
        String path = PathUtil.getAppResourcesPath();
        System.out.println(path);
        Path dirPath = Paths.get(path);
        System.out.println(Files.exists(dirPath));
    }


}
