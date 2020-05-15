<%-- 
    Document   : AdminLoginPage
    Created on : Nov 29, 2016, 4:46:19 PM
    Author     : Aradhaya Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Criminal</title>
        <style>
            input{
                background-color: plum;
                text-align: center;
                text-decoration: blink;
            }
                
body {
  background-image: url('85.jpg');
  background-repeat: no-repeat;
  background-size: 100%;
}


        </style>
    </head>
    <body><center>

        
        <form action="DeleteCriminalAdmin_Backend.jsp">
            <h3>Delete Criminal Page for Admin</h3>
            <table style="border-style: solid; border-color: blue; background-color: fuchsia">
                <tr><td>Criminal Id</td><td><input type="number" name="id" min="1"/></td></tr>
                <tr><td colspan="2"><input type="Submit" value="delete"/></td></tr>
            </table>
        </form>
        </center>
    </body>
</html>
