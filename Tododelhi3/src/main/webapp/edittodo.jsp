<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Todo</title>
<style>
/* Reset default margin and padding */
body, html {
  margin: 0;
  padding: 0;
}

/* Style the form container */
form {
  width: 300px;
  margin: 0 auto;
}

/* Style form inputs */
form input[type="text"],
form input[type="date"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 15px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

/* Style submit button */
form input[type="submit"] {
  width: 100%;
  padding: 10px;
  border: none;
  background-color: #007bff;
  color: #fff;
  border-radius: 5px;
  cursor: pointer;
}

/* Style header and footer */
header, footer {
  background-color: #333;
  color: #fff;
  text-align: center;
  padding: 20px 0;
}

/* Style navigation */
nav {
  background-color: #007bff;
  color: #fff;
  text-align: center;
  padding: 10px 0;
}

nav a {
  color: #fff;
  text-decoration: none;
  margin: 0 10px;
}

nav a:hover {
  text-decoration: underline;
}
</style>
</head>
<body>
<%@include file="common/header.html" %>
<%@include file="common/nav.html" %>
<br/>
<form method="get" action="updatetodo">
<input type="hidden" name="id" value="${obj.id}">
To do Description<input type="text" name="descr" value="${obj.descr}"><br/>
Target Date<input type="date" name="tdate" value="${obj.tdate}"><br/>
<input type="submit" value="submit">
</form>


<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


<%@include file="common/footer.html" %>

</body>
</html>
