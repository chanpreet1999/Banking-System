<%-- 
    Document   : customerSignup2
    Created on : 14 Mar, 2019, 2:10:59 AM
    Author     : Chanpreet
--%>
<%@page errorPage="error.jsp" %>
<%@page import="customer.CustomerDao" %>
<jsp:useBean class="customer.ModelCustomer" id="c"/>
<jsp:setProperty name="c" property="*" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
    </head>
    <body>
        <%
            int i = 0;
            i = CustomerDao.save(c);
            if (i > 0) {
                response.sendRedirect("success.jsp");
            } else {
                out.print("An error occurred please try again ");
        %>
        <jsp:include page="customerSignup.html"></jsp:include>   
        <%
            }
        %>
    </body>
</html>