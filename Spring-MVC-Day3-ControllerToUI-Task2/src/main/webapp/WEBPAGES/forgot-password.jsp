<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);

            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .forgot-box {
            width: 380px;
            background: white;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 10px;
        }

        .message {
            text-align: center;
            color: #777;
            font-size: 14px;
            margin-bottom: 25px;
            line-height: 1.5;
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
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 7px;
            font-size: 15px;
            margin-bottom: 20px;
        }

        input:focus {
            border-color: #667eea;
            outline: none;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 7px;
            background: #667eea;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .submit-btn:hover {
            background: #5568d9;
        }

        .back {
            text-align: center;
            margin-top: 20px;
        }

        .back a {
            color: #667eea;
            text-decoration: none;
            font-weight: bold;
        }

        .back a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

<div class="forgot-box">

    <h2>Forgot Password?</h2>

    <div class="message">
        Enter your registered email address
        to reset your password.
    </div>

    <form action="forgot-password" method="post">

        <label>Email Address</label>

        <input type="email"
               name="email"
               placeholder="Enter your email"
               required>

        <button type="submit" class="submit-btn">
            Reset Password
        </button>

    </form>

    <div class="back">
        <a href="admin-login">← Back to Admin Login</a>
    </div>

</div>

</body>
</html>