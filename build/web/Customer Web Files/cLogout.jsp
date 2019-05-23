<%-- 
    Document   : cLogout
    Created on : 17 Mar, 2019, 11:44:48 AM
    Author     : Chanpreet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>
        
        <i>
                <%
                session.removeAttribute("name");
                session.invalidate();
                out.print("Logged out successfully");
            %>
           
            <jsp:include page="index.html"/>  
            
            
            
        </i>
    </body>
</html>
