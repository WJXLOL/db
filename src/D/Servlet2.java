package D;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "Servlet2")
public class Servlet2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("UTF-8");
        String url = "jdbc:mysql://localhost:3306/acdb?serverTimezone=GMT%2B8";
        String username = "root";
        String password = "980120";
        PrintWriter out = response.getWriter();
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
        try {
            String str = "NYC";
            //反射加载jdbc的Driver类
            Class.forName("com.mysql.cj.jdbc.Driver");
            //通过DriverManager获取Connection对象
            Connection con = DriverManager.getConnection(url, username, password);
            if (con!=null){
                out.println("连接成功");
            }
            String sql;
            sql = "insert into account(name,userland,email)values(?,?,?)";
            //准备sql语句
            assert con != null;
            PreparedStatement statement = con.prepareStatement(sql);
            if (statement!=null){
                out.println("\n获取成功");
            }
            //获取结果集
            request.setCharacterEncoding("UTF-8");
            int userland = Integer.parseInt(request.getParameter("psw1"));
            String name = request.getParameter("usn");
            String email = request.getParameter("em");
            assert statement != null;
            statement.setInt(2, userland);
            statement.setString(1, name);
            statement.setString(3, email);
            int n = statement.executeUpdate();
            if (n == 1) {
                out.println(" 数据插入操作成功！");
            }
            else{ out.println(" 数据插入操作失败!");}
            statement.close();
            con.close();
            statement.close();
            con.close();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
