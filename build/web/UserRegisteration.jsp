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
        <title>User Registeration</title>
        <style>
            input{
                background-color: radiant orchid;
                text-align: center;
                text-decoration: blink;
                font-size : 5;
                font-style: inherit;
                font-color:Black;
                
            }
            body { background-image: url("96.jpg"); background-repeat: no-repeat; background-size:100%; } 
        </style>
        
    </head>
    <body><center>

        
        <form action="UserRegistered.jsp">
         <font size="15" color="Black" face="Comin sans MS"  <h1>User Registration Page</h1></font>
            <table style="border-style: solid; border-color: blue; background-color: Emerald">
                <tr><td>User Name</td><td><input type="text" name="aUid"/></td></tr>
                <tr> <td>Password</td><td><input type="password" name="pass"/></td></tr>
                 <tr><td>Confirm Password</td><td><input type="password" name="cPass"/></td></tr>
                  <tr><td>Email Id</td><td><input type="email" name="eid"/></td></tr>
                 <tr>
    <td>City</td>
<td> <select name=city id="city" placeholder="City">
<option>Options</option>
<option>Ambala</option>
<option>Kaithal</option>
<option>Kurukshetra</option>
<option>Jind</option>
<option>Narwana</option>
<option>Jakhal</option>
<option>Karnal</option>
<option>Panipat</option>
<option>Sonipat</option>
<option>Jajjhar</option>
</select>
</td>
</tr>
                <tr><td colspan="2"><input type="Submit" value="Submit"/></td></tr>
            </table>
            
            
        </form>
        </center>
    </body>
</html>
