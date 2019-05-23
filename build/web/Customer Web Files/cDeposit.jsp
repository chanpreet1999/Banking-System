<%-- 
    Document   : cDeposit
    Created on : 22 Mar, 2019, 2:03:39 AM
    Author     : Chanpreet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cDeposit Jsp</title>
    </head>
    <body>
        <h3>Current balance: Rs.
        <%=
                Double.parseDouble(String.valueOf(session.getAttribute("balance")))
                %>
                </h3>
                <br>
        <form action="cDeposit2.jsp">
        <i>Enter amount to be deposited(in INR):</i>
        <input type="text" name="deposit"><br>
        <input type="submit" value="Go">
        </form>
    </body>
</html>
