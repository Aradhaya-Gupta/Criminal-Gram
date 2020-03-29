<%-- 
    Document   : SignOut_Admin
    Created on : Feb 8, 2020, 11:41:41 PM
    Author     : Aradhaya Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignOut_Admin</title>
    </head>
    <body>
       
        <%String uid= (String)session.getAttribute("aUid");
        String pass= (String)session.getAttribute("pass");
        session.invalidate();
        response.sendRedirect("MainPage.jsp");
        
        %>
    </body>
</html>
