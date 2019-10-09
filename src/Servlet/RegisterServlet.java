package Servlet;

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
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        Connection con = DatabaseBean.getConn();
        String sql;
        String userland = request.getParameter("psw1");
        String name = request.getParameter("usn");
        String email = request.getParameter("em");
        sql = "insert into account(name,userland,email)values(?,?,?)";
        PreparedStatement statement = DatabaseBean.getPreparedStatement(sql,con);

        try {
            statement.setString(2, userland);
            statement.setString(1, name);
            statement.setString(3, email);
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
