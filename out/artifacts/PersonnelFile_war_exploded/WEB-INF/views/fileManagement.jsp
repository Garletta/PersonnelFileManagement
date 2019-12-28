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
    <title>PersonnelFileManagement</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .tableinput {
            width: 100%;
        }
        .body{
            background-size: cover;
        }
    </style>
</head>
<body class="body" background="/images/background.png">
<div class="container">
    <div style="margin: 5px">
        <img src="/images/title.png" style="max-width: 100%"/>
    </div>
    <div style="background-color: tan; border-radius: 4px">
        <nav class="nav justify-content-end">
            <a class="nav-item nav-link active" href="/toHome" style="color:black;font-weight: bold">主页</a>
            <a class="nav-item nav-link" href="/toAddFile" style="color:black;font-weight: bold">新增档案</a>
        </nav>
    </div>
    <div style="margin: 5px">
        <br><button class="btn btn-primary" style="display:block;margin:0 auto" type="button" onclick="window.location.href = '/queryAllFile'">检索所有员工档案</button><br>
    </div>
    <div style="margin: 5px;border: solid 1px;box-shadow: 2px 2px 2px" class="table-responsive">
        <form method="post" action="/queryFile">
            <table class="table table-striped table-bordered table-hover text-nowrap">
                <thead class="thead-dark" style="text-align: center">
                    <tr>
                        <th>职工编号</th>
                        <th>职工姓名</th>
                        <th>职工性别</th>
                        <th>职工年龄</th>
                        <th>职工学历</th>
                        <th>职工职位</th>
                        <th>职工职称</th>
                        <th>职工住址</th>
                        <th>职工电话</th>
                        <th>工资级别</th>
                        <th>所属部门</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input class="tableinput" name="staffId"/></td>
                        <td><input class="tableinput" name="staffName"/></td>
                        <td><input class="tableinput" name="staffSex"/></td>
                        <td><input class="tableinput" name="staffAge"/></td>
                        <td><input class="tableinput" name="staffEducation"/></td>
                        <td><input class="tableinput" name="staffPosition"/></td>
                        <td><input class="tableinput" name="staffTitle"/></td>
                        <td><input class="tableinput" name="staffAddress"/></td>
                        <td><input class="tableinput" name="staffTel"/></td>
                        <td><input class="tableinput" name="staffSalaryLevel"/></td>
                        <td><input class="tableinput" name="staffDepartment"/></td>
                    </tr>
                </tbody>
            </table>
            <button class="btn btn-primary" type="submit" style="display:block;margin:0 auto">检索</button>
        </form>
    </div>
    <hr>
</div>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
