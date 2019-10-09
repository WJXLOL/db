package model;

import java.io.PrintWriter;
import java.sql.*;

public class DatabaseBean {
    public static Connection getConn() {
        Connection con = null;
        String url = "jdbc:mysql://localhost:3306/acdb?serverTimezone=GMT%2B8";
        String un = "root";
        String pd = "980120";
        try {
            String str = "NYC";
            //反射加载jdbc的Driver类
            Class.forName("com.mysql.cj.jdbc.Driver");
            //通过DriverManager获取Connection对象
            con = DriverManager.getConnection(url, un, pd);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

    public static ResultSet getResultSet(Statement stmt, String sql) {
        ResultSet rs = null;
        try {
            if(stmt != null) {
                rs = stmt.executeQuery(sql);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    public  static PreparedStatement getPreparedStatement(String sql , Connection conn){
        PreparedStatement statement = null;
        try {
            if(conn != null) {
                statement = conn.prepareStatement(sql);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  statement;
    }

    public static Statement getStatement(Connection conn) {
        Statement  statement = null;
        try {
            if(conn != null) {
                statement = conn.createStatement();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  statement;
    }

    public static void close() {
        ResultSet rs = null;
        Connection conn = null;
        PreparedStatement ps = null;

        try {
                rs.close();
//					System.out.println("rs closed");
                if (ps != null) {
                    ps.close();
                    ps = null;
//						System.out.println("ps closed");
                    if (conn != null) {
                        conn.close();
                        conn = null;
//							System.out.println("conn closed");
                    }
                }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
