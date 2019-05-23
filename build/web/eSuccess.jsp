<%-- 
    Document   : eSuccess
    Created on : 23 May, 2019, 11:58:22 PM
    Author     : Chanpreet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Account Creation</title>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            response.setHeader("Pragma", "no-store");
          %>  
        <p>Employee account created successfully!</p>
        <p>Try logging in(^0^)!</p>
        <jsp:include page="employeeLogin.html"></jsp:include>
    </body>
</html>
