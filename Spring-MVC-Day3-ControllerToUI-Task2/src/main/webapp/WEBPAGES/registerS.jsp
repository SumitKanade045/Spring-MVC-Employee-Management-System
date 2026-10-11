<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Registration Successful</title>

<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background: linear-gradient(135deg, #667eea, #764ba2);
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.container {
	width: 650px;
	background: white;
	padding: 35px;
	border-radius: 18px;
	box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
}

.success-icon {
	width: 70px;
	height: 70px;
	background: #28a745;
	color: white;
	border-radius: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 40px;
	margin: 0 auto 15px;
}

h1 {
	text-align: center;
	color: #28a745;
	margin: 5px 0;
}

.message {
	text-align: center;
	color: #666;
	margin-bottom: 30px;
}

.details {
	border: 1px solid #ddd;
	border-radius: 10px;
	overflow: hidden;
}

.row {
	display: flex;
	border-bottom: 1px solid #ddd;
}

.row:last-child {
	border-bottom: none;
}

.label {
	width: 40%;
	padding: 14px;
	background: #f5f5f5;
	font-weight: bold;
	color: #444;
}

.value {
	width: 60%;
	padding: 14px;
	color: #333;
}

.buttons {
	display: flex;
	justify-content: center;
	gap: 15px;
	margin-top: 30px;
}

.btn {
	padding: 12px 25px;
	border-radius: 7px;
	text-decoration: none;
	font-size: 15px;
	font-weight: bold;
}

.login-btn {
	background: #667eea;
	color: white;
}

.login-btn:hover {
	background: #5568d9;
}

.home-btn {
	background: #333;
	color: white;
}

.home-btn:hover {
	background: #222;
}
</style>

</head>

<body>

	<div class="container">

		<div class="success-icon">✓</div>

		<h1>Registration Successful!</h1>

		<p class="message">Employee has been registered successfully.</p>


		<div class="details">

			<div class="row">
				<div class="label">Employee ID</div>
				<div class="value">${employee.eid}</div>
			</div>

			<div class="row">
				<div class="label">Employee Name</div>
				<div class="value">${employee.ename}</div>
			</div>

			<div class="row">
				<div class="label">Address</div>
				<div class="value">${employee.eaddress}</div>
			</div>

			<div class="row">
				<div class="label">Salary</div>
				<div class="value">₹ ${employee.esalary}</div>
			</div>

			<div class="row">
				<div class="label">Mobile Number</div>
				<div class="value">${employee.emobile}</div>
			</div>

			<div class="row">
				<div class="label">Email</div>
				<div class="value">${employee.email}</div>
			</div>

			<div class="row">
				<div class="label">Username</div>
				<div class="value">${employee.username}</div>
			</div>

			<div class="row">
				<div class="label">Password</div>
				<div class="value">********</div>
			</div>

			<div class="row">
				<div class="label"><a href="emp-login">Back To Login</a></div>
				
			</div>

		</div>

	</div>

</body>
</html>