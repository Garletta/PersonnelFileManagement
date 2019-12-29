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
            <a class=" nav-item nav-link active" href="/toAddFile" style="color: gray;font-weight: bold">新增档案</a>
            <a class=" nav-item nav-link" style="color: gray;font-weight: bold">更新档案</a>
            <a class=" nav-item nav-link" style="color: gray;font-weight: bold">检索档案</a>
        </nav>
    </div>
    <div class="table-responsive">
        <h3 style="margin: 25px;font-weight: bold">添加新的人事档案:</h3>
        <form method="post" action="/addFile" style="font-weight: bold">
            <div class="form-row" style="margin: 20px;">
                <div class="col-2" style="text-align: center">职工编号</div>
                <div class="col-3"><input type="text" class="form-control" placeholder="例如:12580" value="${staff.staffId}" name="staffId"/></div>
                <div class="col-2" style="text-align: center">职工姓名</div>
                <div class="col-3"><input type="text" class="form-control" placeholder="例如:林锦雄" value="${staff.staffName}" name="staffName"/></div>
            </div>
            <div class="form-row" style="margin: 20px;">
                <div class="col-2" style="text-align: center">职工性别</div>
                <div class="col-3"><input type="text" class="form-control" placeholder="例如:男/女" value="${staff.staffSex}" name="staffSex"/></div>
                <div class="col-2" style="text-align: center">职工年龄</div>
                <div class="col-3"><input type="text" class="form-control" placeholder="例如:20" value="${staff.staffAge}" name="staffAge"/></div>
            </div>
            <div class="form-row" style="margin: 20px;">
                <div class="col-2" style="text-align: center">职工学历</div>
                <div class="col-3"><input type="text" class="form-control" placeholder="例如:某某大学本科" value="${staff.staffEducation}" name="staffEducation"/></div>
                <div class="col-2" style="text-align: center">职工职位</div>
                <div class="col-3"><input type="text" class="form-control" placeholder="例如:员工" value="${staff.staffPosition}" name="staffPosition"/></div>
            </div>
            <div class="form-row" style="margin: 20px;">
                <div class="col-2" style="text-align: center">职工职称</div>
                <div class="col-3"><input type="text" class="form-control" placeholder="例如:经理" value="${staff.staffTitle}" name="staffTitle"/></div>
                <div class="col-2" style="text-align: center">职工住址</div>
                <div class="col-3"><input type="text" class="form-control" placeholder="例如:常州大学武进校区" value="${staff.staffAddress}" name="staffAddress"/></div>
            </div>
            <div class="form-row" style="margin: 20px;">
                <div class="col-2" style="text-align: center">联系电话</div>
                <div class="col-3"><input type="text" class="form-control" placeholder="例如:13270937053" value="${staff.staffTel}" name="staffTel"/></div>
                <div class="col-2" style="text-align: center">工资级别</div>
                <div class="col-3"><input type="text" class="form-control" placeholder="例如:2-3W" value="${staff.staffSalaryLevel}" name="staffSalaryLevel"/></div>
            </div>
            <div class="form-row" style="margin: 20px;">
                <div class="col-2" style="text-align: center">所属部门</div>
                <div class="col-3"><input type="text" class="form-control" placeholder="例如:研发部" value="${staff.staffDepartment}" name="staffDepartment"/></div>
            </div>
            <div>
                <button class="btn btn-primary" type="button" onclick="window.location.href = 'javascript:history.go(-1);'">返回上一页</button>
                <button class="btn btn-primary" type="submit">添加</button>
            </div>
        </form>
    </div>
    <hr>
</div>
</body>
</html>
