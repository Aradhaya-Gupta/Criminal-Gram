<%-- 
    Document   : Register
    Created on : Dec 8, 2016, 6:11:01 PM
    Author     : ict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jailor Registration</title>
        <style>
body {
  background-image: url('bharat.jpg');
  background-repeat: no-repeat;
  background-size: 100%;
}
</style>

    </head>
    <body><center>
        <h2>Jailor Registration</h2>
        <br>
        
        <form action="JailorRegistered.jsp">
            <table>
                <tr><td>Name</td><td><input type="textbox" name="name"/></td></tr>
                <tr><td>User Id</td><td><input type="textbox" name="userId"/></td></tr>
                <tr><td>Password</td><td><input type="password" name="password"/></td></tr>
               
                <tr><td>City</td><td><input type="textbox" name="city"/></td></tr>
                <tr><td colspan="2"><input type="Submit" value="Submit"/></td></tr>
            </table>
        </form>
        </center>
    </body>
</html>
