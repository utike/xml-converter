package com.ryo.xslt.util.model;

/**
 * Created by bbhou on 2017/8/22.
 */
public class AttrPathBean {

    private String attr;

    private String path;

    public AttrPathBean(String attr, String path) {
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
}
