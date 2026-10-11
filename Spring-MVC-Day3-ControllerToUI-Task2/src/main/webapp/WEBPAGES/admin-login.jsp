<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Admin Login</title>

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;

            font-family: Arial, sans-serif;

            background: linear-gradient(135deg, #232526, #414345);

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

            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.4);
        }

        h2 {
            text-align: center;

            color: #333;

            margin-top: 0;
            margin-bottom: 10px;
        }

        .subtitle {
            text-align: center;

            color: #777;

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
            border-color: #333;

            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        }

        .login-btn {
            width: 100%;

            padding: 12px;

            border: none;

            border-radius: 7px;

            background: #333;

            color: white;

            font-size: 16px;

            cursor: pointer;

            transition: 0.3s;
        }

        .login-btn:hover {
            background: #222;
        }

        .forgot {
            text-align: right;

            margin-top: -8px;

            margin-bottom: 20px;
        }

        .forgot a {
            color: #333;

            text-decoration: none;

            font-size: 14px;
        }

        .forgot a:hover {
            text-decoration: underline;
        }

        .employee {
            text-align: center;

            margin-top: 20px;

            color: #555;
        }

        .employee a {
            color: #667eea;

            text-decoration: none;

            font-weight: bold;
        }

        .employee a:hover {
            text-decoration: underline;
        }

    </style>

</head>


<body>

    <div class="login-box">

        <h2>Admin Login</h2>

        <div class="subtitle">
            Administrator Panel
        </div>


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


        <!-- ADMIN LOGIN FORM -->

        <form action="adminDashboard" method="post">


            <!-- USERNAME -->

            <label>Username</label>

            <input
                type="text"
                name="username"
                placeholder="Enter admin username"
                required
            >


            <!-- PASSWORD -->

            <label>Password</label>

            <input
                type="password"
                name="password"
                placeholder="Enter admin password"
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
                Admin Login
            </button>

        </form>


        <!-- EMPLOYEE LOGIN -->

        <div class="employee">

            Employee Login?

            <a href="emp-login">
                Login Here
            </a>

        </div>

    </div>

</body>

</html>