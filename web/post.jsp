<%--
  Created by IntelliJ IDEA.
  User: WJX
  Date: 2019/9/10
  Time: 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<html >
<head>
  <script src="images/jquery.min.js"></script>
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
  <style>
    .error{
      color:red;
    }
  </style>

  <meta charset="UTF-8">
  <title>Login Form</title>

  <link rel="stylesheet" href="css/normalize.css">

  <style>
    * { margin: 0; padding: 0;}
    html { height: 100%; }
    body { height: 100%; background: #fff url(images/backgroud.png) 50% 50% no-repeat; background-size: cover;background-attachment: fixed}
    .dowebok { position: absolute; left: 50%; top: 45%; width: 430px; height: 580px; margin: -275px 0 0 -215px; border: 1px solid #fff; border-radius: 3px; overflow: hidden;box-shadow: 0px 1px 25px 5px #808080;}
    .logo { width: 104px; height: 104px; margin: 20px auto 25px; background: url(images/login2.png) 0 0 no-repeat; }
    .form-item { position: relative; width: 360px; margin: 0 auto; padding-bottom: 30px;}
    .form-item input { width: 348px; height: 48px; padding-left: 70px; border: 1px solid #fff; border-radius: 5px; font-size: 18px; color: #fff; background-color: transparent; outline: none;}
    .form-item button { width: 150px; height: 50px; border: 0; border-radius: 5px; font-size: 18px; color: #1f6f4a; outline: none; cursor: pointer; background-color: #fff; }
    #username { background: url(images/emil.png) 20px 14px no-repeat; }
    #username2 { background: url(images/emil2.png) 18px 10px no-repeat; }
    #password { background: url(images/password.png) 23px 11px no-repeat; }
    #password2 { background: url(images/password.png) 23px 11px no-repeat; }
    .tip { display: none; position: absolute; left: 20px; top: 52px; font-size: 14px; color: #f50; }
    .reg-bar { width: 360px; margin: 20px auto 0; font-size: 14px; overflow: hidden;}
    .reg-bar a { color: #fff; text-decoration: none; }
    .reg-bar a:hover { text-decoration: underline; }
    .reg-bar .reg { float: left; }
    .reg-bar .forget { float: right; }
    .dowebok ::-webkit-input-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
    .dowebok :-moz-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
    .dowebok ::-moz-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
    .dowebok :-ms-input-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
    #register {width: 40%;margin-top: 20px}
    #submit {text-align: center;width: 40%;margin-top: 20px;margin-left:63px;}

    @media screen and (max-width: 500px) {
      * { box-sizing: border-box; }
      .dowebok { position: static; width: auto; height: auto; margin: 0 30px; border: 0; border-radius: 0; }
      .logo { margin: 50px auto; }
      .form-item { width: auto; }
      .form-item input, .form-item button, .reg-bar { width: 100%; }
    }
  </style>
</head>
<body>

<div class="dowebok">
  <div class="logo"></div>
  <form id="userInfoForm" method="post" action="Servlet.RegisterServlet" onSubmit="return isValid(this);">
    <div class="form-item">
      <label for="username2"></label><input id="username2" type="text" autocomplete="off" placeholder="用 户 名" name="usn"/>
    </div>
    <div class="form-item">
      <label for="username"></label><input id="username" type="email" autocomplete="on" placeholder="邮 箱" required="required" name="em"/>
    </div>
    <div class="form-item">
      <label for="password"></label><input id="password" type="password" autocomplete="off" placeholder="密 码" required="required" name="psw1"/>
    </div>
    <div class="form-item">
      <label for="password2"></label><input id="password2" type="password" autocomplete="off" placeholder="再 次 输 入" required="required" name="psw2"/>
    </div>
    <div class="form-item">
        <button id="register" type="submit">注 册</button>
        <button id="submit" type="button" onclick="window.location.href='login.jsp'">登 录</button>
    </div>
  </form>
</div>
</body>
</html>