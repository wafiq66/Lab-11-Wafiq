<%-- 
    Document   : empform.jsp
    Created on : Jun 16, 2024, 9:46:02 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new Employee</title>
    </head>
    <body>
        <h1>Add New Employee</h1>
        <form action="empController" method="post">
            Name: <input type="text" name="name" required><br><br>
            Salary: <input type="text" name="salary" required><br><br>
            Designation: <input type="text" name="designation" required><br><br>
            <input type="submit" value="Save" required><br><br>
        </form>
        <a href="index.jsp">Home Page</a>
    </body>
</html>
