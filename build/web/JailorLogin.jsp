
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jailor Login</title>
        <style>
            input{
                background-color: aqua;
                text-align: center;
                text-decoration: blink;
            }
        </style>
    </head>
    <body><center>

        
        <form action="JailorLoginCheck.jsp">
            <h3>Jailor Login Page</h3>
            <table style="border-style: solid; border-color: blue; background-color: blanchedalmond">
                <tr><td> User Id</td><td><input type="text" name="aUid"/></td></tr>
                <tr> <td>Password</td><td><input type="password" name="pass"/></td></tr>
                <tr><td colspan="2"><input type="Submit" value="Sign in"/></td></tr>
            </table>
            
            
        </form>
        </center>
    </body>
</html>
