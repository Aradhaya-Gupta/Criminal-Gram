<%-- 
    Document   : AdminMain
    Created on : Nov 29, 2016, 5:14:00 PM
    Author     : Aradhaya Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
            <style>
body {
  background-image: url('modi.jpg');
  background-repeat: no-repeat;
  background-size: 100%;
}
</style>

    </head>
    <body>
        <img src="3.jpg" style="width: 100%; height:150px"/>
        <table style="width: 100%; border-style: solid; background-color: bisque">
            <tr>
                <td><a href="JailorRegistration.jsp" target="work">Register Jailor</a></td>
                <td><a href="RemoveJailor.jsp" target="work">Remove Jailor</a></td>
                <td><a href="ChangePassword_Admin.jsp">Change Password</a></td>
                <td><a href="CriminalsAdmin.jsp">Criminals information</a></td>>
                <td><a href="SignOut_Admin.jsp">Sign Out</td>
              
                
            </tr>
        </table>
        
    <center>    <iframe name="work" style="width: 500px; height: 500px; border-style: hidden"></iframe>
        </center> 
    </body>
</html>
