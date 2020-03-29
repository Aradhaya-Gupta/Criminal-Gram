0<%-- 
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
                background-color: aqua;
                text-align: center;
                text-decoration: blink;
            }
        </style>
    </head>
    <body><center>

        
        <form action="ComplaintRegistered.jsp" enctype="multipart/form-data" method="POST">
            <h3>Complaint Registration Page</h3>
            <table style="border-style: solid; border-color: blue; background-color: blanchedalmond">
                <tr><td>Suspect Name</td><td><input type="text" name="suspect" placeholder="IF KNOWN"/></td></tr>
                 <tr><td>City</td><td><input type="text" name="city" placeholder="City"/></td></tr>
                <tr><td>Subject</td><td><input type="text" name="subject" placeholder="MANDATORY"/></td></tr>
                <tr> <td>Description</td><td><input type="text" name="description" placeholder="MANDATORY" /></td></tr>
                 <tr><td>Phone Number</td><td><input type="text" name="phonenumber"/></td></tr>
                  <tr><td>Photo</td><td><input type="file" name="file" size="50" /></td></tr>
              
    <td>City</td>
<td> <select name=city id="city" placeholder="City">
<option>MANDATORY</option>
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
