<%-- 
    Document   : eHome
    Created on : 24 May, 2019, 10:22:50 PM
    Author     : Chanpreet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Home Page</title>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");

            request.getSession(false);

            if (session.getAttribute("name") != null) 
            {
                String name = (String) session.getAttribute("name");
                out.println("<h3>Welome Mr." + name + "</h3>");
            } 
            else 
            {
                response.sendRedirect("employeeLogin.html");
            }
        %>
        <h5>
            Here are all the customer records:
        </h5>
        <jsp:include page="cRec.jsp"></jsp:include>
        
    </body>
</html>
