<%-- 
    Document   : cWithdraw
    Created on : 4 Apr, 2019, 10:53:25 PM
    Author     : Chanpreet
--%>
<%@page errorPage="error.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cWithdraw JSP Page</title>
    </head>
    <body>
        <h3>
            Current Balance is Rs.
            <%=Double.parseDouble(String.valueOf(session.getAttribute("balance")))%>
        </h3>
        <form action="cWithdraw2.jsp">
            <i>Enter amount of money to be withdrawn(in INR):</i>
            <input type="text" placeholder="Amount" name="withdraw">
            <input type="submit" value="Go">
        </form>
    </body>
</html>
