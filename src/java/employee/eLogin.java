/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package employee;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Chanpreet
 */
@WebServlet(name = "eLogin", urlPatterns = {"/eLogin"})
public class eLogin extends HttpServlet {

    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        
        String uname=request.getParameter("uname");
        String pass=request.getParameter("pass");
        
        ModelEmployee e=EmployeeDao.login(uname,pass);
        if(e.getName()!=null)
        {
            HttpSession session=request.getSession();
            
            session.setAttribute("id", e.getId());
            session.setAttribute("name", e.getName());
            session.setAttribute("password", e.getPassword());
            session.setAttribute("email", e.getEmail());
            session.setAttribute("sex", e.getSex());
            session.setAttribute("address", e.getAddress());
            session.setAttribute("dob", e.getDob());
            session.setAttribute("phno", e.getPhno());
            session.setAttribute("grade", e.getGrade());
            session.setAttribute("no_of_customers", e.getNo_of_customers());
            session.setAttribute("salary", e.getSalary());
            session.setAttribute("bonus", e.getBonus());
            session.setAttribute("bond_length", e.getBond_length());
            
            session.setMaxInactiveInterval(30*60); //session expires automatically after 30 mins
            out.println("loggged in");
            response.sendRedirect("eHome.jsp");
        }
        
        else
        {
            out.println("<h4>Invald username or password</h4>");
            request.getRequestDispatcher("employeeLogin.html").include(request, response);
        }
            
    }
    
}
