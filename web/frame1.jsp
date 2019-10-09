<%@ page import="java.sql.*" %>
<%@ page import="model.DatabaseBean" %><%--
  Created by IntelliJ IDEA.
  User: WJX
  Date: 2019/9/25
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery.js"></script>
</head>
<style type="text/css">
 body{
     background-color: rgba(220,220,220,0.7);
 }

</style>
<body>
<%
    response.setContentType("text/html;charset=utf-8");
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("UTF-8");
    Connection con = DatabaseBean.getConn();//out.print(n);out.print(ps);
    try {
        String sql = "select * from account;";
        assert con != null;
        PreparedStatement statement = DatabaseBean.getPreparedStatement(sql,con);
        ResultSet r = statement.executeQuery(sql);
%>
    <table class="table table-hover">
        <caption></caption>
        <thead>
        <tr>
            <th>用户名</th>
            <th>密码</th>
            <th>邮箱</th>
            <th>操作</th>
        </tr>

        <%
            //遍历结果集
            while(r.next())
            {
        %>
        </thead>
        <tr>
            <script type="javascript">
                var f = <%=r.getString(1)%>;
            </script>
            <%
                //session.setAttribute("name",r.getString(1));
                //session.setAttribute("pwd",r.getString(2));
            %>
            <td><%=r.getString(1)%></td>
            <td><%=r.getString(2) %></td>
            <td><%=r.getString(3) %></td>
            <td>
                <a href="Servlet.DeleteServlet?name=<%=r.getString(1)%>&pwd=<%=r.getString(2)%>">删除</a>
                <a href="frame4.jsp?name=<%=r.getString(1)%>&pwd=<%=r.getString(2)%>&email=<%=r.getString(3)%>">修改</a>
            </td>
        </tr>
        <%
            }
        %>
        <%
            }
            catch(Exception i){
                i.printStackTrace();
            }
            finally {}
        %>
    </table>

</body>
</html>
