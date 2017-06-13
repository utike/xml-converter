package com.ryo.xml.converter.util;

import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.LinkedList;
import java.util.List;

/**
 * @version 1.0
 * @since 1.7
 * @see Path 文件NIO
 * Created by pc-06 on 2017/4/20.
 */
public class FilePathUtil {


    /**
     * 获得对应的PATH列表。
     * @param dir
     * @param glob
     * @return
     */
    public static List<Path> getPathList(String dir, String glob)
    {
        List<Path> list = new LinkedList<>();
        Path root = Paths.get(dir);

        try(DirectoryStream<Path> stream = Files.newDirectoryStream(root, glob)){
            for (Path path : stream) {
                list.add(path);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * 获取指定文件夹下对应的某类型文件
     * @param dir 文件夹路径
     * @param glob 文件正则表达式
     * @return
     */
    public static List<Path> getDirFileNames(String dir, String glob) {
        List<Path> list = new LinkedList<>();
        Path root = Paths.get(dir);

        try(DirectoryStream<Path> stream = Files.newDirectoryStream(root, glob)){
            for (Path path : stream) {
                list.add(path.getFileName());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return list;
    }


    /** 获取某一路径下的所有文件
     * @see #getDirFileNames(String, String) 指定此处的glob为 *.*
     * @return
     */
    public static List<Path> getAllDirFileNames(String dir)
    {
        return getDirFileNames(dir, "*.*");
    }


    /**
     * 获得列表下对应的文件字符串形式
     * @param dir
     * @param glob
     * @return
     */
    public static List<String> getDirFileNameStrs(String dir, String glob)
    {
        List<String> list = new LinkedList<>();
        Path root = Paths.get(dir);

        try(DirectoryStream<Path> stream = Files.newDirectoryStream(root, glob)){
            for (Path path : stream) {
                list.add(path.getFileName().toString());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return list;
    }

}


