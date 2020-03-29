
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    </body>
</html>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
       
    </head>
    <body>
        <%
        
  
//if(ServletFileUpload.isMultipartContent(request)){
		            try {
             
             System.out.print(request.getParameter("file"));      
/*List <FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(ctx);                      
FileItem a,b,c,d,e,f ;
//a=(FileItem)items.get(0);
//b=(FileItem)items.get(1);
//c=(FileItem)items.get(2);
//d=(FileItem)items.get(3);
//e=(FileItem)items.get(4);
//f=(FileItem) items.get(5);
String pic ,fname ;
pic = f.getName();
fname = "C:\\Users\\Aradhaya Gupta\\Documents\\NetBeansProjects\\Criminalgram1.0"+pic ;
File fl=new File(fname);
c.write(fl);
Connection con;
PreparedStatement pstm;

             
   Class.forName("com.mysql.jdbc.Driver");
        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/criminalgram", "root","");
        pstm= con.prepareStatement("INSERT INTO complaint (suspect,subject,description,phonenumber,city,photo)VALUES (?,?,?,?,?,?)");
        pstm.setString(1,a.getString());
        pstm.setString(2,c.getString());
        pstm.setString(3,d.getString());
        pstm.setString(4,e.getString());
        pstm.setString(5,b.getString());
         pstm.setString(6,fname);
        int i= pstm.executeUpdate();
       
           int  rs = pstm.executeUpdate();
            
              if(rs==1)
                        {
            
           out.println("<h1>Complaint Registered</h1>");
           out.println("<br/><br/><a href=FileComplaint.jsp><button>Back</button></a>");
                     }
               con.close();*/
                      }catch(Exception e)
                                                                                          {
                           out.print(e);
                       }
            
            %>
    %>
    
    </body>
</html>
