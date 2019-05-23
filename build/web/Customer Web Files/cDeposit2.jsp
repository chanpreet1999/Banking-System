<%-- 
    Document   : cDeposit2
    Created on : 22 Mar, 2019, 2:13:37 AM
    Author     : Chanpreet
--%>
<%@page errorPage="error.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String depositString=request.getParameter("deposit");
            double deposit=Double.parseDouble(depositString);
            double bal = Double.parseDouble(String.valueOf(session.getAttribute("balance")));
            double newBal=bal+deposit;
            session.setAttribute("balance", newBal);
            response.sendRedirect("cHome.jsp");
        %>
    </body>
</html>
