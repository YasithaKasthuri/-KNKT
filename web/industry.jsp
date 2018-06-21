<%-- 
    Document   : industry
    Created on : Jun 12, 2018, 11:29:22 PM
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
        
        
        
        <h1>Hii!!! I'm Industry</h1>
    </body>
</html>
