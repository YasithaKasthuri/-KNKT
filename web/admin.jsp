<%-- 
    Document   : Admin
    Created on : Jun 11, 2018, 3:57:55 PM
    Author     : DEll
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (session.getAttribute("username")==null)
            {
                response.sendRedirect("log.jsp");
            }
            
        %>
        
        
        
        
        <h1>Hello World!</h1>
    </body>
</html>
