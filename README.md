# Spring MVC Employee Management System

A web-based Employee Management System developed using Java and the Spring MVC framework. The application provides employee registration, login, dashboard management, employee updates, and deletion functionality.

## 🚀 Project Overview

This project demonstrates the implementation of the Spring MVC architecture using controllers, service classes, DAO classes, model classes, and JSP pages. It uses Apache Tomcat to run the web application.

## 🛠️ Technologies Used

- **Programming Language:** Core Java
- **Framework:** Spring MVC
- **ORM / Database Integration:** As configured in the project
- **View Technology:** JSP, HTML, CSS
- **Server:** Apache Tomcat 10.1
- **Build Tool:** Maven (if configured)
- **IDE:** Eclipse IDE

## ✨ Features

- Employee registration
- Employee login
- Employee dashboard
- Admin login
- Admin dashboard
- Edit and update employee details
- Delete employee records
- Forgot password page
- Logout functionality
- MVC-based application structure

## 🏗️ Project Structure

```text
Spring-MVC-Day3-ControllerToUI-Task2/
├── src/main/java/
│   └── com/app/
│       ├── config/
│       │   ├── HibernateConfig.java
│       │   ├── SpringConfig.java
│       │   └── WebApplication.java
│       ├── controller/
│       │   └── EmployeeController.java
│       ├── dao/
│       │   └── EmployeeDao.java
│       ├── model/
│       │   ├── Admin.java
│       │   └── Employee.java
│       └── service/
│           └── EmployeeService.java
├── src/main/webapp/
│   └── WEBPAGES/
│       ├── adminDashboard.jsp
│       ├── admin-login.jsp
│       ├── deleteEmployee.jsp
│       ├── editEmployee.jsp
│       ├── emp-login.jsp
│       ├── employeeDashboard.jsp
│       ├── fail.jsp
│       ├── forgot-password.jsp
│       ├── logout.jsp
│       ├── register.jsp
│       └── registerS.jsp
├── src/main/resources/
└── pom.xml
```

## ⚙️ Application Workflow

1. An employee registers through the registration page.
2. The employee logs in to access the employee dashboard.
3. The administrator accesses the admin login page.
4. The administrator views and manages employee records.
5. Employee details can be updated or deleted.
6. Users can log out of the application.

## 🔧 Controller Operations

The `EmployeeController` handles requests for employee-related operations, including:

- Employee login and registration
- Admin login
- Employee update using `/updateEmployee`
- Employee deletion using `/deleteEmployee`
- Redirecting to the admin dashboard after successful updates or deletions

## ▶️ How to Run the Project

1. Clone or download this repository.
2. Import the project into Eclipse IDE.
3. Configure the required database connection in the project configuration.
4. Ensure the required dependencies are available.
5. Configure Apache Tomcat 10.1.
6. Run the project on the Tomcat server.
7. Open the application in your browser using the appropriate local URL.

## 🎯 Learning Outcomes

- Understanding Spring MVC architecture
- Creating controllers and handling HTTP requests
- Using JSP pages for the user interface
- Organizing Java applications into packages
- Implementing employee CRUD operations
- Deploying a Java web application on Apache Tomcat

## 👨‍💻 Author

**Sumit Kanade**

---

*This project was developed for practising Java web development and the Spring MVC framework.*
