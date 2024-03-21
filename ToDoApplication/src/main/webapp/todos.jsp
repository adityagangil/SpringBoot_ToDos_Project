<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<meta charset="UTF-8">
<title>Todos</title>

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

.btn {
    display: inline-block;
    margin: 0 5px; /* Adjust as needed */
    padding: 10px 20px; /* Adjust as needed */
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    text-decoration: none;
}

.btn:hover {
    background-color: #0056b3;
}

.inline-block {
    display: inline-block;
    vertical-align: middle;
    
}
</style>

</head>
<body>

    <%@include file="common/nav.html"%>
    <center>
        <div class="inline-block">
            <h2 style="color: skyBlue; display: inline-block;">Welcome Aditya You Can See All ToDos Here.</h2>
            <a href="addtodo" class="btn">Add to do</a>
        </div>
    </center>

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
                <td><a href="edittodo?id=${todo.id}" class="btn">Edit</a> <a href="deletetodo?sno=${todo.id}" class="btn">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
