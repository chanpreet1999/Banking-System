/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package customer;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Chanpreet
 */
public class cDelete extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int status = 0;
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        HttpSession session = request.getSession(false);
        
        String name = (String) session.getAttribute("name");
        if (name != null) {
            
            int id = (int) session.getAttribute("id");
            status = CustomerDao.delete(id);
            System.out.println("=====status====="+status);
            if (status > 0) {
                out.print("Record deleted successfully");
                request.getRequestDispatcher("customerLogin.html").include(request, response);
            } else {
                out.println("An unknown error occured!! please try again after some time");
                request.getRequestDispatcher("error.jsp").include(request, response);
            }
        } 
        else {
            response.sendRedirect("customerLogin.html");
        }
        
    }
    
}
