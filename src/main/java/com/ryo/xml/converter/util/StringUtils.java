package com.ryo.xml.converter.util;

/**
 * Created by bbhou on 2017/6/13.
 */
public class StringUtils {

    public static final String EMPTY = "";

    public static boolean isEmpty(final String string) {
        if(null == string
                || string.trim().equals("")) {
            return true;
        }
        return false;
    }






}
