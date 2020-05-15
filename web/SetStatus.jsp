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
        <title>set status </title>
        <style>
            input{
                background-color: plum;
                text-align: center;
                text-decoration: blink;
            }
        </style>
    </head>
    <body><center>

        
        <form action="SetStatus_Backend.jsp">
            <h3>Set Status</h3>
            <table style="border-style: solid; border-color: blue; background-color: fuchsia">
                <tr><td>Complaint Id</td><td> <input type="number" name="id" min="1"></td>
                <tr><td>Choose Status</td><td> <select name="status" id="status" placeholder="Status">
<option>Options</option>
<option>Under Progress</option>
<option>Done</option>
</select>
</td></tr>
                <tr><td colspan="2"><input type="Submit" value="changesttus"/></td></tr>
            </table>
            
            
        </form>
        </center>
    </body>
</html>