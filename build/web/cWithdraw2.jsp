<%-- 
    Document   : cWithdraw2
    Created on : 4 Apr, 2019, 11:11:08 PM
    Author     : Chanpreet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cWithdraw2 JSP Page</title>
    </head>
    <body>
        <%
            double with=Double.parseDouble(request.getParameter("withdraw"));
            double bal=Double.parseDouble(String.valueOf(session.getAttribute("balance")));
            double newBal=bal-with;
            if(newBal<0)
            {
            
                %><h3>You Don't have sufficient balance to withdraw this much money!!!</h3>
                <jsp:include page="cWithdraw.jsp"></jsp:include>
                <% 
                }
            else{
                session.setAttribute("balance", newBal);
                response.sendRedirect("cHome.jsp");
            }
                %>
    </body>
</html>
