<%-- 
    Document   : cEdit2
    Created on : 22 Mar, 2019, 12:31:50 AM
    Author     : Chanpreet
--%>
<%@page import="customer.CustomerDao" %>
<jsp:useBean class="customer.ModelCustomer" id="c"/>
<jsp:setProperty name="c" property="*"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cEdit2 JSP Page</title>
    </head>
    <body>
        <%
            int i=CustomerDao.edit(c);
            if(i>0)
            {
                %>
        <jsp:include page="cHome.jsp"/>
         <h3>You have successfully Updated your derails!</h3>
            <%
            }
            else{
                out.print("An error occured while updating your details!");            
        %>
        <jsp:include page="error.jsp"/>
        <% } %>
    </body>
</html>
