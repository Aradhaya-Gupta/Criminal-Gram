<%-- 
    Document   : JailorRegistered
    Created on : Feb 8, 2020, 8:18:46 PM
    Author     : Aradhaya Gupta
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>criminal deleted</title>
    </head>
    <body>
     <%
     
    String id1=request.getParameter("id");
    String empty="";
    if(id1.equals(empty))
               {
          %><center>Enter id field</center><%
        RequestDispatcher rd=request.getRequestDispatcher("DeleteCriminalAdmin.jsp");
        rd.include(request,response);
    }
       else{
         int id=Integer.parseInt(id1); 
          Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
         Class.forName("com.mysql.jdbc.Driver");
                cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/criminalgram", "root","");
                pstm= cn.prepareStatement("select criminal_name from criminals where id=?");
                 pstm.setInt(1,id);
                 //pstm.setString(2, status);
                 rs= pstm.executeQuery();
         if(rs.next()){         
       
        try{
        pstm= cn.prepareStatement("Delete from criminals where id=?");
        pstm.setInt(1, id);
        pstm.executeUpdate();
        %><h1>Criminal deleted</h1><%
        
               }catch(Exception e)
                                             {
                   out.println(e.toString());
               }
               }
                                 else{
                     out.println("Enter Valid id not exist");
                                 }
            } 
    %>
    
    </body>
</html>
