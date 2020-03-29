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
        <title>User Registered</title>
    </head>
    <body>
     <%
     String Options="Options";
     String empty="";
    String name=request.getParameter("aUid");
    String id=request.getParameter("eid");
    String password=request.getParameter("pass");
     String conpass=request.getParameter("cPass");
    String city=request.getParameter("city");
    if(name.equals(empty) ||id.equals(empty) ||password.equals(empty)||conpass.equals(empty)||city.equals(Options)){
        
           %><center>Please enter all the Fields</center><%
        RequestDispatcher rd=request.getRequestDispatcher("UserRegisteration.jsp");
        rd.include(request,response);
           }else
                                           {
    if(password.equals(conpass))
       {
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/criminalgram", "root","");
        pstm= cn.prepareStatement("INSERT INTO user (username,emailid,password,city)VALUES (?,?,?,?)");
        pstm.setString(1,name);
        pstm.setString(2, id);
        pstm.setString(3, password);
        pstm.setString(4, city);
        int i= pstm.executeUpdate();
        %><h1>User Registered</h1><%
               }catch(Exception e)
                                             {
                   out.println(e.toString());
               }
                   }
        else
                   {
        %><center>enter same password and confirm password</center><%
        RequestDispatcher rd=request.getRequestDispatcher("UserRegisteration.jsp");
        rd.include(request,response);
        }
       }
    %>
    
    </body>
</html>
