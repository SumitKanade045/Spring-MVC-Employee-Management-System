<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Employee Login</title>

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);

            display: flex;
            justify-content: center;
            align-items: center;

            min-height: 100vh;
        }

        .login-box {
            width: 400px;
            background: white;
            padding: 35px;
            border-radius: 15px;

            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-top: 0;
            margin-bottom: 25px;
        }

        /* ERROR MESSAGE */

        .error-message {
            background-color: #ffe6e6;
            color: #d00000;

            border: 1px solid #d00000;

            padding: 12px;
            margin-bottom: 20px;

            border-radius: 7px;

            text-align: center;

            font-size: 14px;
            font-weight: bold;
        }

        label {
            display: block;

            margin-bottom: 7px;

            color: #444;

            font-weight: bold;
        }

        input {
            width: 100%;

            padding: 12px;

            border: 1px solid #ccc;

            border-radius: 7px;

            font-size: 15px;

            margin-bottom: 18px;

            outline: none;
        }

        input:focus {
            border-color: #667eea;

            box-shadow: 0 0 5px rgba(102, 126, 234, 0.3);
        }

        .forgot {
            text-align: right;

            margin-top: -8px;

            margin-bottom: 20px;
        }

        .forgot a {
            color: #667eea;

            text-decoration: none;

            font-size: 14px;
        }

        .forgot a:hover {
            text-decoration: underline;
        }

        .login-btn {
            width: 100%;

            padding: 12px;

            border: none;

            border-radius: 7px;

            background: #667eea;

            color: white;

            font-size: 16px;

            cursor: pointer;

            transition: 0.3s;
        }

        .login-btn:hover {
            background: #5568d9;
        }

        .or {
            text-align: center;

            margin: 18px 0;

            color: #777;

            font-size: 14px;
        }

        .admin-btn {
            display: block;

            width: 100%;

            padding: 12px;

            border-radius: 7px;

            background: #333;

            color: white;

            text-align: center;

            text-decoration: none;

            font-size: 16px;

            transition: 0.3s;
        }

        .admin-btn:hover {
            background: #222;
        }

        .register {
            text-align: center;

            margin-top: 20px;

            color: #555;
        }

        .register a {
            color: #667eea;

            text-decoration: none;

            font-weight: bold;
        }

        .register a:hover {
            text-decoration: underline;
        }

    </style>

</head>


<body>

    <div class="login-box">

        <h2>Employee Login</h2>


        <!-- ERROR MESSAGE -->

        <%
            String error = (String) request.getAttribute("error");

            if (error != null) {
        %>

            <div class="error-message">
                <%= error %>
            </div>

        <%
            }
        %>


        <!-- LOGIN FORM -->

        <form action="employeeDashboard" method="post">


            <!-- USERNAME -->

            <label>Username</label>

            <input
                type="text"
                name="username"
                placeholder="Enter username"
                required
            >


            <!-- PASSWORD -->

            <label>Password</label>

            <input
                type="password"
                name="password"
                placeholder="Enter password"
                required
            >


            <!-- FORGOT PASSWORD -->

            <div class="forgot">

                <a href="forgot-password">
                    Forgot Password?
                </a>

            </div>


            <!-- LOGIN BUTTON -->

            <button type="submit" class="login-btn">
                Employee Login
            </button>

        </form>


        <!-- OR -->

        <div class="or">
            OR
        </div>


        <!-- ADMIN LOGIN -->

        <a href="admin-login" class="admin-btn">
            Admin Login
        </a>


        <!-- REGISTER -->

        <div class="register">

            Don't have an account?

            <a href="register">
                Register
            </a>

        </div>

    </div>

</body>

</html>