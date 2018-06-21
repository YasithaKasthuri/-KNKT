<%-- 
    Document   : signup
    Created on : Jun 12, 2018, 11:32:45 PM
    Author     : DEll
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href=https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="ui middle aligned center aligned grid">
            <form class="ui form">
                <div class="field">
                    <label>First Name</label>
                    <input type="text" name="first-name" placeholder="First Name">
                </div>
                <div class="field">
                    <label>Last Name</label>
                    <input type="text" name="last-name" placeholder="Last Name">
                </div>
                <div class="field">
                    <div class="ui checkbox">
                    <input type="checkbox" tabindex="0" class="hidden">
                    <label>I agree to the Terms and Conditions</label>
                    </div>
                </div>
                <button class="ui button" type="submit">Submit</button>
            </form>
        </div>
    </body>
</html>
