package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import servlets.login;
import java.util.logging.Logger;
import java.util.logging.Level;
import java.sql.SQLException;
import java.sql.ResultSet;
import conn.ConectionDB;

public final class indexCapR_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
java.text.DateFormat df = new java.text.SimpleDateFormat("yyyy-MM-dd"); 
      out.write('\r');
      out.write('\n');
java.text.DateFormat df2 = new java.text.SimpleDateFormat("dd/MM/yyyy"); 
      out.write('\r');
      out.write('\n');
java.text.DateFormat df3 = new java.text.SimpleDateFormat("HH:mm:ss"); 
      out.write('\r');
      out.write('\n');

    HttpSession sesion = request.getSession();
    String info = null;
    String qry = "";

    ConectionDB obj = new ConectionDB();
    ResultSet rset = null;
    ResultSet rset2 = null;

    String id_uni = "", juris = "", muni = "", nombre_gnk = "", tipo = "", hora = "", fecha = "", clues="";
    int ban = 0;

    try {
        obj.conectar();
        //int pos2=0;
        qry = "select distinct juris from tb_unidades order by id_uni+0 asc;";
        rset = obj.consulta(qry);
        //obj.cierraConexion();
    } catch (SQLException ex) {
        Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
    }

    try {
        if (request.getParameter("consultar").equals("1")) {
            rset2 = obj.consulta("select id_uni, juris, muni, nombre_gnk, tipo, clues from tb_unidades where nombre_gnk = '" + request.getParameter("slct_U") + "' ");
            while (rset2.next()) {
                id_uni = rset2.getString(1);
                juris = rset2.getString(2);
                muni = rset2.getString(3);
                nombre_gnk = rset2.getString(4);
                tipo = rset2.getString(5);
                hora = df3.format(new java.util.Date());
                fecha = df2.format(new java.util.Date());
                clues = rset2.getString(6);
                ban = 1;
            }
        }
    } catch (Exception e) {
        id_uni = "";
        juris = "";
        muni = "";
        nombre_gnk = "";
        tipo = "";
        hora = "";
        fecha = "";
    }

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>:: Toma de Censos Chiapas ::</title>\r\n");
      out.write("        <meta name=\"viewport\" http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\" />\r\n");
      out.write("        <!-- Bootstrap -->\r\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" media=\"screen\">\r\n");
      out.write("        <link href=\"css/login.css\" rel=\"stylesheet\" media=\"screen\">\r\n");
      out.write("        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("        <!--[if lt IE 9]>\r\n");
      out.write("          <script src=\"../../assets/js/html5shiv.js\"></script>\r\n");
      out.write("          <script src=\"../../assets/js/respond.min.js\"></script>\r\n");
      out.write("        <![endif]-->\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <!--div class=\"row marco\" >\r\n");
      out.write("                <div class=\"col-md-4\">.col-md-4</div>\r\n");
      out.write("                <div class=\"col-md-4\">.col-md-4</div>\r\n");
      out.write("                <div class=\"col-md-4\">.col-md-4</div>\r\n");
      out.write("            </div-->\r\n");
      out.write("\r\n");
      out.write("            <form name =\"forma-login\" id=\"forma-login\" class=\"marco\" method=\"post\" >\r\n");
      out.write("                <!--label for=\"username\" class=\"uname\" data-icon=\"u\" > Your email or username </label-->\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-4\"><img src=\"imagenes/GNKL_Small.JPG\" ></div>\r\n");
      out.write("                    <div class=\"col-md-8\"><h2>Toma de Censos</h2></div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-12\">\r\n");
      out.write("                        <div class=\"input-group\">\r\n");
      out.write("                            <span class=\"input-group-addon\"><label class=\" glyphicon glyphicon-hand-right\"></label></span>\r\n");
      out.write("                            <select name=\"slct_H\" id=\"slct_H\" onchange=\"SelectUni(this.form);\" class=\"form-control\">\r\n");
      out.write("                                <option>-- Seleccione Jurisdicci&oacute;n --</option>\r\n");
      out.write("                                ");
                                            while (rset.next()) {
                                
      out.write("\r\n");
      out.write("                                <option value=\"");
      out.print(rset.getString("juris"));
      out.write('"');
      out.write('>');
      out.print(rset.getString("juris"));
      out.write("</option>\r\n");
      out.write("                                ");

                                    }
                                
      out.write("\r\n");
      out.write("                            </select> \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-12\">\r\n");
      out.write("                        <div class=\"input-group\">\r\n");
      out.write("                            <span class=\"input-group-addon\"><label class=\"glyphicon glyphicon-header\"></label></span>\r\n");
      out.write("                            <select name=\"slct_U\" id=\"slct_U\" class=\"form-control\">\r\n");
      out.write("                                <option>-- Seleccione Hospital --</option>\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div> \r\n");
      out.write("\r\n");
      out.write("                <br>              \r\n");
      out.write("                <button name=\"consultar\" value=\"1\" class=\"btn btn-primary btn-lg btn-block\" type=\"submit\">Consultar</button>\r\n");
      out.write("                <!--button class=\"btn btn-primary btn-lg btn-block\" type=\"button\" onclick=\"window.location='modificarCensoH.jsp'\">Modificar</button-->\r\n");
      out.write("            </form>\r\n");
      out.write("\r\n");
      out.write("            <form name =\"forma-login\" id=\"forma-login\" class=\"marco\" action=\"CapturaCensos\" method=\"post\" >\r\n");
      out.write("                <br>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"col-lg-12\"><h4>Datos de la Unidad a Censar</h4></div>\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-12\">\r\n");
      out.write("                        <div class=\"input-group\">\r\n");
      out.write("                            <span class=\"input-group-addon\"><label class=\" glyphicon glyphicon-saved\"></label></span>\r\n");
      out.write("                            <input type=\"text\" name=\"id_uni\" id=\"id_uni\" class=\"form-control\" placeholder=\"Clave del Hospital\" value=\"");
      out.print(id_uni);
      out.write("\" readonly=\"readonly\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-12\">\r\n");
      out.write("                        <div class=\"input-group\">\r\n");
      out.write("                            <span class=\"input-group-addon\"><label class=\" glyphicon glyphicon-header\"></label></span>\r\n");
      out.write("                            <input type=\"text\" name=\"nombre_gnk\" id=\"nombre_gnk\" class=\"form-control\" placeholder=\"Nombre del Hospital\"  value=\"");
      out.print(nombre_gnk);
      out.write("\" readonly=\"readonly\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-12\">\r\n");
      out.write("                        <div class=\"input-group\">\r\n");
      out.write("                            <span class=\"input-group-addon\"><label class=\" glyphicon glyphicon-info-sign\"></label></span>\r\n");
      out.write("                            <input type=\"text\" name=\"tipo\" id=\"tipo\" class=\"form-control\" placeholder=\"Categor&iacute;a del Hospital\" value=\"");
      out.print(tipo);
      out.write("\" readonly=\"readonly\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-12\">\r\n");
      out.write("                        <div class=\"input-group\">\r\n");
      out.write("                            <span class=\"input-group-addon\"><label class=\" glyphicon glyphicon-hand-right\"></label></span>\r\n");
      out.write("                            <input type=\"text\" name=\"juris\" id=\"juris\" class=\"form-control\" placeholder=\"Jurisdicci&oacute;n\" value=\"");
      out.print(juris);
      out.write("\" readonly=\"readonly\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-12\">\r\n");
      out.write("                        <div class=\"input-group\">\r\n");
      out.write("                            <span class=\"input-group-addon\"><label class=\" glyphicon glyphicon-home\"></label></span>\r\n");
      out.write("                            <input type=\"text\" name=\"muni\" id=\"muni\" class=\"form-control\" placeholder=\"Municipio\" value=\"");
      out.print(muni);
      out.write("\" readonly=\"readonly\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-12\">\r\n");
      out.write("                        <div class=\"input-group\">\r\n");
      out.write("                            <span class=\"input-group-addon\"><label class=\" glyphicon glyphicon-calendar\"></label></span>\r\n");
      out.write("                            <input type=\"text\" name=\"fecha\" id=\"fecha\" class=\"form-control\" placeholder=\"Fecha de Toma del Censo\" value=\"");
      out.print(fecha);
      out.write("\" readonly=\"readonly\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-12\">\r\n");
      out.write("                        <div class=\"input-group\">\r\n");
      out.write("                            <span class=\"input-group-addon\"><label class=\" glyphicon glyphicon-time\"></label></span>\r\n");
      out.write("                            <input type=\"text\" name=\"hora\" id=\"hora\" class=\"form-control\" placeholder=\"Hora Inicio de toma del Censo\" value=\"");
      out.print(hora);
      out.write("\" readonly=\"readonly\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-12\">\r\n");
      out.write("                        <div class=\"input-group\">\r\n");
      out.write("                            <span class=\"input-group-addon\"><label class=\" glyphicon glyphicon-copyright-mark\"></label></span>\r\n");
      out.write("                            <input type=\"text\" name=\"clues\" id=\"clues\" class=\"form-control\" placeholder=\"CLUES\" value=\"");
      out.print(clues);
      out.write("\" readonly=\"readonly\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-12\">\r\n");
      out.write("                        <div class=\"input-group\">\r\n");
      out.write("                            <span class=\"input-group-addon\"><label class=\" glyphicon glyphicon-pencil\"></label></span>\r\n");
      out.write("                            <select name=\"encuestador\" id=\"encuestador\" class=\"form-control\">\r\n");
      out.write("                                <option>Encuestador 1</option>\r\n");
      out.write("                                <option>Encuestador 2</option>\r\n");
      out.write("                                <option>Encuestador 3</option>\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <br> \r\n");
      out.write("                ");

                    if (ban == 1) {
                
      out.write("             \r\n");
      out.write("                <button name=\"envio\" value = \"1\" class=\"btn btn-primary btn-lg btn-block\" type=\"submit\">Realizar Censo</button>\r\n");
      out.write("                <button name=\"envio\" value = \"2\" class=\"btn btn-primary btn-lg btn-block\" type=\"submit\">Cargar Imagenes</button>\r\n");
      out.write("                ");

                    }
                
      out.write("\r\n");
      out.write("                <br>\r\n");
      out.write("            </form>\r\n");
      out.write("            <br>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n");
      out.write("        <script src=\"//code.jquery.com/jquery.js\"></script>\r\n");
      out.write("        <!-- Include all compiled plugins (below), or include individual files as needed -->\r\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"css/MD5.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/code_js.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");

    sesion.invalidate();

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
