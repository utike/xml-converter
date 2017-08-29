package com.ryo.imix.cmds;

import org.junit.Test;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by bbhou on 2017/8/29.
 */
public class ErrorAnalyseTest {

    @Test
    public void getErrorFileList() throws IOException {
        Path path = Paths.get("C:\\Users\\bbhou\\logs\\log4j2\\xml-converter\\error.log");
        List<String> stringList = Files.readAllLines(path);

        List<String> filePathList = new LinkedList<>();
        stringList.forEach(s -> {
            if(s.contains("error path is: ")) {
                filePathList.add(s.split("error path is: ")[1]);
            }
        });

        new HashSet<>(filePathList).forEach(System.out::println);
    }

    @Test
    public void showInfo() throws IOException {
//        Set<String> stringSet = getErrorFileList();

    }

}
