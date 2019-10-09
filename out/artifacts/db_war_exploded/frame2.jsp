<%--
  Created by IntelliJ IDEA.
  User: WJX
  Date: 2019/9/25
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="description" content="Bootstrap Version2.0 horizontal form browser status example from w3cschool.cc.">
    <script type="text/javascript">
        function isValid(form){
            if(form.psw2.value!==form.psw1.value){
                alert("两次输入的密码不同！");
                return false;
            }
            if(form.psw1.value===""){
                alert("密码不能为空！");
                return false;
            }
            if(form.psw2.value===""){
                alert("请再次输入密码！");
                return false;
            }
            return true;
        }
    </script>

</head>
<body>
    <fieldset>
        <legend>管理员</legend>
        <form class="control-group" id="userInfoForm" method="post" action="Servlet.RegisterServlet" onSubmit="return isValid(this);">
            <div class="control-group">
                <label class="control-label" for="username2" >用户名</label>
                <div class="controls">
                    <input class="input-xlarge" id="username2" type="text" autocomplete="off" placeholder="用 户 名" name="usn">
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
            <div class="form-item"><button id="submit" type="submit">保 存</button></div>
        </form>
    </fieldset>
</body>
</html>
