<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.app.model.Employee"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Edit Employee</title>

<style>

* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f4f6f9;
}

.container {
    width: 600px;
    margin: 40px auto;
    background: white;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.15);
}

h1 {
    text-align: center;
    margin-bottom: 25px;
    color: #333;
}

.form-group {
    margin-bottom: 15px;
}

label {
    display: block;
    margin-bottom: 6px;
    font-weight: bold;
    color: #444;
}

input {
    width: 100%;
    padding: 11px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 15px;
}

input:focus {
    border-color: #3498db;
    outline: none;
}

input[readonly] {
    background: #eee;
}

.buttons {
    display: flex;
    gap: 12px;
    margin-top: 25px;
}

.update-btn {
    flex: 1;
    padding: 12px;
    border: none;
    border-radius: 6px;
    background: #27ae60;
    color: white;
    font-size: 16px;
    cursor: pointer;
}

.update-btn:hover {
    background: #219150;
}

.cancel-btn {
    flex: 1;
    padding: 12px;
    border-radius: 6px;
    background: #777;
    color: white;
    text-decoration: none;
    text-align: center;
}

.cancel-btn:hover {
    background: #555;
}

</style>

</head>

<body>

<%
    Employee emp = (Employee) request.getAttribute("employee");
%>

<div class="container">

    <h1>Edit Employee</h1>

    <form action="updateEmployee" method="post">

        <div class="form-group">
            <label>Employee ID</label>

            <input type="number"
                   name="eid"
                   value="<%= emp.getEid() %>"
                   readonly>
        </div>


        <div class="form-group">
            <label>Employee Name</label>

            <input type="text"
                   name="ename"
                   value="<%= emp.getEname() %>"
                   required>
        </div>


        <div class="form-group">
            <label>Address</label>

            <input type="text"
                   name="eaddress"
                   value="<%= emp.getEaddress() %>"
                   required>
        </div>


        <div class="form-group">
            <label>Salary</label>

            <input type="number"
                   name="esalary"
                   value="<%= emp.getEsalary() %>"
                   step="0.01"
                   required>
        </div>


        <div class="form-group">
            <label>Mobile</label>

            <input type="number"
                   name="emobile"
                   value="<%= emp.getEmobile() %>"
                   required>
        </div>


        <div class="form-group">
            <label>Email</label>

            <input type="email"
                   name="email"
                   value="<%= emp.getEmail() %>"
                   required>
        </div>


        <div class="form-group">
            <label>Username</label>

            <input type="text"
                   name="username"
                   value="<%= emp.getUsername() %>"
                   required>
        </div>


        <div class="form-group">
            <label>Password</label>

            <input type="password"
                   name="password"
                   value="<%= emp.getPassword() %>"
                   required>
        </div>


        <div class="buttons">

            <button type="submit" class="update-btn">
                Update Employee
            </button>

            <a href="adminDashboard" class="cancel-btn">
                Cancel
            </a>

        </div>

    </form>

</div>

</body>
</html>