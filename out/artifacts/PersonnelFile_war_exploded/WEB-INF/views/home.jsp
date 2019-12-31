<%--
  Created by IntelliJ IDEA.
  User: jinxi
  Date: 2019/12/29
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body background="images/background.png">
<div class="container">
    <div style="margin: 20px 0px 10px 0px">
        <img src="images/title.png" style="max-width: 100%"/>
    </div>
    <div style="background-color: khaki;border-radius: 4px;margin: 10px 0px 20px 0px">
        <nav class="nav nav-tabs">
            <a class=" nav-item nav-link active" href="toHome" style="color: gray;font-weight: bold">主页</a>
            <a class=" nav-item nav-link" href="toAddFile" style="color: gray;font-weight: bold">新增档案</a>
            <a class=" nav-item nav-link" style="color: gray;font-weight: bold">更新档案</a>
            <a class=" nav-item nav-link" href="toQueryFile" style="color: gray;font-weight: bold">查询档案</a>
        </nav>
    </div>
    <div>
        <img src="images/bike_girl.jpg" style="width: 100%;height: 65%">
    </div>
</div>
</body>
</html>
