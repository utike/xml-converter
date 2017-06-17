package cn.com.haiyi.cstp.xstl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Created by bbhou on 2017/6/17.
 */
public class BaseTest {

    /**
     * 对话报价转SQL
     * @param sqlRoutePath
     * @param targetPath
     */
    protected void dialogQuote2Sql(String sqlRoutePath, String targetPath) {
        try {
            String xmlPath = targetPath+"dialogQuote.xml";
            String xslPath = sqlRoutePath;
            String xmlResult = XmlConverterUtil.transfer2CommonStr(xmlPath, xslPath);

            String resultPath = targetPath+"dialogQuote.sql";
            Path path = Paths.get(resultPath);
            Files.write(path, xmlResult.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 成交报价转SQL
     * @param sqlRoutePath sql 路由
     * @param targetPath 目标路径
     */
    protected void executionReport2Sql(String sqlRoutePath, String targetPath) {
        try {
            String xmlPath = targetPath+"executionReport.xml";
            String xslPath = sqlRoutePath;
            String xmlResult = XmlConverterUtil.transfer2CommonStr(xmlPath, xslPath);

            String resultPath = targetPath+"executionReport.sql";
            Path path = Paths.get(resultPath);
            Files.write(path, xmlResult.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
