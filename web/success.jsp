<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : success
    Created on : Jun 16, 2024, 10:05:13 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver" 
                           url="jdbc:derby://localhost:1527/Employee" 
                           user="app" 
                           password="app" 
                           var="conn"/>
        <sql:update dataSource="${conn}">
                INSERT INTO STAFF (NAME, SALARY, DESIGNATION)
                VALUES (?, ?, ?)
            <sql:param value="${staff.name}" />
            <sql:param value="${staff.salary}" />
            <sql:param value="${staff.designation}" />
        </sql:update>
        <h1>Registered!</h1>
        <form action="empController" method="post">
            Name: <input type="text" name="name" required><br><br>
            Salary: <input type="text" name="salary" required><br><br>
            Designation: <input type="text" name="designation" required><br><br>
            <input type="submit" value="Save" required><br><br>
        </form>
        <a href="index.jsp">Home Page</a>
    </body>
</html>
