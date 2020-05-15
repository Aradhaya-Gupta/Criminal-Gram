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
        <title>Add Criminal</title>
        <style>
            input{
                background-color: red;
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
        <form action="AddCriminal_Backend.jsp" method="POST">
            <h3>Add Criminal Page</h3>
            <table style="border-style: solid; border-color: blue; background-color: plum">
                <tr><td>Criminal Name</td><td><input type="text" name="cname" placeholder="Enter Name"/></td></tr>
                <tr><td>Crime</td><td><input type="text" name="crime" placeholder="Enter Crime"/></td></tr>
                <tr> <td>age</td><td><input type="number" name="age" placeholder="Enter Age" min="1" /></td></tr>
                 <tr><td>Arrival date</td><td><input type="date" name="adate"/></td></tr>
                  <tr><td>Departure date</td><td><input type="date" name="ddate"/></td></tr>
                  
                   <tr>
    <td>City</td>
<td> <select name="city11" id="city11" placeholder="City">
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
