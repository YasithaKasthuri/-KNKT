/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assignment1;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DEll
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet logout</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet logout at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        response.setContentType("text/html;charset=UTF-8");
         try (PrintWriter out = response.getWriter()) {
             
        String uname = request.getParameter("uname");
        String pass  =request.getParameter("pass");
        
       
            try {
                if (uname!=null) {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/knkt","root","");
                    String Query ="select * from admin where name=? and Password=?";
                    PreparedStatement psm = conn.prepareStatement(Query);
                    psm.setString(1, uname);
                    psm.setString(2, pass);
                    ResultSet rs=psm.executeQuery();
                    if(rs.next())
                    {
                        HttpSession session = request.getSession();
                        session.setAttribute("username", uname);
                        response.sendRedirect("admin.jsp");
                    }
                    
                }
                
                 if (uname!=null) {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/knkt","root","");
                    String Query ="select * from university where name=? and password=?";
                    PreparedStatement psm = conn.prepareStatement(Query);
                    psm.setString(1, uname);
                    psm.setString(2, pass);
                    ResultSet rs=psm.executeQuery();
                    if(rs.next())
                    {
                        HttpSession session = request.getSession();
                        session.setAttribute("username", uname);
                        response.sendRedirect("university.jsp");
                    }
                   
                }
                 if (uname!=null) {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/knkt","root","");
                    String Query ="select * from industry where name=? and password=?";
                    PreparedStatement psm = conn.prepareStatement(Query);
                    psm.setString(1, uname);
                    psm.setString(2, pass);
                    ResultSet rs=psm.executeQuery();
                    if(rs.next())
                    {
                        HttpSession session = request.getSession();
                        session.setAttribute("username", uname);
                        response.sendRedirect("industry.jsp");
                    }
                    else
                    {
                        response.sendRedirect("log.jsp");
                    }
                }
            } catch (Exception ex) {
                out.println("Exception :"+ex.getMessage());
            }
        }
        
        
        
        
    }

    

}
