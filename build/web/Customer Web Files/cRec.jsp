<%-- 
    Document   : cRec
    Created on : 6 Apr, 2019, 2:35:10 AM
    Author     : Chanpreet
--%>
<%@page errorPage="error.jsp" %>
<%@page import="java.util.List"%>
<%@page import="customer.ModelCustomer"%>
<%@page import="customer.CustomerDao" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer records JSP Page</title>
    </head>
    <body>
        <h2>The customer records are:</h2>
        <table border="1" width="100%">
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
                List<ModelCustomer> list = CustomerDao.getAllRecords();
                request.setAttribute("list", list);
            %>

            <c:forEach items="${list}" var="cus">
                <tr>
                    <td>${cus.getId()}</td>
                    <td>${cus.getName()}</td>
                    <td>${cus.getPassword()}</td>
                    <td>${cus.getEmail()}</td>
                    <td>${cus.getCountry()}</td>
                    <td>${cus.getSex()}</td>
                    <td>${cus.getAddress()}</td>
                    <td>${cus.getDob()}</td>
                    <td>${cus.getType()}</td>
                    <td>${cus.getBalance()}</td>
                    <td>${cus.getPhno()}</td>
                    <td><a href="aEditCustomer.jsp?id=${cus.getId()}">Edit</a></td>
                    <td><a href="aDeleteCustomer.jsp?id=${cus.getId()}">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
