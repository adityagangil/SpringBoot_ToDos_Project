<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<style>
    .btn {
        display: block;
        margin: 100px auto;
        text-align: center;
        font-size: 30px;
        width: 200px;
        padding: 10px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        text-decoration: none;
    }

    .btn:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<%@include file="common/header.html" %>
<%@include file="common/nav.html" %>
<h2 style="text-align: center;">Welcome Admin You Can See All ToDos Here.</h2>
<a href="addtodo" class="btn" style="display: block; margin: 100px auto; text-align: center; font-size: 30px;">Add to do</a><br/><br/><br/><br/><br/><br/><br/>
<%@include file="common/footer.html" %>
</body>
</html>