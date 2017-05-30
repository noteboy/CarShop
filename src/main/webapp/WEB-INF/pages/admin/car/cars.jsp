<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>汽车管理</title>

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
<div class="container">
    <h1>汽车管理</h1>
    <hr/>

    <h3>所有汽车信息 <a href="/admin/cars/add" type="button" class="btn btn-primary btn-sm">添加</a></h3>

    <c:if test="${empty carList}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>Car表为空，请<a href="/admin/cars/add" type="button" class="btn btn-primary btn-sm">添加</a>
        </div>
    </c:if>

    <c:if test="${!empty carList}">
        <table class="table table-bordered table-striped">
            <tr>
                <th>ID</th>
                <th>名称</th>
                <th>价格</th>
                <th>类型</th>
                <th>品牌</th>
                <th>颜色</th>
                <th>样图</th>
            </tr>

            <c:forEach items="${carList}" var="car">
                <tr>
                    <td>${car.cId}</td>
                    <td>${car.cName}</td>
                    <td>${car.cPrice}</td>
                    <td>${car.cType}</td>
                    <td>${car.cBand}</td>
                    <td>${car.cColor}</td>
                    <td><a><img src="${car.imgurl}" alt=""/></a></td>
                    <td>
                        <a href="/admin/cars/show/${car.cId}" type="button" class="btn btn-sm btn-success">详情</a>
                        <a href="/admin/cars/update/${car.cId}" type="button" class="btn btn-sm btn-warning">修改</a>
                        <a href="/admin/cars/delete/${car.cId}" type="button" class="btn btn-sm btn-danger">删除</a>
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