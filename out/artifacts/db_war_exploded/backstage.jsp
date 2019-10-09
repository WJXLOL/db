
<%@ page import="java.sql.*" %>
<%@ page import="model.DatabaseBean" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: WJX
  Date: 2019/9/18
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>B</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery.js"></script>
</head>
<style type="text/css">
    body {
        height: 100%;
        background: #fff url(images/backgroud.png) 50% 50% no-repeat;
        background-size: cover;
        background-attachment: fixed;
        width: 100%;
    }
    .main {
        position: absolute;
        top: 386px;left: 440px;
        width: 100%;
        height: 600px;
        margin: -300px 0 0 -215px;
        border: 1px solid #fff;
        border-radius: 0; overflow: hidden;
        box-shadow: 0 1px 25px 5px #808080;
        background-color: rgba(220,220,220,0.7);
    }
    .main2{
        position: absolute;
        top: 380px;left: 215px;
        width: 220px;
        height: 606px;
        margin: -300px 0 0 -215px;
        border: 1px solid #fff;
        border-top: none;
        border-radius: 0; overflow: hidden;
        box-shadow: 0 1px 25px 5px #808080;
        background-color: rgba(0,00,00,0.5);
    }
    th{
        text-align: center;
        vertical-align: middle;
    }
    tr{
        text-align: center;
        vertical-align: middle;
    }
    td{
        vertical-align: middle;
    }
    h1 {
        color: white;
    }
</style>
<body>

<div class="head">
    <h1>后台管理</h1>
</div>
<hr style="color: white" >

<div class="main2">
    <div class="container">
        <div class="row">
            <div class="span6">
                <ul class="nav nav-list">
                    <li class="active"><a href="frame3.jsp" target="mf">Home</a></li>
                    <li><a href="frame1.jsp" target="mf">用户列表</a></li>
                    <li><a href="frame2.jsp" target="mf">添加用户</a></li>
                    <li class="divider"></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="main">
    <iframe id="mf" name="mf" src="frame3.jsp" style="overflow:visible;"  width="100%" height="100%; float:left"></iframe>
</div>
</body>
</html>