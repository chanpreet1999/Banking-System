<%-- 
    Document   : cHome
    Created on : 15 Mar, 2019, 8:57:35 PM
    Author     : Chanpreet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer home Page</title>
    </head>
    <body>
        <jsp:include page="header.html"/>
        <h1> Welcome 
            <%
                response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
                response.setHeader("Pragma", "no-cache");

                request.getSession(false);

                if (session.getAttribute("name") != null) {
                    String name = (String) session.getAttribute("name");
                    out.print(name);
                } else {
                    response.sendRedirect("customerLogin.html");
                }

            %>

        </h1>
        <br>
        <br>
        <table style="width: 100%" border="1"> 

            <tr>
                <th>Name </th>
                <td><%=(String) session.getAttribute("name")%></td>
            </tr>

            <tr>
                <th>Current Balance </th>
                <td><%= session.getAttribute("balance")%></td>
            </tr>

            <tr>
                <th>Contact No.</th>
                <td><%=session.getAttribute("phno")%></td>
            </tr>

            <tr>
                <th>Email</th>
                <td><%=(String) session.getAttribute("email")%></td>
            </tr>

            <tr>
                <th>Nationality</th>
                <td><%=(String) session.getAttribute("country")%></td>
            </tr>

            <tr>
                <th>Sex</th>
                <td><%=(String) session.getAttribute("sex")%></td>
            </tr>

            <tr>
                <th>Address</th>
                <td><%=(String) session.getAttribute("address")%></td>
            </tr>

            <tr>
                <th>DOB</th>
                <td><%= session.getAttribute("dob")%></td>
            </tr>

            <tr>
                <th>Type Of Account</th>
                <td><%=(String) session.getAttribute("type")%></td>
            </tr>

        </table>
            <h4><i>Click <a href="cEdit.jsp">here</a> to edit your details</i></h4>     
    </body>
</html>