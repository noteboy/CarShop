<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>SpringMVC Demo 首页</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<h1>这里是SpringMVC Demo首页</h1>

<h3>出现此页面，说明配置成功。</h3>

<!-- 如果用户列表非空 -->
<c:if test="${!empty userList}">
    <table class="table table-bordered table-striped">
        <tr>
            <th>ID</th>
            <th>姓名</th>
            <th>邮箱</th>
            <th>电话</th>
        </tr>

        <c:forEach items="${userList}" var="user">
            <tr>
                <td>${user.uId}</td>
                <td>${user.uName}</td>
                <td>${user.uEmail}</td>
                <td>${user.uTellphone}</td>
                <td>
                    <a href="/admin/users/show/${user.uId}" type="button" class="btn btn-sm btn-success">详情</a>
                    <a href="/admin/users/update/${user.uId}" type="button" class="btn btn-sm btn-warning">修改</a>
                    <a href="/admin/users/delete/${user.uId}" type="button" class="btn btn-sm btn-danger">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>