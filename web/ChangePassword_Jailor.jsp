

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            input{
                background-color: bisque;
                border-color: black;
            }
            td{
                text-align: center;
                text-decoration: blink;
                text-transform: uppercase;
                
            }
        </style>
    </head>
    <body>
    <center>
        <h3>Change Password Jailor</h3>
        <form action="ChangePasswordConfirmJailor.jsp">
        <br><br>
        <table style="border-style: solid; border-color:blue; background-color: aqua">
            <tr><td>Old Password</td><td><input type="Password" name="oPass"/></td></tr>
            <tr><td>New Password</td><td><input type="Password" name="nPass"></td></tr>
            <tr><td>Confirm Password</td><td><input type="Password" name="cPass"/></td></tr>
            <tr><td colspan="2"><input type="Submit" value="Submit" href="ChangePasswordConfirmJailor.jsp"/></td></tr>
        </table>
        </form>
        </center>
    </body>
</html>
