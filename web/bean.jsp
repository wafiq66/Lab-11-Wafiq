<%-- 
    Document   : bean.jsp
    Created on : Jun 16, 2024, 4:41:58 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bean</title>
    </head>
    <body>
        <h1>Bean World!</h1>
        <jsp:useBean id="staff" class="person.bean.Staff">
            <jsp:setProperty name="staff" property="firstname" value="${param.firstname}" />
            <jsp:setProperty name="staff" property="lastname" value="${param.lastname}" />
            <jsp:setProperty name="staff" property="age" value="${param.age}" />
        </jsp:useBean>
        <p>Staff Full Name:
            <jsp:getProperty name="staff" property="fullname" />
        </p>
        <p>Staff First Name:
            <jsp:getProperty name="staff" property="firstname" />
        </p>
        <p>Staff Last Name:
            <jsp:getProperty name="staff" property="lastname" />
        </p>
        <p>Staff Age:
            <jsp:getProperty name="staff" property="age" />
        </p>
    </body>
</html>
