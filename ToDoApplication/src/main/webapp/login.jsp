<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
body {
	background-color: #f8f9fa;
	font-family: Arial, sans-serif;
}

.login-container {
	margin-top: 100px;
	max-width: 400px;
	border: 1px solid #ced4da;
	border-radius: 5px;
	background-color: #fff;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
	padding: 40px;
}

.login-container h2 {
	text-align: center;
	margin-bottom: 30px;
	color: #343a40;
}

.form-control {
	border-radius: 20px;
}

.btn-primary {
	border-radius: 20px;
	padding: 10px 20px;
	background-color: #007bff;
	border: none;
}

.btn-primary:hover {
	background-color: #0056b3;
}

.form-control:focus {
	box-shadow: none;
}
</style>
</head>
<body>
	<div class="container login-container">
		<h2>Login</h2>
		<form action="login" method="get">
			<div class="form-group">
				<label for="username">Username:</label> <input type="text"
					class="form-control" id="username" name="uname" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					class="form-control" id="password" name="pwd" required>
			</div>
			<button type="submit" class="btn btn-primary btn-block">Submit</button>
		</form>
	</div>
</body>
</html>
