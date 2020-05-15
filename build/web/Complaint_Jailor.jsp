<%-- 
    Document   : AdminLoginCheck
    Created on : Nov 29, 2016, 5:02:39 PM
    Author     : 
--%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COMPLAIN CHECK </title>
        <style>
table, th, td {
  border: 1px solid black;
}
</style></head><body bgcolor="White">
 
        <%
        String city= (String)session.getAttribute("city");
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/criminalgram", "root","");
        pstm= cn.prepareStatement("Select * from complaint where city =?");
        pstm.setString(1,city);
        rs= pstm.executeQuery();
         while(rs.next()){
        out.println("<table>");
out.println("<tr><th>Id</th><th>SUSPECT</th><th>SUBJECT</th><th>DESCRIPTION</th><th>PHONE NO.</th><th>Photo</th><th>Set status</th></tr>");

 String iop="C:\\Users\\Aradhaya Gupta\\Documents\\NetBeansProjects\\Criminalgram1.0\\build\\web\\";  
//out.println(iop); 
  //  String pic=rs.getString(6);
    out.println("<tr>");
    out.println("<td>"+rs.getString(9)+"</td>");
    out.println("<td>"+rs.getString(1) +"</td>");
    
    out.println("<td>"+rs.getString(2) +"</td>");
    out.println("<td>"+rs.getString(3) +"</td>");
    out.println("<td>"+rs.getString(4) +"</td>");
    String str= rs.getString(6);%>
   <td><img src=<%=str%> height="40px" width="40px"></td>
        <td><a href="SetStatus.jsp">Set Status</a></td>

   <%
    //out.println(str);
 }
 }
        catch(Exception e)
                                             {
                   out.println(e.toString());
               }
                                       
       
%>
   
     <%
    //out.println("<td><img src="+pic+" style:'width=60px; height=80px'></td>");
    out.println("</tr>");
    %>
       
               
            
               
    </body>
</html>
