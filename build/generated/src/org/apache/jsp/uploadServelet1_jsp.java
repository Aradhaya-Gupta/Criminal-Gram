package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Enumeration;
import java.lang.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import com.oreilly.servlet.MultipartRequest;

public final class uploadServelet1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
try{
        String root=getServletContext().getRealPath("images");
        MultipartRequest mr=new MultipartRequest(request, root);
        out.println("IMAGE UPLOaded");
        
        Enumeration files=mr.getFileNames();
        String name=(String)files.nextElement();
        String filename=mr.getFilesystemName(name);
        System.out.println(filename);
      //  String fname="C:\\Users\\Aradhaya Gupta\\Documents\\NetBeansProjects\\Criminalgram1.0\\build\\web"+filename;
       // out.println(fname);
        String fname=filename;
        
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
