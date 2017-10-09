package com.ryo.xslt.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 数据库访问层工具类
 */
public class DaoUtil {

    protected static String dbClassName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

    static {
        try {
            Class.forName(dbClassName);
        } catch (Exception ee) {
            ee.printStackTrace();
        }
    }

    /**
     * 获取指定的数据库连接
     *
     * @param url 数据库连接
     * @param username 用户名
     * @param password 密码
     * @return
     */
    public static Connection getConnection(final String url, final String username, final String password) {
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(url,
                    username,
                    password);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }


    public static Connection getConnection() {
        Connection connnection = null;
        try {
            String db_url = "jdbc:sqlserver://192.168.3.74:1433;DatabaseName=cfets_cmds";
            String db_username = "sa";
            String db_password = "haiyi";
            connnection = DriverManager.getConnection(db_url,
                    db_username,
                    db_password);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connnection;
    }

    public static ResultSet query(String QueryStr) {
        ResultSet set = findForResultSet(QueryStr);
        return set;
    }

    /**
     * 执行SQL脚本
     *
     * @param sql
     * @throws SQLException
     */
    public static void execute(String sql) throws SQLException {
        Connection conn = getConnection();
        Statement statement = conn.createStatement();
        statement.execute(sql);
    }

    public static ResultSet findForResultSet(String sql) {
        Connection conn = null;
        conn = getConnection();
        ResultSet rs = null;
        try {
            Statement stmt = null;
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

}