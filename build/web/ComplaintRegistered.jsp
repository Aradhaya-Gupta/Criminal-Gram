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
        <title>Complaint Registered</title>
    </head>
    <body>
     <%
     String Options="Options";
     String empty="";
    String suspect=request.getParameter("suspect1");
    String city=request.getParameter("city11");
    String subject=request.getParameter("subject1");
     String description=request.getParameter("description1");
    String phonenumber=request.getParameter("phonenumber1");
     String uid= (String)session.getAttribute("aUid");
     String stat="Not seen";

   // String photo=request.getParameter("photo");
   // out.print(photo);
    if(city.equals(Options) ||subject.equals(empty)||description.equals(empty)){
        
           %><center>Please enter all the Fields</center><%
        RequestDispatcher rd=request.getRequestDispatcher("FileComplaint.jsp");
        rd.include(request,response);
           }else
           {
           
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/criminalgram", "root","");
        pstm= cn.prepareStatement("INSERT INTO complaint (suspect,subject,description,phonenumber,city,email,status)VALUES (?,?,?,?,?,?,?)");
        pstm.setString(1,suspect);
        pstm.setString(2,subject);
        pstm.setString(3,description);
        pstm.setString(4,phonenumber);
        pstm.setString(5,city);
        pstm.setString(6, uid);
        pstm.setString(7, stat);
        pstm.executeUpdate();
        //String photo1="blackpic.jpg";
       // if(photo.equals("Yes"))
                   //    {
            RequestDispatcher rd=request.getRequestDispatcher("uploadpic.jsp");
           // Send.redirect("uploadpic.jsp");
        rd.include(request,response);
        /*else
                       {
            
            pstm=cn.prepareStatement("update complaint set photo=? where phonenumber=?");
            pstm.setString(6,photo1 );
            pstm.setString(4,phonenumber);
                       }*/
        %><h1>Complaint Filed</h1><%
        
               }catch(Exception e)
                                             {
                   out.println(e.toString());
               }
                   
       
      }
    %>
    
    </body>
</html>
