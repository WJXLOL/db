<%--
  Created by IntelliJ IDEA.
  User: WJX
  Date: 2019/9/29
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style type="text/css">
    .box{
        height: 200px;
        width: 260px;
        padding: 30px;
        margin: 20px;
        float: left;
    }
</style>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    String n = request.getParameter("name");
    String ps = request.getParameter("pwd");
    String em = request.getParameter("email");
    request.getSession().setAttribute("nn",n);
%>

<div class="box">
    <form class="form-horizontal">
        <fieldset>
            <legend>当前账户</legend>
        <table>
            <tr>
                <td><h2>用户名:<%out.print(n);%></h2></td>
            </tr>
            <tr>
                <td><h2>密码：<%out.print(ps);%></h2></td>
            </tr>
            <tr>
                <td><h2>邮箱：<%out.print(em);%></h2></td>
            </tr>
        </table>
        </fieldset>
    </form>
</div>
<div class="box">
        <fieldset>
            <legend>修改为</legend>
            <form class="control-group" id="userInfoForm" method="post" action="Servlet.ModifyServlet" onSubmit="return isValid(this);">
                <div class="control-group">
                    <label class="control-label" for="username2" >用户名</label>
                    <div class="controls">
                        <input class="input-xlarge" id="username2" type="text" autocomplete="off" placeholder="用 户 名" name="usn" value=<%=n%> disabled>
                    </div><br>
                    <label class="control-label" for="password">密码</label>
                    <div class="controls">
                        <input class="input-xlarge" id="password" type="password" autocomplete="off" placeholder="密 码" required="required" name="psw1">
                    </div>
                    <div class="form-item">
                        <label for="password2"></label><input id="password2" type="password" autocomplete="off" placeholder="再 次 输 入" required="required" name="psw2"/>
                    </div><br>
                    <label class="control-label" for="username">邮箱</label>
                    <div class="controls">
                        <input class="input-xlarge" id="username" type="email" autocomplete="on" placeholder="邮 箱" required="required" name="em">
                    </div>
                </div>
                <br>
                <div class="form-item"><button id="submit" type="submit">保存</button></div>
            </form>
        </fieldset>
</div>
</body>
</html>
