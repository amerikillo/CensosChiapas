package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import clasesJava.*;
import conn.*;

public final class indexMain_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=iso-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
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
 
    //----------------------------------Modulo de Sesiones
    HttpSession sesion = request.getSession();
    String val = "", user = "", id = "";
    session.getId();
    if (sesion.getAttribute("valida") != null) {
        val = (String) sesion.getAttribute("valida");
        user = (String) sesion.getAttribute("nombre");
        id = (String) sesion.getAttribute("id");
        //out.print(user+" "+val+" "+id);
    }
    if (!val.equals("valida")) {
        response.sendRedirect("index.jsp");
 }
//out.print (val+user+id+session.getId());
//--------------------------------------------------------

   
   String date="";
   
   int tam_cen=0,tam_pic=0,tam_inv=0;
   Fechas objF= new Fechas();
   ClasesProc objR= new ClasesProc();
   date=objF.regresaFecha();
   tam_cen=objR.regresaCont();
 

 

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>:: MENU CENSOS ::</title>\r\n");
      out.write("<script language=\"javascript\" src=\"js/code_js.js\"></script>\r\n");
      out.write("<script src=\"Scripts/swfobject_modified.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" media=\"screen\">\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write(".neg {\r\n");
      out.write("\tfont-family: Arial, Helvetica, sans-serif;\r\n");
      out.write("\tfont-size: 10px;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("\tcolor: #666;\r\n");
      out.write("}\r\n");
      out.write(".der {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tfont-family: Arial, Helvetica, sans-serif;\r\n");
      out.write("\tfont-size: 16px;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("}\r\n");
      out.write(".center1 {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tfont-family: Arial, Helvetica, sans-serif;\r\n");
      out.write("\tfont-size: 12px;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("}\r\n");
      out.write(".colorin {\r\n");
      out.write("\tcolor: #900;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body onLoad=\"show5()\">\r\n");
      out.write("<table width=\"566\" height=\"218\" border=\"1\" align=\"center\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td><table width=\"550\" border=\"0\">\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td colspan=\"3\" align=\"left\"><img src=\"imagenes/GNKL_Small.JPG\" /></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td colspan=\"3\" align=\"center\"><img src=\"imagenes/censos_tit.png\"  />  </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td colspan=\"3\" class=\"der\">Fecha:&nbsp;");
      out.print(date);
      out.write("&nbsp;&nbsp;&nbsp;&nbsp;Hora:<span id=\"liveclock\"></span>\r\n");
      out.write("            <br> Bienvenido <label class=\"glyphicon glyphicon-user\"></label>&nbsp;&nbsp;");
      out.print(user);
      out.write("\r\n");
      out.write("        </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("          <td align=\"center\">&nbsp;</td>\r\n");
      out.write("          <td width=\"250\" align=\"center\"><h4><a href=\"consultaCensosR.jsp\"><strong>Consulta de Censos y Pictogr&aacute;ficos</strong></a></h4></td>\r\n");
      out.write("        <td align=\"center\">&nbsp;<!--h4><a href=\"menu_inven.jsp\"><strong>Consulta Pictogr&aacute;ficos</strong></a></h4--></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("          <td class=\"center1\">&nbsp;</td>\r\n");
      out.write("        <td align=\"center\">Total de Censos:<span class=\"colorin\"> ");
      out.print(tam_cen);
      out.write("</span></td>\r\n");
      out.write("        <td align=\"center\">&nbsp;<!--span class=\"center1\">Total de Pictogr&aacute;ficos:<span class=\"colorin\"> ");
//=tam_inv
      out.write("</span></span--></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("       <tr>\r\n");
      out.write("        <td width=\"198\" >&nbsp;</td>\r\n");
      out.write("        <td width=\"128\" align=\"center\" ><form action=\"indexMain.jsp\" method=\"post\" name=\"form\"><input name=\"submit\" type=\"submit\"  value=\"Actualizar\" class=\"btn btn-primary btn-md btn-block\" /></form></td>\r\n");
      out.write("        <td width=\"210\" >&nbsp;</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td colspan=\"3\" align=\"center\"><object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" width=\"369\" height=\"185\" id=\"FlashID\" title=\"Veracruz\">\r\n");
      out.write("          <param name=\"movie\" value=\"imagenes/flash1_ver.swf\" />\r\n");
      out.write("          <param name=\"quality\" value=\"high\" />\r\n");
      out.write("          <param name=\"wmode\" value=\"opaque\" />\r\n");
      out.write("          <param name=\"swfversion\" value=\"6.0.65.0\" />\r\n");
      out.write("          <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you donât want users to see the prompt. -->\r\n");
      out.write("          <param name=\"expressinstall\" value=\"Scripts/expressInstall.swf\" />\r\n");
      out.write("          <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->\r\n");
      out.write("          <!--[if !IE]>-->\r\n");
      out.write("          <object type=\"application/x-shockwave-flash\" data=\"imagenes/flash1_ver.swf\" width=\"369\" height=\"185\">\r\n");
      out.write("            <!--<![endif]-->\r\n");
      out.write("            <param name=\"quality\" value=\"high\" />\r\n");
      out.write("            <param name=\"wmode\" value=\"opaque\" />\r\n");
      out.write("            <param name=\"swfversion\" value=\"6.0.65.0\" />\r\n");
      out.write("            <param name=\"expressinstall\" value=\"Scripts/expressInstall.swf\" />\r\n");
      out.write("            <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->\r\n");
      out.write("            <div>\r\n");
      out.write("              <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>\r\n");
      out.write("              <p><a href=\"http://www.adobe.com/go/getflashplayer\"><img src=\"http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif\" alt=\"Get Adobe Flash player\" width=\"112\" height=\"33\" /></a></p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--[if !IE]>-->\r\n");
      out.write("          </object>\r\n");
      out.write("          <!--<![endif]-->\r\n");
      out.write("        </object></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td colspan=\"3\" align=\"center\"></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td colspan=\"3\" align=\"center\"><strong class=\"neg\">DERECHOS RESERVADOS GNKL/DESARROLLOS WEB &reg; 2009 - 2013</strong></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("swfobject.registerObject(\"FlashID\");\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
