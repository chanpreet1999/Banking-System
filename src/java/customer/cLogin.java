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
public class cLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        ModelCustomer m = CustomerDao.login(username, password);

        if (m.getName() != null) {
            HttpSession session=request.getSession();
            
            session.setAttribute("id", m.getId());
            session.setAttribute("name",m.getName() );
            session.setAttribute("password", m.getPassword());
            session.setAttribute("email", m.getEmail());
            session.setAttribute("country", m.getCountry());
            session.setAttribute("sex", m.getSex());
            session.setAttribute("address", m.getAddress());
            session.setAttribute("type", m.getType());
            session.setAttribute("phno", m.getPhno());
            session.setAttribute("balance", m.getBalance());
            session.setAttribute("dob", m.getDob());
            
            response.sendRedirect("cHome.jsp");
        } else {
            out.println("<h4>Invalid username or password!!</h4>");
            request.getRequestDispatcher("customerLogin.html").include(request, response);
        }

    }

}
