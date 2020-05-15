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
        <title>File Complaint</title>
        <style>
            input{
                background-color: yellow;
                text-align: center;
                text-decoration: blink;
            }
                
body {
  background-image: url('help.jpg');
  background-repeat: no-repeat;
  background-size: 100%;
}

        </style>
    </head>
    <body><center>

        
        <form action="ComplaintRegistered.jsp" method="POST">
            <h3>Complaint Registration Page</h3>
            <table style="border-style: solid; border-color: blue; background-color: fuchsia">
                <tr><td>Suspect Name</td><td><input type="text" name="suspect1" placeholder="IF KNOWN"/></td></tr>
                <tr><td>Subject</td><td><input type="text" name="subject1" placeholder="MANDATORY"/></td></tr>
                <tr> <td>Description</td><td><input type="textarea" name="description1" placeholder="MANDATORY" /></td></tr>
                 <tr><td>Phone Number</td><td><input type="text" name="phonenumber1"/></td></tr>
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
