package D;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "Servlet1")
public class Servlet1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("UTF-8");
        String url = "jdbc:mysql://localhost:3306/acdb?serverTimezone=GMT%2B8";
        String un = "root";
        String pd = "980120";
        String n = request.getParameter("usn");
        String ps = request.getParameter("psw1");
        PrintWriter out = response.getWriter();       //out.print(n);out.print(ps);
        try {
            String str = "NYC";
            //反射加载jdbc的Driver类
            Class.forName("com.mysql.cj.jdbc.Driver");
            //通过DriverManager获取Connection对象
            Connection con = DriverManager.getConnection(url, un, pd);
            if (con != null) {
                out.println("连接成功");
            }
            String sql;
            sql = "select name from account where name='"+n+"'" ;
            assert con != null;
            PreparedStatement statement = con.prepareStatement(sql);
            ResultSet r = statement.executeQuery(sql);
            if(r.next()){
                r=statement.executeQuery("select name,userland from account where name='" + n + "' and userland = '" + ps + "' ");
                if(r.next()){
                    out.print(n+"登录成功");
                }else{
                    out.print("密码输入错误！！！");
                }
                if(n.equals("1")){
                    out.print("<script>alert('管理员登录成功!');window.location.href='manage.jsp'</script>");

                }
            }else {
                out.print("<font color=red>" + n + "</font>用户不存在！！！<br>" + "请点击<a href=\"post.jsp\">注册</a>");
            }
        } catch(Exception i){
            i.printStackTrace();
        }
    }

    private String getUrl() {
        return "jdbc:mysql://localhost:3306/acdb?serverTimezone=GMT%2B8";
    }
}

