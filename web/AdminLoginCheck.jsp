<%-- 
    Document   : AdminLoginCheck
    Created on : Nov 29, 2016, 5:02:39 PM
    Author     : ict
--%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html> <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login Check</title>
    </head> <body>
        <%
        String uid= request.getParameter("aUid");
        String pass= request.getParameter("pass");
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/criminalgram", "root","");
        pstm= cn.prepareStatement("Select * from Admin where id=? and password=?");
        pstm.setString(1, uid);
        pstm.setString(2, pass);
        rs= pstm.executeQuery();
        if(rs.next()){
        session.setAttribute("aUid", uid);
        session.setAttribute("pass", pass);
            response.sendRedirect("AdminHome.jsp");
        }else{
            out.println("User Id or Password is not correct");
        RequestDispatcher pw=request.getRequestDispatcher("AdminLogin.jsp");
        pw.include(request,response);}
               }catch(Exception e)                                {
                   out.println(e.toString());
               }     
        %>
    </body> </html>
