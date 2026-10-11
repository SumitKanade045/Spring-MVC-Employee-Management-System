<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.app.model.Employee" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Admin Dashboard</title>

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f4f6f9;
        }

        /* ================= NAVBAR ================= */

        .navbar {
            height: 70px;
            background: #252b36;
            color: white;

            display: flex;
            align-items: center;
            justify-content: space-between;

            padding: 0 30px;
        }

        .navbar h2 {
            margin: 0;
            font-size: 24px;
        }

        .admin-name {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .logout {
            background: #e74c3c;
            color: white;

            text-decoration: none;

            padding: 10px 18px;

            border-radius: 6px;

            transition: 0.3s;
        }

        .logout:hover {
            background: #c0392b;
        }

        /* ================= MAIN ================= */

        .main {
            padding: 30px;
        }

        .welcome {
            margin-bottom: 25px;
        }

        .welcome h1 {
            margin: 0;
            color: #333;
        }

        .welcome p {
            color: #777;
        }

        /* ================= CARDS ================= */

        .cards {
            display: flex;
            gap: 20px;
            margin-bottom: 30px;
        }

        .card {
            background: white;

            width: 220px;

            padding: 22px;

            border-radius: 10px;

            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
        }

        .card h3 {
            margin: 0;

            color: #777;

            font-size: 15px;
        }

        .card h1 {
            margin: 10px 0 0;

            color: #333;
        }

        /* ================= TABLE CONTAINER ================= */

        .table-container {
            background: white;

            padding: 25px;

            border-radius: 10px;

            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);

            overflow-x: auto;
        }

        /* ================= TABLE HEADER ================= */

        .table-header {
            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 20px;
        }

        .table-header h2 {
            margin: 0;

            color: #333;
        }

        /* ================= ADD BUTTON ================= */

        .add-btn {
            background: #667eea;

            color: white;

            text-decoration: none;

            padding: 10px 18px;

            border-radius: 6px;

            transition: 0.3s;
        }

        .add-btn:hover {
            background: #5568d9;
        }

        /* ================= TABLE ================= */

        table {
            width: 100%;

            border-collapse: collapse;

            min-width: 1150px;
        }

        th {
            background: #252b36;

            color: white;

            padding: 14px;

            text-align: left;

            white-space: nowrap;
        }

        td {
            padding: 13px;

            border-bottom: 1px solid #ddd;

            color: #444;

            white-space: nowrap;
        }

        tr:hover {
            background: #f7f7f7;
        }

        /* ================= ACTION BUTTONS ================= */

        .action-buttons {
            white-space: nowrap;
        }

        .edit-btn {
            display: inline-block;

            background: #3498db;

            color: white;

            text-decoration: none;

            padding: 8px 14px;

            border-radius: 5px;

            margin-right: 5px;

            transition: 0.3s;
        }

        .edit-btn:hover {
            background: #2980b9;
        }

        .delete-btn {
            display: inline-block;

            background: #e74c3c;

            color: white;

            text-decoration: none;

            padding: 8px 14px;

            border-radius: 5px;

            transition: 0.3s;
        }

        .delete-btn:hover {
            background: #c0392b;
        }

        /* ================= NO DATA ================= */

        .no-data {
            text-align: center;

            padding: 30px;

            color: #777;
        }

        /* ================= RESPONSIVE ================= */

        @media (max-width: 768px) {

            .navbar {
                padding: 0 15px;
            }

            .navbar h2 {
                font-size: 18px;
            }

            .admin-name span {
                display: none;
            }

            .main {
                padding: 15px;
            }

            .cards {
                flex-wrap: wrap;
            }

            .card {
                width: 100%;
            }

            .table-container {
                padding: 15px;
            }

        }

    </style>

</head>


