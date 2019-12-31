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
            <a class=" nav-item nav-link" href="toHome" style="color: gray;font-weight: bold">主页</a>
            <a class=" nav-item nav-link" href="toAddFile" style="color: gray;font-weight: bold">新增档案</a>
            <a class=" nav-item nav-link" style="color: gray;font-weight: bold">更新档案</a>
            <a class=" nav-item nav-link active" href="toQueryFile" style="color: gray;font-weight: bold">查询档案</a>
        </nav>
    </div>
    <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover text-nowrap">
            <h3 style="font-weight: bold;font-size: 200%">查询档案如下:</h3>
            <thead class="thead-dark" style="text-align: center">
                <tr>
                    <th>序号</th>
                    <th>编号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>年龄</th>
                    <th>学历</th>
                    <th>职位</th>
                    <th>职称</th>
                    <th>住址</th>
                    <th>联系电话</th>
                    <th>工资级别</th>
                    <th>所属部门</th>
                    <th>是否在职</th>
                    <th colspan="2">操作</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="staff" items="${staffs}" varStatus="status">
                <tr>
                    <form method="post" action="toUpdateFile">
                        <td lay-data="{width:40}">${status.index + 1}</td>
                        <td>${staff.staffId} <input type="hidden" value="${staff.staffId}" name="staffId"/></td>
                        <td>${staff.staffName} <input type="hidden" value="${staff.staffName}" name="staffName"/></td>
                        <td>${staff.staffSex} <input type="hidden" value="${staff.staffSex}" name="staffSex"/></td>
                        <td>${staff.staffAge} <input type="hidden" value="${staff.staffAge}" name="staffAge"/></td>
                        <td>${staff.staffEducation} <input type="hidden" value="${staff.staffEducation}" name="staffEducation"/></td>
                        <td>${staff.staffPosition} <input type="hidden" value="${staff.staffPosition}" name="staffPosition"/></td>
                        <td>${staff.staffTitle} <input type="hidden" value="${staff.staffTitle}" name="staffTitle"/></td>
                        <td>${staff.staffAddress} <input type="hidden" value="${staff.staffAddress}" name="staffAddress"/></td>
                        <td>${staff.staffTel} <input type="hidden" value="${staff.staffTel}" name="staffTel"/></td>
                        <td>${staff.staffSalaryLevel} <input type="hidden" value="${staff.staffSalaryLevel}" name="staffSalaryLevel"/></td>
                        <td>${staff.staffDepartment} <input type="hidden" value="${staff.staffDepartment}" name="staffDepartment"/></td>
                        <td>${staff.working} <input type="hidden" value="${staff.working}" name="working"/></td>
                        <td><button class="btn btn-sm btn-success" type="submit">编辑</button> </td>
                        <td><button class="btn btn-sm btn-success" type="button" onclick="window.location.href = 'deleteFile?id=${staff.staffId}'">删除</button></td>
                    </form>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
