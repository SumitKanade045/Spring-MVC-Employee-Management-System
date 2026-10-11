<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Logout</title>

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

        .logout-box {
            width: 400px;

            background: white;

            padding: 40px;

            border-radius: 15px;

            text-align: center;

            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
        }

        .logout-box h2 {
            color: #333;

            margin-bottom: 15px;
        }

        .logout-box p {
            color: #666;

            margin-bottom: 30px;
        }

        .login-btn {
            display: inline-block;

            padding: 12px 25px;

            background: #667eea;

            color: white;

            text-decoration: none;

            border-radius: 7px;

            font-size: 16px;

            transition: 0.3s;
        }

        .login-btn:hover {
            background: #5568d9;
        }

    </style>

</head>


<body>

    <div class="logout-box">

        <h2>Successfully Logged Out</h2>

        <p>
            You have been successfully logged out.
        </p>

        <a href="emp-login" class="login-btn">
            Employee Login
        </a>

    </div>

</body>

</html>