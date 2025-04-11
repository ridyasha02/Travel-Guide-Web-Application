package com.travelguide;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class SignupServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        
        if (name == null || email == null || password == null ||
            name.isEmpty() || email.isEmpty() || password.isEmpty()) {
            response.sendRedirect("signup.jsp?error=empty");
            return;
        }

       
        boolean isRegistered = DBConnection.registerUser(name, email, password);

        if (isRegistered) {
            
            response.sendRedirect("login.jsp?signup=success");
        } else {
            
            response.sendRedirect("signup.jsp?error=exists");
        }
    }
}
