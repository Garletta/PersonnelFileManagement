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
</head>
<body>
    <h1 style="text-align: center">人事档案管理系统</h1>
    <table border="2">
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
        <c:forEach var="staff" items="${staffs}" varStatus="status">
            <tr>
                <form method="post" action="/updateFile">
                    <td>${status.index + 1}</td>
                    <td>${staff.staffId} <input type="hidden" value="${staff.staffId}" name="staffId"></td>
                    <td><input type="text" value="${staff.staffName}" name="staffName"></td>
                    <td><input type="text" value="${staff.staffSex}" name="staffSex"></td>
                    <td><input type="text" value="${staff.staffAge}" name="staffAge"></td>
                    <td><input type="text" value="${staff.staffEducation}" name="staffEducation"></td>
                    <td><input type="text" value="${staff.staffPosition}" name="staffPosition"></td>
                    <td><input type="text" value="${staff.staffTitle}" name="staffTitle"></td>
                    <td><input type="text" value="${staff.staffAddress}" name="staffAddress"></td>
                    <td><input type="text" value="${staff.staffTel}" name="staffTel"></td>
                    <td><input type="text" value="${staff.staffSalaryLevel}" name="staffSalaryLevel"></td>
                    <td><input type="text" value="${staff.staffDepartment}" name="staffDepartment"></td>
                    <td><input type="text" value="${staff.working}" name="working"></td>
                    <td><input type="submit" value="更新档案"></td>
                    <td><a href="/delete?id=${staff.staffId}">删除档案</a></td>
                </form>
            </tr>
        </c:forEach>
    </table><hr>
    <form method="get" action="/toHome">
        <input type="submit" value="返回主页">
    </form>
</body>
</html>
