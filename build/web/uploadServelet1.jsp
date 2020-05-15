
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page import="com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%try{
        String root=getServletContext().getRealPath("");
        MultipartRequest mr=new MultipartRequest(request, root);
        out.println("IMAGE UPLOaded");
        
        Enumeration files=mr.getFileNames();
        String name=(String)files.nextElement();
        String filename=mr.getFilesystemName(name);
        filename=filename.replace("/images", "");
      //  String fname="C:\\Users\\Aradhaya Gupta\\Documents\\NetBeansProjects\\Criminalgram1.0\\build\\web"+filename;
       // out.println(fname);
        
       String uid= (String)session.getAttribute("aUid");
 Connection con;
PreparedStatement pstm;
 Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/criminalgram","root","");
             pstm =(PreparedStatement) con.prepareStatement(" Update  complaint set photo=?  where email=? ");            
             pstm.setString(1,filename);
             pstm.setString(2,uid);
           int  rs = pstm.executeUpdate();
            
              if(rs==1)
                        {
            
          // out.println("Record saved");
           //out.println("<br/><br/><a href=userhome.jsp><button>Back</button></a>");
                     }
           else
                             { 
               response.sendRedirect("FileComplaint.jsp");
           }
                      con.close();
                      }catch(Exception e)
                                                             {
                           out.println(e);
                       }
            

                %>
    </body>
</html>
