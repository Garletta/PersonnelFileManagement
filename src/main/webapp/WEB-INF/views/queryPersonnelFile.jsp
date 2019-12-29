<%--
  Created by IntelliJ IDEA.
  User: jinxi
  Date: 2019/12/24
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>QueryPersonnelFile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body background="/images/background.png">
<div class="container">
    <div style="margin: 20px 0px 10px 0px">
        <img src="/images/title.png" style="max-width: 100%"/>
    </div>
    <div style="background-color: khaki;border-radius: 4px;margin: 10px 0px 20px 0px">
        <nav class="nav nav-tabs">
            <a class=" nav-item nav-link" href="/toHome" style="color: gray;font-weight: bold">主页</a>
            <a class=" nav-item nav-link" href="/toAddFile" style="color: gray;font-weight: bold">新增档案</a>
            <a class=" nav-item nav-link" style="color: gray;font-weight: bold">更新档案</a>
            <a class=" nav-item nav-link active" href="/toQueryFile" style="color: gray;font-weight: bold">查询档案</a>
        </nav>
    </div>
    <div>
        <button class="btn btn-info" type="button" onclick="window.location.href = '/queryAllFile'">检索所有员工档案</button>
    </div>
    <div class="table-responsive">
        <h3 style="margin: 25px;font-weight: bold">请输入检索条件:</h3>
        <form method="post" action="/queryFile">
            <div class="form-row" style="margin: 20px;">
                <div class="col-3"><input type="text" class="form-control" placeholder="职工编号" name="staffId"/></div>
                <div class="col-3"><input type="text" class="form-control" placeholder="职工姓名" name="staffName"/></div>
                <div class="col-3"><input type="text" class="form-control" placeholder="职工性别" name="staffSex"/></div>
                <div class="col-3"><input type="text" class="form-control" placeholder="职工年龄" name="staffAge"/></div>
            </div>
            <div class="form-row" style="margin: 20px;">
                <div class="col-3"><input type="text" class="form-control" placeholder="职工学历" name="staffEducation"/></div>
                <div class="col-3"><input type="text" class="form-control" placeholder="职工职位" name="staffPosition"/></div>
                <div class="col-3"><input type="text" class="form-control" placeholder="职工职位" name="staffTitle"/></div>
                <div class="col-3"><input type="text" class="form-control" placeholder="职工住址" name="staffAddress"/></div>
            </div>
            <div class="form-row" style="margin: 20px;">
                <div class="col-3"><input type="text" class="form-control" placeholder="职工电话" name="staffTel"/></div>
                <div class="col-3"><input type="text" class="form-control" placeholder="工资级别" name="staffSalaryLevel"/></div>
                <div class="col-3"><input type="text" class="form-control" placeholder="所在部门" name="staffDepartment"/></div>
            </div>
            <div>
                <button class="btn btn-primary" type="submit" style="display:block;margin:0 auto">检索</button>
            </div>
        </form>
    </div>
    <hr>
</div>
</body>
</html>
