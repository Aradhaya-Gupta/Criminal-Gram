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
        <title>Complaint status</title>
         <style>
table, th, td {
  border: 1px solid black;
}
    


</style>
    </head>
    <body BGCOLOR="WHITE">
        <%
        try{
         String uid= (String)session.getAttribute("aUid");
      String sharma;
        Connection cn;
        ResultSet rs;
                PreparedStatement pstm;
                Class.forName("com.mysql.jdbc.Driver");
                cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/criminalgram", "root","");
                pstm= cn.prepareStatement("select subject,status from complaint where email=?");
                 pstm.setString(1, uid);
                 //pstm.setString(2, status);
                 rs= pstm.executeQuery();
         if(rs.next()){
        out.println("<table>");
out.println("<tr><th>Complaint</th><th>Status</th></tr>");
do{
    out.println("<tr>");
    out.println("<td>"+rs.getString(1) +"</td>");
        out.println("<td>"+rs.getString(2) +"</td>");

    out.println("</tr>");
}while(rs.next());
    out.println("</table>");
       }
               else{
            out.println("NO COMPLAINTS FILED");
            
               }
               }catch(Exception e)
                                             {
                   out.println(e.toString());
               }
          
                 
   %>             
    </body>
</html>
