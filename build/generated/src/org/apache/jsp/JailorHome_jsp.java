package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class JailorHome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Jailor Home</title>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"C:\\Users\\Aradhaya Gupta\\Documents\\NetBeansProjects\\Criminalgram1.0\\build\\web\\city-police-station-department-building-260nw-360832229.jpg\">\n");
      out.write("        <img src=\"3.jpg\" style=\"width: 100%; height:150px\"/>\n");
      out.write("        <table style=\"width: 100%; border-style: solid; background-color: bisque\">\n");
      out.write("            <tr>\n");
      out.write("                <td><a href=\"Complaint_Jailor.jsp\" target=\"work\">Check Complaints</a></td>\n");
      out.write("                <td><a href=\"ChangePassword_Jailor.jsp\">Change Password</a></td>\n");
      out.write("                <td><a href =\"Criminals.jsp\">Criminals Data</a></td>>\n");
      out.write("                <td><a href=\"SignOut_Admin.jsp\">Sign Out</a></td>\n");
      out.write("           \n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    <center>    <iframe name=\"work\" style=\"width: 500px; height: 500px; border-style: hidden\"></iframe>\n");
      out.write("        </center> \n");
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
