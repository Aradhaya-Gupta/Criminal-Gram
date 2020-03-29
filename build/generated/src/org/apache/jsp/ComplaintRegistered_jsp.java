package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.xml.ws.Response;
import java.sql.ResultSet;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.File;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.util.List;

public final class ComplaintRegistered_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

        
   DiskFileItemFactory fact=new DiskFileItemFactory();
 ServletFileUpload upl=new ServletFileUpload(fact);
try{
                 
List items = upl.parseRequest(request);
 
FileItem a,b,c,d,e,f ;
a=(FileItem)items.get(0);
b=(FileItem)items.get(1);
c=(FileItem)items.get(2);
d=(FileItem)items.get(3);
e=(FileItem)items.get(4);
f=(FileItem) items.get(5);
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
               con.close();
                      }catch(Exception e)
                                                                                          {
                           out.print(e);
                       }
            
            
      out.write("\n");
      out.write("    %>\n");
      out.write("    \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
