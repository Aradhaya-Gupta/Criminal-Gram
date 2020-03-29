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
        <title>Jailor Registered</title>
    </head>
    <body>
     <%
    String name=request.getParameter("name");
    String userid=request.getParameter("userId");
    String city=request.getParameter("city");
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/criminalgram", "root","");
        pstm=cn.prepareStatement("Select name,userid,city from jailor where name=? and userid=? and city=?");
        pstm.setString(1,name);
        pstm.setString(2, userid);
        pstm.setString(3, city);
        rs=pstm.executeQuery();
        if(rs.next())
                       {
        pstm= cn.prepareStatement("delete from jailor where name=? and userid=? and city=?");
        pstm.setString(1,name);
        pstm.setString(2, userid);
        pstm.setString(3, city);
        int i= pstm.executeUpdate();
             out.println("Jailor Removed");  }
        else
                       {
            out.println("record not found please enter valid records");
        }
        
                      
               }catch(Exception e)
                                             {
                   out.println(e.toString());
               }
                         
    %>

    </body>
</html>
