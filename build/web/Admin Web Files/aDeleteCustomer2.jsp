<%-- 
    Document   : aDeleteCustomer2
    Created on : 7 Apr, 2019, 7:51:41 PM
    Author     : Chanpreet
--%>
<%@page import="customer.CustomerDao" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int id=Integer.parseInt(request.getParameter("id"));
            int status=CustomerDao.delete(id);
            if(status>0)
            {
                response.sendRedirect("cRec.jsp");
            }
            else
            {
                out.print("Record could not be deleted Admin!!");
            }
            
        %>
    </body>
</html>
