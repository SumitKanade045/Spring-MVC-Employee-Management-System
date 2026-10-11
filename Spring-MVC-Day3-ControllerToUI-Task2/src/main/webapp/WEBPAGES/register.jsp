<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Registration</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
        }

        .container {
            width: 450px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-top: 12px;
            margin-bottom: 5px;
            color: #444;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 11px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 7px;
            font-size: 15px;
        }

        input:focus {
            border-color: #667eea;
            outline: none;
        }

        .btn {
            width: 100%;
            padding: 12px;
            margin-top: 25px;
            border: none;
            border-radius: 7px;
            background: #667eea;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background: #5568d9;
        }

        .login {
            text-align: center;
            margin-top: 20px;
        }

        .login a {
            color: #667eea;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Employee Registration</h2>

    <form action="registerS" method="post">

        <label>Employee ID</label>
        <input type="number" name="eid" required>

        <label>Employee Name</label>
        <input type="text" name="ename" required>

        <label>Address</label>
        <input type="text" name="eaddress" required>

        <label>Salary</label>
        <input type="number" name="esalary" step="0.01" required>

        <label>Mobile Number</label>
        <input type="tel" name="emobile" required>

        <label>Email</label>
        <input type="email" name="email" required>

        <label>Username</label>
        <input type="text" name="username" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <button type="submit" class="btn">Register</button>

    </form>

    <div class="login">
        Already registered?
        <a href="emp-login">Login</a>
    </div>

</div>

</body>
</html>