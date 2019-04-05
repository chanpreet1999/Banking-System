<%-- 
    Document   : error
    Created on : 15 Mar, 2019, 1:57:18 AM
    Author     : Chanpreet
--%>
<%@page isErrorPage="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <h1>
            An error occured!
            <%=exception%>
        </h1>
    </body>
</html>
