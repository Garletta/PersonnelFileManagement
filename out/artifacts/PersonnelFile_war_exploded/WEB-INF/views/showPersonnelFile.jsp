<%--
  Created by IntelliJ IDEA.
  User: jinxi
  Date: 2019/12/24
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>ShowPersonnelFile</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .tableinput {
            width: 100%;
        }
    </style>
</head>
<body class="body" background="/images/background.png">
<div class="container-fluid">
    <div style="margin: 5px">
        <img src="/images/title.png" style="max-width: 100%"/>
    </div>
    <div style="background-color: tan; border-radius: 4px">
        <nav class="nav justify-content-end">
            <a class="nav-item nav-link active" href="/toHome" style="color:black;font-weight: bold">主页</a>
            <a class="nav-item nav-link" href="/toAddFile" style="color:black;font-weight: bold">新增档案</a>
        </nav>
    </div>
    <div style="margin: 5px;border: solid 1px;box-shadow: 2px 2px 2px" class="table-responsive">
        <table class="table table-striped table-bordered table-hover text-nowrap">
            <table-caption style="font-weight: bold;font-family: 'Microsoft YaHei UI';margin: 20px;font-size: 200%">查询档案如下:</table-caption>
            <thead class="thead-dark" style="text-align: center">
                <tr>
                    <th>序号</th>
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
                    <th>是否在职</th>
                    <th colspan="2">操作</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="staff" items="${staffs}" varStatus="status">
                <tr>
                    <form method="post" action="/updateFile">
                        <td lay-data="{width:40}">${status.index + 1}</td>
                        <td>${staff.staffId} <input type="hidden" value="${staff.staffId}" name="staffId"></td>
                        <td><input class="tableinput" value="${staff.staffName}" name="staffName"></td>
                        <td><input class="tableinput" value="${staff.staffSex}" name="staffSex"></td>
                        <td><input class="tableinput" value="${staff.staffAge}" name="staffAge"></td>
                        <td><input class="tableinput" value="${staff.staffEducation}" name="staffEducation"></td>
                        <td><input class="tableinput" value="${staff.staffPosition}" name="staffPosition"></td>
                        <td><input class="tableinput" value="${staff.staffTitle}" name="staffTitle"></td>
                        <td><input class="tableinput" value="${staff.staffAddress}" name="staffAddress"></td>
                        <td><input class="tableinput" value="${staff.staffTel}" name="staffTel"></td>
                        <td><input class="tableinput" value="${staff.staffSalaryLevel}" name="staffSalaryLevel"></td>
                        <td><input class="tableinput" value="${staff.staffDepartment}" name="staffDepartment"></td>
                        <td><input class="tableinput" value="${staff.working}" name="working"></td>
                        <td><button class="btn btn-primary" type="submit">更新档案</button> </td>
                        <td><button class="btn btn-primary" type="button" onclick="window.location.href = '/deleteFile?id=${staff.staffId}'">删除档案</button></td>
                    </form>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
