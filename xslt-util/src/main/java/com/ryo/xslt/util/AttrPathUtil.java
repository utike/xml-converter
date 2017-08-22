package com.ryo.xslt.util;

import com.ryo.xslt.util.model.AttrPathBean;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by bbhou on 2017/8/22.
 */
public class AttrPathUtil {

    /**
     * 获取数据信息(所有)
     * @param originalFilePath
     */
    private static List<AttrPathBean> getAttrPathBean(final String originalFilePath) {
        List<AttrPathBean> attrPathBeanList = new LinkedList<>();

        List<String> lines = FileUtil.getFileContentEachLine(originalFilePath);
        List<String> tempList = new LinkedList<>();
        for(int i = 0; i < lines.size(); i++) {
            tempList.add(lines.get(i));

            //1. 第二行
            if((i % 2) == 1) {
                AttrPathBean attrPathBean = new AttrPathBean(tempList.get(0), tempList.get(1));
                attrPathBeanList.add(attrPathBean);
                tempList = new LinkedList<>();
            }
        }

        return attrPathBeanList;
    }

    /**
     * 根据指定的内容获取过滤后的内容。
     * 1. 如果 originalFilePath 包含对应的属性，则将对应的文件路径放在返回列表中。
     * @param originalFilePath
     * @param containsAttr
     * @return
     */
    public static List<String> getFilterFiles(final String originalFilePath, String containsAttr) {
        List<String> stringList = new LinkedList<>();
        List<AttrPathBean> AttrPathBeanList = getAttrPathBean(originalFilePath);

        for (AttrPathBean AttrPathBean : AttrPathBeanList) {
            String attr = AttrPathBean.getAttr();
            String path = AttrPathBean.getPath();
            if(attr.contains(containsAttr)) {
                stringList.add(path);
            }
        }

        return stringList;
    }
}
