package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdminLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Admin Login</title>\n");
      out.write("        <style>\n");
      out.write("            input{\n");
      out.write("                background-color: aqua;\n");
      out.write("                text-align: center;\n");
      out.write("                text-decoration: blink;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body background-image: criminal.webp;\n");
      out.write("  background-size: cover;\n");
      out.write("  margin: 0;\n");
      out.write("  background-repeat: no-repeat;\n");
      out.write("  background-position: 0 0;\n");
      out.write("  transition: 2s cubic-bezier(0.645, 0.045, 0.355, 1);\n");
      out.write("}\n");
      out.write("\n");
      out.write("#titles {\n");
      out.write("  margin: 0 auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write("h1 {\n");
      out.write("  color: #ffffff;\n");
      out.write("  letter-spacing: 1.4px;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#firstLine {\n");
      out.write("  margin-top: 120px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#secondLine {\n");
      out.write("  visibility: hidden;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".movedBackground {\n");
      out.write("  background-position: 0 40%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#entryBox {\n");
      out.write("  visibility: hidden;\n");
      out.write("  margin: 5% auto;\n");
      out.write("  display: inline-block;\n");
      out.write("  width: 30%;\n");
      out.write("  margin-left: 35.5%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input {\n");
      out.write("  letter-spacing: 0.5px;\n");
      out.write("  width: 80%;\n");
      out.write("  background-color: rgba(163, 163, 163, 0);\n");
      out.write("  border: 1px solid rgba(255, 255, 255, 1);\n");
      out.write("  color: #f7f7f7;\n");
      out.write("  padding: 10px 10px;\n");
      out.write("  border-radius: 10px;\n");
      out.write("  transition: 0.5s;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input::placeholder {\n");
      out.write("  color: rgba(242, 242, 242, 0.8);\n");
      out.write("}\n");
      out.write("\n");
      out.write("button {\n");
      out.write("  float: right;\n");
      out.write("  letter-spacing: 0.5px;\n");
      out.write("  width: 20%;\n");
      out.write("  background-color: rgba(119, 119, 119, 0);\n");
      out.write("  color: rgba(242, 242, 242, 0.8);\n");
      out.write("  border: 1px solid rgba(255, 255, 255, 1);\n");
      out.write("  padding: 10px 10px;\n");
      out.write("  border-radius: 10px;\n");
      out.write("  transition: 0.5s;\n");
      out.write("}\n");
      out.write("\n");
      out.write("button:hover {\n");
      out.write("  color: #f2f2f2;\n");
      out.write("  cursor: pointer;\n");
      out.write("  border: 1px solid rgba(255, 255, 255, 0);\n");
      out.write("}\n");
      out.write("\n");
      out.write("button:focus {\n");
      out.write("    outline: none; \n");
      out.write("}\n");
      out.write("\n");
      out.write("input:focus {\n");
      out.write("    outline: none;\n");
      out.write("    border: 1px solid rgba(255, 255, 255, 0);\n");
      out.write("}\n");
      out.write("\n");
      out.write("hr {\n");
      out.write("    visibility: hidden;\n");
      out.write("    margin: 0 auto;\n");
      out.write("    margin-top: 40px;\n");
      out.write("    width: 20%;\n");
      out.write("    border: 0;\n");
      out.write("    height: 1px;\n");
      out.write("    background-image: linear-gradient(to right, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.75), rgba(255, 255, 255, 0));\n");
      out.write("}\n");
      out.write("\n");
      out.write("#ready {\n");
      out.write("  position: relative;\n");
      out.write("  margin: 0 auto;\n");
      out.write("  margin-top: -80px;\n");
      out.write("  z-index: -10;\n");
      out.write("  visibility: hidden;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#readyText {\n");
      out.write("    transition: 1s;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#navBottom {\n");
      out.write("  visibility: hidden;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar-brand {\n");
      out.write("  font-weight: lighter;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#rocketShip {\n");
      out.write("  fill: white;\n");
      out.write("  visibility: hidden;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#lineDrawing {\n");
      out.write("  width: 250px;\n");
      out.write("  margin: 0 auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#afterAnimationHeader {\n");
      out.write("  margin-top: 400px;\n");
      out.write("}\n");
      out.write("><center>\n");
      out.write("\n");
      out.write("        \n");
      out.write("        <form action=\"AdminLoginCheck.jsp\">\n");
      out.write("            <h3>Admin Login Page</h3>\n");
      out.write("            <table style=\"border-style: solid; border-color: blue; background-color: blanchedalmond\">\n");
      out.write("                <tr><td>Admin User Id</td><td><input type=\"text\" name=\"aUid\"/></td></tr>\n");
      out.write("                <tr> <td>Password</td><td><input type=\"password\" name=\"pass\"/></td></tr>\n");
      out.write("                <tr><td colspan=\"2\"><input type=\"Submit\" value=\"Sign in\"/></td></tr>\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("            \n");
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
