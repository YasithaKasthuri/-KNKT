<%-- 
    Document   : login
    Created on : Jun 11, 2018, 3:18:56 PM
    Author     : DEll
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KNKT</title>
        <link rel="stylesheet" href=https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.js"></script>
        
    </head>
    <body>
        <div class="ui middle aligned center aligned grid">
  <div class="column">
    <h2 class="ui teal image header">
      
      <div class="content">
        KNKT to your account
      </div>
    </h2>
        <form name="login" class="ui large form" action="login" method="post">
            <div class="ui stacked segment">
            <div class="field">
                <div class="ui left icon input">
                    <i class="user icon"></i>
                    <input type="text" name="uname" placeholder="Enter Your Username">
                </div>
            </div>
        <div class="field">
          <div class="ui left icon input">
            <i class="lock icon"></i>
            <input type="password" name="pass" placeholder="Password">
          </div>
        </div>
                <button class="ui inverted blue button" type="submit">Login</button>
        <br>
        
        
  
  
            </div>

            <div class="ui error message"></div>

        </form>
      <form action="signup.jsp">
          <button class="ui inverted blue button">Signup</button></a> 
      </form>
      

    
  </div>
</div>
        <style type="text/css">
    body {
      background-color: #DADADA;
    }
    body > .grid {
      height: 100%;
    }
     .column {
      max-width: 450px;
    }
    </style>
   
    </body>
    
</html>
