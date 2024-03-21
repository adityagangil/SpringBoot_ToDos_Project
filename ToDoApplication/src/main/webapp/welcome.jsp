<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<style>
    body {
        margin: 0;
        padding: 0;
        min-height: 100vh;
        position: relative;
    }

    .content {
        padding-bottom: 100px; /* Adjust as needed */
    }
    
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

<%@include file="common/nav.html" %>
<h2 style="text-align: center;">Welcome Aditya You Can Now Add Your ToDos Here.</h2>
<a href="addtodo" class="btn" style="display: block; margin: 100px auto; text-align: center; font-size: 30px;">Add to do</a><br/><br/><br/><br/><br/><br/>
<footer style="margin-top: 10px;"><br/><br/><br/><br/><br/><br/><br/>
<%@include file="common/footer.html" %>
</footer>
</body>
</html>