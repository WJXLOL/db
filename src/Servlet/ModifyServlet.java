package Servlet;

import com.mysql.cj.Session;
import model.DatabaseBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "RegisterServlet")
public class ModifyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        Connection con = DatabaseBean.getConn();
        String u = request.getParameter("psw1");
        String na = (String) request.getSession().getAttribute("nn");
        String ema = request.getParameter("em");
        String sql;
        sql = "update account set email =?, userland =? where name =?";
        //out.println(u);out.println(na);out.println(ema);
        PreparedStatement statement = DatabaseBean.getPreparedStatement(sql,con);
        try {
            statement.setString(2, u);
            statement.setString(3, na);
            statement.setString(1, ema);
            int n = statement.executeUpdate();
            if (n == 1) {
                out.println(" 账户保存成功！");
            }
            else{ out.println(" 失败!");}
            statement.close();
            if(con!=null){
                con.close();
            }
            statement.close();
            DatabaseBean.close();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
