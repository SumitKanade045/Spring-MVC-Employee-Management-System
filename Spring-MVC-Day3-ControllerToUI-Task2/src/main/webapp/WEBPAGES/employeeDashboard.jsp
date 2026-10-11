<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Employee Dashboard</title>

<style>

body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f4f6f9;
}

.navbar {
    background: #1e293b;
    color: white;
    padding: 18px 30px;
    display: flex;
    justify-content: space-between;
}

.navbar h2 {
    margin: 0;
}

.logout {
    color: white;
    text-decoration: none;
    background: #dc2626;
    padding: 8px 15px;
    border-radius: 5px;
}

.container {
    width: 80%;
    margin: 40px auto;
}

.card {
    background: white;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

.card h2 {
    color: #1e293b;
    margin-bottom: 25px;
}

.row {
    display: flex;
    padding: 15px;
    border-bottom: 1px solid #ddd;
}

.label {
    width: 200px;
    font-weight: bold;
    color: #475569;
}

.value {
    color: #111827;
}

</style>

</head>

<body>

<div class="navbar">

    <h2>Employee Dashboard</h2>

    <a href="emp-login" class="logout">Logout</a>

</div>


<div class="container">

    <div class="card">

        <h2>Employee Details</h2>

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
            <div class="label">Mobile</div>
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

    </div>

</div>

</body>
</html>