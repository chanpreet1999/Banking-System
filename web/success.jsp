<%-- 
    Document   : success
    Created on : 15 Mar, 2019, 12:44:33 AM
    Author     : Chanpreet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>success customer Page</title>
    </head>
    <body>
        <h3>You have successfully created an account!</h3>
        <p>Please login to access your account</p>
        <a href="customerLogin.html">Login</a>
        <%
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            response.setHeader("Pragma", "no-store");
        %>
    </body>
</html>
