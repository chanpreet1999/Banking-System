<%-- 
    Document   : eLogin
    Created on : 23 Apr, 2019, 2:53:22 AM
    Author     : Chanpreet
--%>

<%@page import="employee.EmployeeDao" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  errorPage="error.jsp"%> 
<jsp:useBean class="employee.ModelEmployee" id="e" ></jsp:useBean>
<jsp:setProperty name="e" property="*"></jsp:setProperty>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Signup 2 Jsp</title>
    </head>
    <body>
        <%
            int i=EmployeeDao.save(e);
            if(i>0)
                response.sendRedirect("eSuccess.jsp");
            else
            {
                
            out.println("An error occured while updatng database Please check the logs ");
        %>
        <jsp:include page="aEmployeeSignup.html"></jsp:include>
        <%
            }
        %>
    </body>
</html>
