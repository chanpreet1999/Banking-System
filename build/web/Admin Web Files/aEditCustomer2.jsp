<%-- 
    Document   : aEditCustomer2
    Created on : 7 Apr, 2019, 1:30:39 AM
    Author     : Chanpreet
--%>
<%@page errorPage="error.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="customer.ModelCustomer" id="cus"></jsp:useBean>
<jsp:setProperty name="cus" property="*" />
<%@page import="customer.CustomerDao" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Edit customer 2JSP Page</title>
    </head>
    <body>
       <%
           System.out.print("++++"+cus.getEmail()+"+++++");
           int i=CustomerDao.edit(cus);
           if(i>0)
           {
               response.sendRedirect("cRec.jsp");
           }
           else
           {
       %>
       <h3>Error while updating record!!</h3>
       <%
               }
       %>
    </body>
</html>