<body>


    <!-- ================= NAVBAR ================= -->

    <div class="navbar">

        <h2>
            Employee Management System
        </h2>

        <div class="admin-name">

            <span>
                Welcome, Admin
            </span>

            <a href="logout" class="logout">
                Logout
            </a>

        </div>

    </div>


    <!-- ================= MAIN ================= -->

    <div class="main">


        <!-- ================= WELCOME ================= -->

        <div class="welcome">

            <h1>
                Admin Dashboard
            </h1>

            <p>
                Manage and view all registered employees.
            </p>

        </div>


        <!-- ================= CARDS ================= -->

        <div class="cards">


            <!-- TOTAL EMPLOYEES -->

            <div class="card">

                <h3>
                    Total Employees
                </h3>

                <h1>
                    ${employeeCount}
                </h1>

            </div>


            <!-- ACTIVE EMPLOYEES -->

            <div class="card">

                <h3>
                    Active Employees
                </h3>

                <h1>
                    ${employeeCount}
                </h1>

            </div>


            <!-- SYSTEM STATUS -->

            <div class="card">

                <h3>
                    System Status
                </h3>

                <h1>
                    Active
                </h1>

            </div>


        </div>


        <!-- ================= EMPLOYEE TABLE ================= -->

        <div class="table-container">


            <!-- TABLE HEADER -->

            <div class="table-header">

                <h2>
                    All Employee Details
                </h2>

                <a href="register" class="add-btn">
                    + Add Employee
                </a>

            </div>


            <!-- TABLE -->

            <table>


                <!-- TABLE HEAD -->

                <thead>

                    <tr>

                        <th>
                            Employee ID
                        </th>

                        <th>
                            Name
                        </th>

                        <th>
                            Address
                        </th>

                        <th>
                            Salary
                        </th>

                        <th>
                            Mobile
                        </th>

                        <th>
                            Email
                        </th>

                        <th>
                            Username
                        </th>

                        <th>
                            Password
                        </th>

                        <th>
                            Action
                        </th>

                    </tr>

                </thead>


                <!-- TABLE BODY -->

                <tbody>

                <%

                    List<Employee> employees =
                        (List<Employee>)
                        request.getAttribute("employees");


                    if (employees != null && !employees.isEmpty()) {


                        for (Employee emp : employees) {

                %>


                    <tr>


                        <!-- EMPLOYEE ID -->

                        <td>
                            <%= emp.getEid() %>
                        </td>


                        <!-- NAME -->

                        <td>
                            <%= emp.getEname() %>
                        </td>


                        <!-- ADDRESS -->

                        <td>
                            <%= emp.getEaddress() %>
                        </td>


                        <!-- SALARY -->

                        <td>
                            ₹ <%= emp.getEsalary() %>
                        </td>


                        <!-- MOBILE -->

                        <td>
                            <%= emp.getEmobile() %>
                        </td>


                        <!-- EMAIL -->

                        <td>
                            <%= emp.getEmail() %>
                        </td>


                        <!-- USERNAME -->

                        <td>
                            <%= emp.getUsername() %>
                        </td>


                        <!-- PASSWORD -->

                        <td>
                            ********
                        </td>


                        <!-- ACTION -->

                        <td class="action-buttons">


                            <!-- EDIT -->

                            <a
                                href="editEmployee?eid=<%= emp.getEid() %>"
                                class="edit-btn">

                                Edit

                            </a>


                            <!-- DELETE -->

                            <a
                                href="deleteEmp?eid=<%= emp.getEid() %>"
                                class="delete-btn"

                                onclick="return confirm(
                                    'Are you sure you want to delete this employee?'
                                );">

                                Delete

                            </a>


                        </td>


                    </tr>


                <%

                        }

                    } else {

                %>


                    <!-- NO EMPLOYEE -->

                    <tr>

                        <td
                            colspan="9"
                            class="no-data">

                            No employees registered.

                        </td>

                    </tr>


                <%

                    }

                %>


                </tbody>


            </table>


        </div>


    </div>


</body>

</html>