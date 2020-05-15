<%-- 
    Document   : CRIMINAL ADDED
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
        <title>Criminal Added</title>
    </head>
    <body>
     <%
    String Options="Options";
    String empty="";
    String criminal_name=request.getParameter("cname");
    String city=request.getParameter("city11");
    String crime=request.getParameter("crime");
    String ardate=request.getParameter("adate");
    String ddate1=request.getParameter("ddate");
    String age1=request.getParameter("age");
    if(city.equals(Options) ||criminal_name.equals(empty)||crime.equals(empty)||ardate.equals(empty)||ddate1.equals(empty)||age1.equals(empty)){
        
           %><center>Please enter all the Fields</center><%
        RequestDispatcher rd=request.getRequestDispatcher("AddCriminal.jsp");
        rd.include(request,response);
           }else
           {
        int age=Integer.parseInt(age1);  
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/criminalgram", "root","");
        pstm= cn.prepareStatement("INSERT INTO criminals (criminal_name,crime,age,arrival_date,release_date,city)VALUES (?,?,?,?,?,?)");
        pstm.setString(1,criminal_name);
        pstm.setString(2,crime);
        pstm.setInt(3,age);
        pstm.setDate(4,java.sql.Date.valueOf(ardate));
        pstm.setDate(5,java.sql.Date.valueOf(ddate1));
        pstm.setString(6,city);
        pstm.executeUpdate();
        %><h1>Criminal Added</h1><%
        
               }catch(Exception e)
                                             {
                   out.println(e.toString());
               }
      }
    %>
    
    </body>
</html>
