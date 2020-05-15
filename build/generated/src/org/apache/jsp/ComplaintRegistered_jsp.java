package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.lang.*;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>User Registered</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("     ");

     String Options="Options";
     String empty="";
    String suspect=request.getParameter("suspect");
    String city=request.getParameter("city");
    String subject=request.getParameter("subject");
     String description=request.getParameter("description");
    String phonenumber=request.getParameter("phonenumber");
    if(city.equals(Options) ||subject.equals(empty)||description.equals(empty)){
        
           
      out.write("<center>Please enter all the Fields</center>");

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
        pstm= cn.prepareStatement("INSERT INTO complaint (suspect,subject,description,phonenumber,city)VALUES (?,?,?,?,?)");
        pstm.setString(1,suspect);
        pstm.setString(2,subject);
        pstm.setString(3,description);
        pstm.setString(4,phonenumber);
        pstm.setString(5,city);
        int i= pstm.executeUpdate();
        
      out.write("<h1>Complaint Filed</h1>");

               }catch(Exception e)
                                             {
                   out.println(e.toString());
               }
                   
       
       }
    
      out.write("\n");
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
