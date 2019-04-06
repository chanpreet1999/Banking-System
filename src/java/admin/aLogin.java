/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chanpreet
 */
@WebServlet(name = "aLogin", urlPatterns = {"/aLogin"})
public class aLogin extends HttpServlet {
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        String uname=request.getParameter("uname");
        String pass=request.getParameter("pass");
        if(uname.equals("chanpreet") && pass.equals("abc"))
        {
            response.sendRedirect("adminHome.jsp");
        }
        else
        {
            out.println("<i><h4>Wrong Username or password</h4></i>");
            request.getRequestDispatcher("adminLogin.html").include(request, response);
        }
    }
}
