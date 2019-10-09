package Servlet;

import model.DatabaseBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "DeleteServlet")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        Connection con = DatabaseBean.getConn();
        String n = request.getParameter("name");
        String ps = request.getParameter("pwd");
        //out.println(n);out.println(ps);
        String sql = "delete from account where name=? and userland = ? ";
        PreparedStatement statement = DatabaseBean.getPreparedStatement(sql,con);
        try {
            statement.setString(1, n);
            statement.setString(2,ps);
            int r = statement.executeUpdate();
            if (r == 1) {
                out.println(" 数据删除成功！");
            }
            else{ out.println(" 数据删除失败!");}
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
