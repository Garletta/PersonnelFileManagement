<%--
  Created by IntelliJ IDEA.
  User: jinxi
  Date: 2019/12/25
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>AddPersonnelFile</title>
</head>
<body>
    <h1 style="text-align: center">人事档案管理系统</h1>
    <h2 style="text-align: center">添加新人事档案</h2>
    <form method="post" action="/addFile">
        <table border="2" style="text-align: center">
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
                <th>操作</th>
            </tr>
            <tr>
                <td><input type="text" name="staffId"></td>
                <td><input type="text" name="staffName"></td>
                <td><input type="text" name="staffSex"></td>
                <td><input type="text" name="staffAge"></td>
                <td><input type="text" name="staffEducation"></td>
                <td><input type="text" name="staffPosition"></td>
                <td><input type="text" name="staffTitle"></td>
                <td><input type="text" name="staffAddress"></td>
                <td><input type="text" name="staffTel"></td>
                <td><input type="text" name="staffSalaryLevel"></td>
                <td><input type="text" name="staffDepartment"></td>
                <td><input type="submit" value="添加"></td>
            </tr>
        </table>
    </form><hr>
    <form method="get" action="/toHome">
        <input type="submit" value="返回主页">
    </form>
</body>
</html>
