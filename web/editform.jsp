<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 
    Document   : editform
    Created on : Jun 16, 2024, 9:50:24 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Employee</title>
    </head>
    <body>
        <sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver" 
                           url="jdbc:derby://localhost:1527/Employee" 
                           user="app" 
                           password="app" 
                           var="conn"/>
        
        <h1>Edit Employee</h1>
        <form action="">
            Name: 
            <select name="name">
                <sql:query var="result" dataSource="${conn}">
                    SELECT NAME FROM STAFF
                </sql:query>
                <c:forEach var="row" items="${result.rowsByIndex}">
                <c:forEach var="column" items="${row}">
                    <option><c:out value="${column}"/></option>
                </c:forEach>
                </c:forEach>
            </select> <br><br>
            Salary: <input type="text" name="salary"><br><br>
            Designation: <input type="text" name="designation"><br><br>
            <input type="submit" value="Edit Save" required><br><br>
            <c:if test="${not empty param.designation || not empty param.salary}">
                <p>Edit Successful!</p>
                <c:if test="${not empty param.designation}">
                    <sql:update dataSource="${conn}">
                    UPDATE STAFF
                    SET DESIGNATION = ?
                    WHERE NAME = ?
                    <sql:param value="${param.designation}" />
                    <sql:param value="${param.name}" />
                    </sql:update>
                </c:if>
                <c:if test="${not empty param.salary}">
                    <sql:update dataSource="${conn}">
                    UPDATE STAFF
                    SET SALARY = ?
                    WHERE NAME = ?
                    <sql:param value="${param.salary}" />
                    <sql:param value="${param.name}" />
                    </sql:update>
                </c:if>
                
            </c:if>
        </form>
    </body>
</html>

