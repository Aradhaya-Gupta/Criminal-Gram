<%-- 
--%>

<%@page import="java.lang.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Password Jailor</title>
    </head>
    <body>
        <%
        String uid= (String)session.getAttribute("aUid");
        String pass= (String)session.getAttribute("pass");
        String oPass= request.getParameter("oPass");
        String newPass= request.getParameter("nPass");
        String conPass= request.getParameter("cPass");
        //out.println(uid+pass+oPass+newPass+conPass);
        if(newPass.equals(conPass)){//out.println(uid+pass+oPass+newPass+conPass);
        if(newPass.equals(conPass) && pass.equals(oPass)){
                Connection cn;
                PreparedStatement pstm;
                Class.forName("com.mysql.jdbc.Driver");
                cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/criminalgram", "root","");
                pstm= cn.prepareStatement("Update user set password=? where emailid=?");
                pstm.setString(1, newPass);
                pstm.setString(2, uid);
                pstm.executeUpdate();
               // out.println("Password changed successfully");
               //out.print("Login Again");
               //session.invalidate();
                RequestDispatcher rd=request.getRequestDispatcher("SignOut_Admin.jsp");
                response.sendRedirect("SignOut_Admin.jsp");
                //rd.include(request, response);
        
        }
        else
                       {
                   %><centre>Password does not match</centre><%
            RequestDispatcher rd=request.getRequestDispatcher("ChangePassword_User.jsp");
            rd.include(request, response);
                       }
               }
               else{
            out.print("Please enter same new password and confirm password");
            RequestDispatcher rd=request.getRequestDispatcher("ChangePassword_User.jsp");
            rd.include(request, response);
               }
                   
        %>
        
    </body>
</html>
