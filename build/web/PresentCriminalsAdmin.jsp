<%-- 
    Document   : ComplaintStatus
    Created on : May 12, 2020, 10:03:56 PM
    Author     : Aradhaya Gupta
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Present Criminals</title>
         <style>
table, th, td {
  border: 1px solid black;
}
</style>
    </head>
    <body bgcolor="white">
        <%
        try{
        Connection cn;
        ResultSet rs;
        PreparedStatement pstm;
                Class.forName("com.mysql.jdbc.Driver");
                cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/criminalgram", "root","");
                pstm= cn.prepareStatement("select criminal_name,crime,age,arrival_date,release_date,id,city from criminals");
                 rs= pstm.executeQuery();
         if(rs.next()){
        out.println("<table>");
out.println("<tr><th>Criminal Name</th><th>crime</th><th>age</th><th>arrival time</th><th>release time</th><th>Id</th><th>City</th></tr>");
do{
    out.println("<tr>");
    out.println("<td>"+rs.getString(1) +"</td>");
        out.println("<td>"+rs.getString(2) +"</td>");
        out.println("<td>"+rs.getInt(3) +"</td>");
        out.println("<td>"+rs.getDate(4) +"</td>");
        out.println("<td>"+rs.getDate(5) +"</td>");
        out.println("<td>"+rs.getInt(6) +"</td>");
         out.println("<td>"+rs.getString(7) +"</td>");

    out.println("</tr>");
}while(rs.next());
    out.println("</table>");
       }
               else{
            out.println("Criminal Free Haryana");
            
               }
               }catch(Exception e)
                                             {
                   out.println(e.toString());
               }
          
                 
   %>             
    </body>
</html>
