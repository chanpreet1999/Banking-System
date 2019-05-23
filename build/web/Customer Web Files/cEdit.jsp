<%-- 
    Document   : cEdit
    Created on : 21 Mar, 2019, 9:59:49 PM
    Author     : Chanpreet
--%>
<%@page errorPage="error.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cEdit JSP</title>
    </head>
    <body>
    <center>
        <h3>Update Your Details</h3>
        <br>
        <form action="cEdit2.jsp">
            <table>

                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" required="" placeholder="Name" value="<%=(String) session.getAttribute("name")%>"></td>
                </tr>

                <tr>
                    <td>DOB</td>
                    <td><input type="date" name="dob" required="" value="<%=(String) session.getAttribute("dob")%>" ></td>
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
                    <td><input type="text" name="address" placeholder="Address" value="<%=(String) session.getAttribute("address")%>"></td>
                </tr>

                <tr>
                    <td>Phone no</td>
                    <td><input type="text" name="phno" placeholder="Phone No" value="<%= session.getAttribute("phno")%>"></td>
                </tr>

                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" required placeholder="Password" ></td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" placeholder="Email-id" value="<%=(String) session.getAttribute("email")%>"></td>
                </tr>
                <tr>
                    <td>Nationality</td>
                    <td>
                        <select name="country" value="<%=(String) session.getAttribute("country")%>">
                            <option>Indian</option>
                            <option>Other</option>
                        </select>
                    </td>
                </tr>   

                <tr>
                    <td>Type of account</td>
                    <td><select name="type" value="<%=(String) session.getAttribute("type")%>">
                            <option>savings</option>
                            <option>current</option>
                        </select></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="Submit" value="Update"></td>
                </tr>

            </table>
            <input type="hidden" name="balance" placeholder="Amount" value="<%=session.getAttribute("balance")%>">
            <input type="hidden" name="id"  value="<%=session.getAttribute("id")%>">
        </form>
    </center>
</body>
</html>