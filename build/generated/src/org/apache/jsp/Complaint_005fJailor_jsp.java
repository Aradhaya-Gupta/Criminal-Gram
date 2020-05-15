package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.lang.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class Complaint_005fJailor_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>COMPLAIN CHECK </title>\n");
      out.write("        <style>\n");
      out.write("table, th, td {\n");
      out.write("  border: 1px solid black;\n");
      out.write("}\n");
      out.write("</style></head><body>\n");
      out.write(" \n");
      out.write("        ");

        String city= (String)session.getAttribute("city");
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/criminalgram", "root","");
        pstm= cn.prepareStatement("Select * from complaint where city =?");
        pstm.setString(1,city);
        rs= pstm.executeQuery();
         if(rs.next()){
        out.println("<table>");
out.println("<tr><th>Id</th><th>SUSPECT</th><th>SUBJECT</th><th>DESCRIPTION</th><th>PHONE NO.</th><th>Photo</th><th>Set status</th></tr>");
do{
 //String iop="C:\\Users\\Aradhaya Gupta\\Documents\\NetBeansProjects\\Criminalgram1.0\\build\\web\\images";  
//out.println(iop); 
  //  String pic=rs.getString(6);
    out.println("<tr>");
    out.println("<td>"+rs.getString(9)+"</td>");
    out.println("<td>"+rs.getString(1) +"</td>");
    
    out.println("<td>"+rs.getString(2) +"</td>");
    out.println("<td>"+rs.getString(3) +"</td>");
    out.println("<td>"+rs.getString(4) +"</td>");
    out.println("<td><img src='"+rs.getString(6)+"' >photo</a></td>");
    out.println(rs.getString(6));
    

      out.write("\n");
      out.write("   \n");
      out.write("%>\n");
      out.write("     <td><a href=\"SetStatus.jsp\">Set Status</a></td>\n");
      out.write("     ");

    //out.println("<td><img src="+pic+" style:'width=60px; height=80px'></td>");
    out.println("</tr>");
}while(rs.next());
    out.println("</table>");
       }
               else{
            out.println("NO COMPLAINTS WOW");
            
               }
               }catch(Exception e)
                                             {
                   out.println(e.toString());
               }
                                       
        
      out.write("\n");
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
