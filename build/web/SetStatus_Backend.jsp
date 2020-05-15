<%-- 
    Document   : JailorRegistered
    Created on : Feb 8, 2020, 8:18:46 PM
    Author     : Aradhaya Gupta
--%>
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
        <title>Set Status</title>
    </head>
    <body>
     <%
    String id=request.getParameter("id");
     String st=request.getParameter("status");
     
    String empty="";
    String options="Options";
       if(id.equals(empty)||st.equals(options)){
        %><center>Please enter all the field</center><%
        RequestDispatcher rd=request.getRequestDispatcher("SetStatus.jsp");
        rd.include(request,response);
        
    }
       else {
       int id1=Integer.parseInt(id);
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/criminalgram", "root","");
        pstm= cn.prepareStatement("update complaint set status =? where id=?");
        pstm.setString(1,st);
        pstm.setInt(2,id1);
       
        pstm.executeUpdate();
        %><h1>Status Changed</h1><%
        
               }catch(Exception e)
                                             {
                   out.println(e.toString());
               }
               
  }    %>
    
    </body>
</html>
