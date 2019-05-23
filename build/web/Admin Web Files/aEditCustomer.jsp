<%-- 
    Document   : aEditCustomer
    Created on : 6 Apr, 2019, 11:46:30 PM
    Author     : Chanpreet
--%>
<%@page import="customer.ModelCustomer"%>
<%@page import="customer.CustomerDao" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Edit Customer JSP Page</title>
        <%
            String ids=request.getParameter("id");
            int id=Integer.parseInt(ids);
           ModelCustomer c= CustomerDao.getRecordById(id);
        %>
        <center>
        <h3>Update Customer Details </h3>
        <br>
        <form action="aEditCustomer2.jsp">
            <table>
                <% System.out.print("////"+c.getEmail()+"////"); %>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" required="" placeholder="Name" value="${c.getName()}"</td>
                </tr>

                <tr>
                    <td>DOB</td>
                    <td><input type="date" name="dob" required="" value="${c.getDob()}" ></td>
                </tr>

                <tr>
                    <td>Sex</td>
                    <td>
                        Male<input type="radio" name="sex" value="Male">
                        <br>
                        Female<input type="radio" name="sex" value="Female">
                        <br>
                        Others<input type="radio" name="sex" value="Others">
                    </td>
                </tr>

                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address" placeholder="Address" value="${c.getAddress()}"></td>
                </tr>

                <tr>
                    <td>Phone no</td>
                    <td><input type="text" name="phno" placeholder="Phone No" value="${c.getPhno()}"></td>
                </tr>

                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" required placeholder="Password" ></td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" placeholder="Email-id" value="${c.getEmail()}"></td>
                </tr>
                <tr>
                    <td>Nationality</td>
                    <td>
                        <select name="country" value="${c.getCountry()}">
                            <option>Indian</option>
                            <option>Other</option>
                        </select>
                    </td>
                </tr>   

                <tr>
                    <td>Type of account</td>
                    <td><select name="type" value="${c.getType()}">
                            <option>savings</option>
                            <option>current</option>
                        </select></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="Submit" value="Update"></td>
                </tr>

            </table>
            <input type="hidden" name="balance" placeholder="Amount" value="${c.getBalance}">
            <input type="hidden" name="id"  value="${c.getId()}">
        </form>
    </center>
    </head>
    <body>
        
    </body>
</html>
