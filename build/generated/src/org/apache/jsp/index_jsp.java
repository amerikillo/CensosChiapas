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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

    HttpSession sesion = request.getSession();
    String info=null;
        

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <title>Ingreso Censos Chiapas</title>\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <!-- Bootstrap -->\r\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" media=\"screen\">\r\n");
      out.write("    <link href=\"css/login.css\" rel=\"stylesheet\" media=\"screen\">\r\n");
      out.write("    <script type=\"text/javascript\" src=\"css/MD5.js\"></script>\r\n");
      out.write("    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("    <!--[if lt IE 9]>\r\n");
      out.write("      <script src=\"../../assets/js/html5shiv.js\"></script>\r\n");
      out.write("      <script src=\"../../assets/js/respond.min.js\"></script>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("  <div class=\"container\">\r\n");
      out.write("      <!--div class=\"row marco\" >\r\n");
      out.write("          <div class=\"col-md-4\">.col-md-4</div>\r\n");
      out.write("          <div class=\"col-md-4\">.col-md-4</div>\r\n");
      out.write("          <div class=\"col-md-4\">.col-md-4</div>\r\n");
      out.write("      </div-->\r\n");
      out.write("         \r\n");
      out.write("      <form name =\"form\" id=\"forma-login\" class=\"marco\" action=\"login\" method=\"post\" >\r\n");
      out.write("        <!--label for=\"username\" class=\"uname\" data-icon=\"u\" > Your email or username </label-->\r\n");
      out.write("       <div class=\"row\">\r\n");
      out.write("        <div class=\"col-md-4\"><img src=\"imagenes/GNKL_Small.JPG\" ></div>\r\n");
      out.write("        <div class=\"col-md-8\"><h2>Validar Usuario</h2></div>\r\n");
      out.write("        \r\n");
      out.write("        </div>\r\n");
      out.write("            \r\n");
      out.write("           \r\n");
      out.write(" <div class=\"input-group\">\r\n");
      out.write("  <span class=\"input-group-addon\"><label class=\"glyphicon glyphicon-user\"></label>\r\n");
      out.write("  </span>\r\n");
      out.write("     <input type=\"text\" name=\"nombre\" id=\"nombre\" class=\"form-control\" placeholder=\"Introduzca Nombre de Usuario\">\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"input-group\">\r\n");
      out.write("  <span class=\"input-group-addon\"><label class=\"glyphicon glyphicon-lock\"></label>\r\n");
      out.write("  </span>\r\n");
      out.write("  \r\n");
      out.write("    <input type=\"password\" name=\"pass\" id=\"pass\" onkeyup=\"this.form.hash.value = MD5(this.form.pass.value);\" class=\"form-control\"  placeholder=\"Introduzca Contrase&ntilde;a V&aacute;lida\">\r\n");
      out.write("</div>\r\n");
      out.write("       \r\n");
      out.write("<div>\r\n");
      out.write("     ");

    
     info = (String)session.getAttribute("info");
     //out.print(info);
     if( !(info==null || info.equals(null)) )
     {
     
      out.write("\r\n");
      out.write("     <div>Datos inv&aacute;lidos, intente otra vez...</div>\r\n");
      out.write("     ");

     }
     session.invalidate();
     
      out.write("\r\n");
      out.write("<input type=\"hidden\" name=\"hash\" value=\"\" class=\"form-control\">\r\n");
      out.write("<input type=\"hidden\" name=\"ban\" value=\"0\" class=\"form-control\">\r\n");
      out.write("</div>\r\n");
      out.write("  <br>              \r\n");
      out.write("            <button name=\"envio\" class=\"btn btn-primary btn-lg btn-block\" type=\"submit\">Entrar</button>\r\n");
      out.write("           <br>\r\n");
      out.write("        </form>\r\n");
      out.write("<br>\r\n");
      out.write("\r\n");
      out.write("   \r\n");
      out.write("  \r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n");
      out.write("    <script src=\"//code.jquery.com/jquery.js\"></script>\r\n");
      out.write("    <!-- Include all compiled plugins (below), or include individual files as needed -->\r\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
