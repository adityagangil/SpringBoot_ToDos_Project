<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<meta charset="UTF-8">
<title>Todos</title>

<style>
    table {
        border-collapse: collapse;
        width: 80%;
        margin: 0 auto;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    a {
        text-decoration: none;
        color: #007bff;
    }

    a:hover {
        text-decoration: underline;
    }
</style>

</head>
<body>
<%@include file="common/header.html" %>
<%@include file="common/nav.html" %>
<center><h2>Welcome Admin You Can See All ToDos Here.</h2></center>

<table>
    <tr>
        <th>S.no</th>
        <th>Description</th>
        <th>Target Date</th>
        <th>Option</th>
    </tr>
    <c:forEach var="todo" items="${obj}">  
        <tr>
            <td>${todo.id }</td>
            <td>${todo.descr }</td>
            <td>${todo.tdate }</td>
            <td><a href="edittodo?id=${todo.id}">Edit</a>/<a href="deletetodo?sno=${todo.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><br/><br/><br/><br/><br/><br/><br/>
<%@include file="common/footer.html" %>
</body>
</html>
