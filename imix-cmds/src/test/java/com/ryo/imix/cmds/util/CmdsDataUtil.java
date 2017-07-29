package com.ryo.imix.cmds.util;

import com.ryo.xslt.util.FileUtil;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by bbhou on 2017/7/29.
 */
public class CmdsDataUtil {

    private static class DataInfo{
        /**
         * 属性
         */
        private String attr;

        /**
         * 路径
         */
        private String path;

        public DataInfo() {
        }

        public DataInfo(String attr, String path) {
            this.attr = attr;
            this.path = path;
        }

        public String getAttr() {
            return attr;
        }

        public void setAttr(String attr) {
            this.attr = attr;
        }

        public String getPath() {
            return path;
        }

        public void setPath(String path) {
            this.path = path;
        }

        @Override
        public String toString() {
            return "DataInfo{" +
                    "attr='" + attr + '\'' +
                    ", path='" + path + '\'' +
                    '}';
        }
    }

    /**
     * 获取数据信息(所有)
     * @param originalFilePath
     */
    private static List<DataInfo> getDataInfo(final String originalFilePath) {
        List<DataInfo> dataInfoList = new LinkedList<>();

        List<String> lines = FileUtil.getFileContentEachLine(originalFilePath);
        List<String> tempList = new LinkedList<>();
        final String endTag = "=====";
        for (String line : lines) {
            if(endTag.equals(line)) {
                String attr = tempList.get(0);
                String path = tempList.get(1);
                DataInfo dataInfo = new DataInfo(attr, path);
                dataInfoList.add(dataInfo);
                tempList = new LinkedList<>();
            } else {
                tempList.add(line);
            }
        }

        return dataInfoList;
    }

    private static List<String> getFilterFiles(final String originalFilePath, String containsAttr) {
        List<String> stringList = new LinkedList<>();
        List<DataInfo> dataInfoList = getDataInfo(originalFilePath);

        for (DataInfo dataInfo : dataInfoList) {
            String attr = dataInfo.getAttr();
            String path = dataInfo.getPath();
            if(attr.contains(containsAttr)) {
                stringList.add(path);
            }
        }

        return stringList;
    }

    /**
     * 现券买卖-成交
     * @return
     */
    public static List<String> getCBOrderFiles(final String originalFilePath) {
        final String filter = "ExecutionReport(MsgType=8)-CASH_BOND";
        return getFilterFiles(originalFilePath, filter);
    }

    /**
     * 质押式-成交
     * @param originalFilePath
     * @return
     */
    public static List<String> getCROrderFiles(final String originalFilePath) {
        final String filter = "ExecutionReport(MsgType=8)-COLLATERAL_REPO";
        return getFilterFiles(originalFilePath, filter);
    }

    /**
     * 信用拆借-成交
     * @return
     */
    public static List<String> getIBOOrderFiles(final String originalFilePath) {
        final String filter = "ExecutionReport(MsgType=8)-INTER_BANK_OFFERING";
        return getFilterFiles(originalFilePath, filter);
    }

    /**
     * 买断式-成交
     * @param originalFilePath
     * @return
     */
    public static List<String> getOROrderFiles(final String originalFilePath) {
        final String filter = "ExecutionReport(MsgType=8)-COLLATERAL_REPO";
        return getFilterFiles(originalFilePath, filter);
    }

}
