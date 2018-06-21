<%-- 
    Document   : university
    Created on : Jun 12, 2018, 11:28:50 PM
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
        
        <h1>Hiii I'm university</h1>
    </body>
</html>
