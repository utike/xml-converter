package com.ryo.xml.convert.test.imix.cstp;

import com.ryo.xml.convert.test.imix.BaseImixTest;
import com.ryo.xml.converter.util.StringUtils;
import imix.imix10.ExecutionReport;
import org.junit.Test;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by bbhou on 2017/9/5.
 */
public class CSTPTest extends BaseImixTest {

    private static Map<String, String> PARTY_MAP = new HashMap<>();

    private static final String FORMAT = "@XStreamAlias(\"%s\")\n" +
            "private String %s;\n";

    @Test
    public void genExecutionReportTest() {
        Class clazz = ExecutionReport.class;

        Method[] methods = clazz.getDeclaredMethods();
        for(Method method : methods) {
            String methodName = method.getName();
            if(methodName.startsWith("get")
                    && methodName.length() > 3) {
                if(methodName.equalsIgnoreCase("getNoPartyIDs")) {
                    continue;
                }
                System.out.println(getFormat(methodName));
            }
        }
    }

    @Test
    public void genNoPartyIDsTest() {
        Class clazz = ExecutionReport.NoPartyIDs.class;
        Method[] methods = clazz.getDeclaredMethods();
        for(Method method : methods) {
            String methodName = method.getName();
            if(methodName.startsWith("get")
                    && methodName.length() > 3) {
                System.out.println(getFormat(methodName));
            }
        }
    }

    @Test
    public void genNoPartyIdsTest() {
        List<String> stringList = getStringList("E:\\CODE_GEN\\Fork\\xml-converter\\src\\test\\resources\\imix\\imix10\\NoPartyIDs.message");
//        stringList.forEach(s->{
//            System.out.println(buildNoPartyIdsColumn(s));
//        });
    }

    /**
     * 获取格式化后的内容
     * @param string
     * @return
     */
    String getFormat(final String string) {
        String actualMethod = string.substring(3);
        return String.format(FORMAT, actualMethod, actualMethod);
    }

    public static void main(String[] args) {
        String string = "getMethod";
        System.out.println(string.substring(3));
    }

    @Test
    public void genFieldsTest() throws IOException {
        List<String> stringList = Files.readAllLines(Paths.get("E:\\CODE_GEN\\Fork\\xml-converter\\src\\test\\resources\\imix\\cstp\\executionReport.txt"));
        for (String string : stringList) {
            string = string.trim();
            if(StringUtils.isEmpty(string.trim())) {
                continue;
            }
            String result = String.format(FORMAT, string, string);
            System.out.println(result);
        }
    }

    @Test
    public void genPartyTest() throws IOException {
        List<String> neetIds = Arrays.asList("TRADER_NAME", "FULL_LEGAL_CHINESE_NAME_OF_FIRM", "SHORT_LEGAL_CHINESE_NAME_OF_FIRM");
        for(String string : neetIds) {
            String transName = transNodeName(string);
            System.out.println(String.format(FORMAT, transName, transName));
        }

    }

    @Test
    public void getNeedIds() throws IOException {
        List<String> enums = Files.readAllLines(Paths.get("E:\\CODE_GEN\\Fork\\xml-converter\\src\\test\\resources\\imix\\cstp\\1_party.txt"));
        enums.forEach(s->{
            String result = s.substring(s.indexOf("/")+1).replace(">", "").trim();
            System.out.println(String.format(FORMAT, result, result));
        });
    }

}
