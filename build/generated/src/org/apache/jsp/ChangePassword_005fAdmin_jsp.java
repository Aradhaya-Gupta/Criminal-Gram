package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ChangePassword_005fAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            input{\n");
      out.write("                background-color: bisque;\n");
      out.write("                border-color: black;\n");
      out.write("            }\n");
      out.write("            td{\n");
      out.write("                text-align: center;\n");
      out.write("                text-decoration: blink;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <h3>Change Password Admin</h3>\n");
      out.write("        <form action=\"ChangePasswordConfirmAdmin.jsp\">\n");
      out.write("        <br><br>\n");
      out.write("        <table style=\"border-style: solid; border-color:blue; background-color: aqua\">\n");
      out.write("            <tr><td>Old Password</td><td><input type=\"Password\" name=\"oPass\"/></td></tr>\n");
      out.write("            <tr><td>New Password</td><td><input type=\"Password\" name=\"nPass\"></td></tr>\n");
      out.write("            <tr><td>Confirm Password</td><td><input type=\"Password\" name=\"cPass\"/></td></tr>\n");
      out.write("            <tr><td colspan=\"2\"><input type=\"Submit\" value=\"Click here\" href=\"ChangePasswordConfirm.jsp\"/></td></tr>\n");
      out.write("        </table>\n");
      out.write("        </form>\n");
      out.write("        </center>\n");
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
