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
        <title>Remove Jailor</title>
    </head>
    <body><center>
        <h2>Remove Jailor</h2>
        <br>
        
        <form action="JailorRemoved.jsp">
            <table>
                <tr><td>Name</td><td><input type="textbox" name="name"/></td></tr>
                <tr><td>User Id</td><td><input type="textbox" name="userId"/></td></tr>
                <tr><td>City</td><td><input type="textbox" name="city"/></td></tr>
                <tr><td colspan="2"><input type="Submit" value="Remove"/></td></tr>
            </table>
        </form>
        </center>
    </body>
</html>
