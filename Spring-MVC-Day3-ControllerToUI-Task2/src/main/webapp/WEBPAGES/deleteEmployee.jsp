<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.app.model.Employee"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Delete Employee</title>

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
    width: 500px;
    margin: 100px auto;
    background: white;
    padding: 35px;
    border-radius: 12px;
    text-align: center;
    box-shadow: 0 5px 20px rgba(0,0,0,0.15);
}

h1 {
    color: #e74c3c;
    margin-bottom: 20px;
}

.message {
    font-size: 18px;
    color: #444;
    margin-bottom: 25px;
}

.employee-info {
    background: #f8f8f8;
    padding: 15px;
    border-radius: 8px;
    margin-bottom: 25px;
}

.employee-info p {
    margin: 8px;
}

.buttons {
    display: flex;
    gap: 12px;
}

.delete-btn {
    flex: 1;
    padding: 12px;
    background: #e74c3c;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
}

.delete-btn:hover {
    background: #c0392b;
}

.cancel-btn {
    flex: 1;
    padding: 12px;
    background: #777;
    color: white;
    text-decoration: none;
    border-radius: 6px;
    font-size: 16px;
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

    <h1>Delete Employee</h1>

    <div class="message">
        Are you sure you want to delete this employee?
    </div>

    <div class="employee-info">

        <p>
            <strong>ID:</strong>
            <%= emp.getEid() %>
        </p>

        <p>
            <strong>Name:</strong>
            <%= emp.getEname() %>
        </p>

        <p>
            <strong>Email:</strong>
            <%= emp.getEmail() %>
        </p>

    </div>


    <div class="buttons">

        <form action="deleteEmployee" method="post"
              style="flex:1;">

            <input type="hidden"
                   name="eid"
                   value="<%= emp.getEid() %>">

            <button type="submit"
                    class="delete-btn">
                Yes, Delete
            </button>

        </form>


        <a href="adminDashboard"
           class="cancel-btn">
            Cancel
        </a>

    </div>

</div>

</body>
</html>