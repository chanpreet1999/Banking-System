<%-- 
    Document   : aDeleteCustomer
    Created on : 7 Apr, 2019, 5:35:57 PM
    Author     : Chanpreet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style>
            a
            {
                text-decoration: none;
                display: inline-block;
                padding: 8px 16px;
            }
            
            a:hover
            {
                background-color: #ddd;
                color: black;
            }
            
            .prev
            {
                background-color: #f1f1f1;
                color: black;
                border-radius: 5px;
            }
            
            .next
            {
                background-color: #4caff0;
                color: white;
                border-radius: 5px;
            }
            
        </style>
        
    </head>
    <body>
    <%
        String ids=request.getParameter("id");
        int id=Integer.parseInt(ids);
        
    %>
    <a href="cRec.jsp" class="prev">no</a>
    <a href="aDeleteCustomer2.jsp?id="${id} class="next">yes</a>
    
    </body>
</html>
