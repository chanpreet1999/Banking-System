<%-- 
    Document   : cRec
    Created on : 6 Apr, 2019, 2:35:10 AM
    Author     : Chanpreet
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="customer.ModelCustomer"%>
<%@page import="customer.CustomerDao" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer records JSP Page</title>
    </head>
    <body>
        <h2>The customer records are:</h2>
        <table border="1px">
            <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Password</th>
            <th>Email</th>
            <th>Country</th>
            <th>Sex</th>
            <th>Address</th>
            <th>DOB</th>
            <th>Type</th>
            <th>Balance</th>
            <th>Phone number</th>
            <th>Edit</th>
            <th>Delete</th>
            </tr>
            <%
                List<ModelCustomer> list=new ArrayList<>();
                list=CustomerDao.getAllRecords();
                Iterator itr=list.iterator();
                while(itr.hasNext())
                {
            %>
            <tr>
                <td><%=%></td>
                <td><%=%></td>
                <td><%=%></td>
                <td><%=%></td>
                <td><%=%></td>
                <td><%=%></td>
                <td><%=%></td>
                <td><%=%></td>
                
            </tr>
        </table>
    </body>
</html>
