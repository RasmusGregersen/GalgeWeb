package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("<head><title>Login</title>\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\"\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<p2>Galgeleg Statistik</p2>\n");
      out.write("<br>\n");
      out.write("<p1>Gruppe 7 - 62596 Distribuerede systemer</p1>\n");
      out.write("<div>\n");
      out.write("  <form method=\"post\" action=\"login.jsp\">\n");
      out.write("    <label for=\"fname\">Brugernavn</label>\n");
      out.write("    <input type=\"text\" id=\"brugerid\" name=\"brugernavn\" placeholder=\"Dit studienummer\">\n");
      out.write("\n");
      out.write("    <label for=\"lname\">Adgangskode</label>\n");
      out.write("    <input type=\"password\" id=\"pwd\" name=\"adgangskode\" placeholder=\"Din personlige kode til kurset\">  \n");
      out.write("    <input type=\"submit\" value=\"Gå videre\">\n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("</body>\n");
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
