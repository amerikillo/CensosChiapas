<%@page import="conn.ConectionDB"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" session="true" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
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
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<script language="javascript" src="list02.js"></script>
<script language="javascript" src="js/bootstrap-button.js"></script>
<script src="jquery/jquery.js" type="text/javascript"></script>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>:: CAPTURA DE CENSOS ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
 <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link  href="css/bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/jumbotron-narrow.css" rel="stylesheet">
        
    <script type="text/javascript" src="js/jquery.min.js"></script>
        
    <script src ="Scripts/jquery-1.6.1.min.js" type = "text/javascript" ></script>
    <!--link rel="stylesheet" href="css/mm_entertainment.css" type="text/css" /-->
    <script language="javascript" src="js/codeJs.js"></script>
<script language="JavaScript" type="text/javascript">

//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------

//<script language="javascript" src="list02.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #000000;
	font-weight: bold;
}
.style33 {font-size: x-small}
.style40 {font-size: 9px}
.style41 {font-size: 9px}
.style42 {font-family: Arial, Helvetica, sans-serif}
.style32 {font-size: x-small; font-family: Arial, Helvetica, sans-serif; }
.style43 {
	font-size: x-small;
	color: #FFFFFF;
	font-weight: bold;
}
.style47 {
	font-size: x-small;
	font-weight: bold;
	text-align: center;
}
.style49 {font-size: x-small; font-family: Arial, Helvetica, sans-serif; font-weight: bold; }
.style50 {color: #000000}
.style51 {color: #BA236A}
.style58 {font-size: 14px;  font-weight: bold; color: #666666; }
.style66 {font-size: x-small; font-weight: bold; color: #333333; }
a:hover {
	color: #333333;
}
.style68 {color: #CCCCCC}
.style75 {color: #333333; }
a:link {
	color: #711321;
}
.style76 {color: #003366}
.style77 {
	color: #711321;
	font-weight: bold;
}
.neg {font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	font-weight: bold;
	color: #666;
}
.scrollup{
    width:40px;
    height:40px;
    opacity:0.3;
    position:fixed;
    bottom:50px;
    right:100px;
    display:none;
    text-indent:-9999px;
    background: url('icon_top.png') no-repeat;
}
.bs-example{
    	margin: 50px;
    }
-->
</style>
</head>
<body>

<div class="container">
      <div class="header">
        <ul class="nav nav-pills pull-right">
          <li class="active"><a href="/CensosVer/login?ban=2">Men&uacute;</a></li>
          <li><a data-toggle="modal" href="#myModal2">Instrucciones</a></li>
          <li><a data-toggle="modal" href="#myModal">Sistemas</a></li>
          <li><a data-toggle="modal" href="/CensosVer/login?ban=3">Salir</a></li>
        </ul>
          <h3 class="text-primary"><a name="top" id="top"></a>Captura de Censos Hospitales</h3>
      </div>
</div>
    
    
<table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">
 <tr>
     <td colspan="2" valign="top">
     <table width="877" border="1" align="center">
      <tr>
        <td width="418"><table width="1081" border="0">
          
          <tr>
            <td colspan="3"><div class="panel panel-primary">
            <!-- Default panel contents -->
	            <div class="panel-heading"><strong>LLENE LOS CAMPOS CON LAS RESPUESTAS OBTENIDAS</strong></div>
            </div></td>
            <td  class="style43 style51">&nbsp;</td>
            <td colspan="3"  class="style58">Bienvenido:
                <div class="bs-example">
                    <p class="popover-examples">
                       <a href="#" class="btn btn-large btn-primary" data-toggle="popover" data-content="And here's some amazing content. It's very engaging."> 
                        <span class="glyphicon glyphicon-user"></span>
                       </a>
                    </p>
                </div>
                <div class="bs-example">
                    <p class="popover-examples">
                        <a href="#" class="btn btn-large btn-primary" data-toggle="popover" data-content="And here's some amazing content. It's very engaging.">Popover Example</a>
                    </p>    
                </div>
            
            </td>
            
            </tr>
           <tr>
            <td colspan="7"  class="style58">Estatus del Censo:<br> A-INCOMPLETO B-INCOMPLETO C-INCOMPLETO D-INCOMPLETO E-INCOMPLETO F-INCOMPLETO G-INCOMPLETO H-INCOMPLETO</td>
            </tr>
            <tr>
            <td colspan="7"  class="style43 style51"><hr /></td>
            </tr>
          <tr>
              <td colspan="3"  class="style58">Seleccione Secci&oacute;n
            <a href="#a"><input name="a" id="btn_a" data-toggle="tooltip" title="A. DATOS GENERALES" type="button" data-loading-text="Loading..." class="btn btn-primary" value="A" /> </a>
            <a href="#b"><input name="b" id="btn_b" data-toggle="tooltip" title="B. CONSULTA EXTERNA" type="button" data-loading-text="Loading..." class="btn btn-primary" value="B" /></a>
            <a href="#c"><input name="c" id="btn_c" data-toggle="tooltip" title="C. URGENCIAS" type="button" data-loading-text="Loading..." class="btn btn-primary" value="C" /></a>
            <a href="#d"><input name="d" id="btn_d" data-toggle="tooltip" title="D. QUIR&Oacute;FANO" type="button" data-loading-text="Loading..." class="btn btn-primary" value="D" /></a>
            <a href="#e"><input name="e" id="btn_e" data-toggle="tooltip" title="E. FARMACIA" type="button" data-loading-text="Loading..." class="btn btn-primary" value="E" /></a>
            <a href="#f"><input name="f" id="btn_f" data-toggle="tooltip" title="F. ALMAC&Eacute;N" type="button" data-loading-text="Loading..." class="btn btn-primary" value="F" /></a>
            <!--a href="#g"><input name="g" id="btn_g" data-toggle="tooltip" title="G. GENERALES" type="button" data-loading-text="Loading..." class="btn btn-primary" value="G" /></a-->
            <a href="#h"><input name="h" id="btn_d" data-toggle="tooltip" title="G. OBSERVACIONES GENERALES" type="button" data-loading-text="Loading..." class="btn btn-primary" value="G" /></a>
            
              </td>
            <td  class="style43 style51">&nbsp;</td>
            <td colspan="3"  class="style58">Elaborado Por:
                <input name="txtf_elab" id="txtf_elab" type="text" class="form-control neg" onkeypress="return handleEnter(this, event);" size="40" value="GNK Log&iacute;stica S.A. de C.V." /></td>
            </tr>
       <form action="huge2.jsp" method="post" name="form_a" id="form_a" class="form-horizontal" >
          <tr>
            <td colspan="3" class="style58">
            <div class="panel panel-primary">
                <a name="a" id="a"></a>
            <!-- Default panel contents -->
	           <div class="panel-heading">A. DATOS GENERALES</div>
            </div>
            </td>
            <td>&nbsp;</td>
            <td colspan="3" class="style58">
            <div class="panel panel-primary">
            <!-- Default panel contents -->
            <div class="panel-heading">&nbsp;</div>
            </div>
            </td>
            </tr>
            <%
				String nomCam="campo_",nombreC="";
				int contCam=0;
				//nombreC=nomCam+(contCam+=1);
				//out.print(nombreC);
			%>
          <tr>
            <td width="29" class="style58"><div align="center">A.1</div></td>
            <td width="189" class="style58">Nombre de la Unidad:</td>
            <td class="style33"><strong>
              <label><strong>
                      <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);"  ></textarea>
                <%out.print(nombreC);%>
              </strong></label>
              </strong></td>
            <td width="1">&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">A.2</td>
            <%
				int contCam_2=79;
			%>
            <td class="style58"><div align="left">Nombre del Encuestado</div></td>
            <td>             
              <label>
                <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
                <%out.print(nombreC);%>

                </label>
              </td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.3</div></td>
            <td class="style58">Fecha y hora</td>
            <td ><label><strong>
               <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);"></textarea>
               <%out.print(nombreC);%>
                    </strong></label>
              </strong></td>
            <td>&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">A.4</td>
            <td class="style58"><div align="left">Nombre del Hospital</div></td>
            <td><span class="style49">
              <label></label>
              <label>
                <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
                <%out.print(nombreC);%>
                </label>
              </span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.5</div></td>
            <td class="style58">Categor&iacute;a</td>
            <td class="style33"><strong>
              <label>
                  <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly ></textarea>
              <%out.print(nombreC);%>  
              </label>
              </strong></td>
            <td>&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">A.6</td>
            <td width="230" class="style58"><div align="left">Direcci&oacute;n </div></td>
            <td width="282"><span class="style49">
              
             <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
               <%out.print(nombreC);%>  
              </span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.7</div></td>
            <td class="style58">Nombre del Hospital</td>
            <td class="style33"><strong>
              <label>
                  <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly ></textarea>
              <%out.print(nombreC);%>  
              </label>
              </strong></td>
            <td>&nbsp;</td>
            <td class="style58">A.8</td>
            <td class="style58"><div align="left">Colonia</div></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>  
            </td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.9</div></td>
            <td class="style58">Ciudad o Poblaci&oacute;n</td>
            <td class="style33"><strong>
              <label>
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
              <%out.print(nombreC);%> 
              </label>
              </strong></td>
            <td>&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">A.10</td>
            <td class="style58"><div align="left">Municipio</div></td>
            <td><span class="style49">
             <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
                <%out.print(nombreC);%> 
                </span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.11</div></td>
            <td class="style58">Estado </td>
            <td class="style33"><textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly ></textarea>
            <%out.print(nombreC);%> 
            </td>
            
            <td class="style58">&nbsp;</td>
            <td class="style58">A.12</td>
            <td class="style58">C&oacute;digo Postal </td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.13</div></td>
            <td class="style58">No. en el Mapa</td>
            <td class="style33"><strong>
              <label>
               <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
              <%out.print(nombreC);%> 
              </label>
              </strong></td>
            <td class="style58">&nbsp;</td>
            <td class="style58">A.14</td>
            <td class="style58">Tel&eacute;fono (s) </td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          <tr>
            <td class="style58"><p align="center" class="style58">A.15</p></td>
            <td class="style58">Fax</td>
            <td class="style33"><strong>
              <label>
               <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
              <%out.print(nombreC);%>   
              </label>
              </strong></td>
           <td class="style58">&nbsp;</td>
            <td class="style58">A.16</td>
            <td class="style58">P&aacute;gina Web </td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.17</div></td>
            <td class="style58">Poblaci&oacute;n Atendida</td>
            <td class="style33"><strong>
              <label>
                  <select name="slct_censo"  id="slct_censo" class="form-control">
                    <option>-- ESOCOJA CANTIDAD --</option>
                    <option value="1 A 500 HABITANTES">1 A 500 HABITANTES</option>
                    <option value="501 A 1,000 HABITANTES">501 A 1,000 HABITANTES</option>
                    <option value="1,001 A 2,500 HABITANTES">1,001 A 2,500 HABITANTES</option>
                    <option value="2,501 A 5,000 HABITANTES">2,501 A 5,000 HABITANTES</option>
                    <option value="5,001 A 10,000 HABITANTES">5,001 A 10,000 HABITANTES</option>
                    <option value="10,001 A 25,000 HABITANTES">10,001 A 25,000 HABITANTES</option>
                    <option value="25,001 A 50,000 HABITANTES">25,001 A 50,000 HABITANTES</option>
                    <option value="50,001 A 100,000 HABITANTES">50,001 A 100,000 HABITANTES</option>
                    <option value="100,001 A 250,000 HABITANTES">100,001 A 250,000 HABITANTES</option>
                    <option value="250,001 A 500,000 HABITANTES">250,001 A 500,000 HABITANTES</option>
                    <option value="500,001 A 1,000,000 HABITANTES">500,001 A 1,000,000 HABITANTES</option>
                    <option value="1,000,001 A 5,000,000 HABITANTES">1,000,001 A 5,000,000 HABITANTES</option>
                    <option value="+ DE 5,000,000 HABITANTES">+ DE 5,000,000 HABITANTES</option>
                    
                    
                    
                 </select>
               <%//=nombreC=nomCam+(contCam+=1)%>
               <textarea name="campo_10" cols="40" class="form-control" id="campo_10" onkeypress="return handleEnter(this, event);" ></textarea>
              <%out.print(nombreC);%>  
              </label>
              </strong></td>
           <td class="style58">&nbsp;</td>
            <td class="style58">A.18</td>
            <td class="style58">Jurisdicci&oacute;n Sanitaria Perteneciente </td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.19</div></td>
            <td class="style58">Coordinaci&oacute;n Municipal Perteneciente </td>
            <td class="style33"><strong>
              <label>
               <textarea name="<%=nombreC=nomCam+(contCam+=2)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
              <%out.print(nombreC);%>  
              </label>
              </strong></td>
           <td class="style58">&nbsp;</td>
            <td class="style58">A.20</td>
            <td class="style58">N&uacute;mero de Servicios </td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.21</div></td>
            <td class="style58">N&uacute;mero de Camas Censables </td>
            <td class="style33"><strong>
              <label>
                  <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly   >Veracruz</textarea>
              <%out.print(nombreC);%>   
              </label>
              </strong></td>
            <td class="style58">&nbsp;</td>
            <td class="style58">A.22</td>
            <td class="style58">N&uacute;mero de Camas no Censables </td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.23</div></td>
            <td class="style58">Nombre del Administrador</td>
            <td class="style33"><strong>
              <label>
               <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
              <%out.print(nombreC);%>   
              </label>
              </strong></td>
            <td class="style58">&nbsp;</td>
            <td class="style58">A.24</td>
            <td class="style58">Tel&eacute;fono del Administrador</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          <tr>
            <td height="26" class="style58"><div align="center">A.25</div></td>
            <td class="style58">Correo Electr&oacute;nico del Administrador</td>
            <td class="style33"><strong>
              <label>
                <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
              <%out.print(nombreC);%>   
              </label>
              </strong></td>
           <td class="style58">&nbsp;</td>
            <td class="style58">A.26</td>
            <td class="style58">Nombre del Director</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.27</div></td>
            <td class="style58">Tel&eacute;fono del Director </td>
            <td class="style33"><strong>
              <label>
               <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
               <%out.print(nombreC);%> 
              </label>
              </strong></td>
           <td class="style58">&nbsp;</td>
            <td class="style58">A.28</td>
            <td class="style58">Correo electr&oacute;nico del Director</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
              <tr>

                  <td colspan="7" class="style58">
                      <div class="panel panel-primary">
                          <a name="b" id="b"></a>
                          <!-- Default panel contents -->
                          <input type="submit" name="envio" value="Guardar datos Secci&oacute;n A" class="btn btn-primary btn-lg btn-block" >        
                      </div>
                  </td>

              </tr>
       </form>
          <tr>
          <form action="huge2.jsp" method="post" name="form_b" id="form_b" class="form-horizontal" >                
          <tr>
              
            <td colspan="3" class="style58">
            <div class="panel panel-primary">
                <a name="b" id="b"></a>
            <!-- Default panel contents -->
            <div class="panel-heading">B. CONSULTA EXTERNA</div>
            </div>
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
             
          <tr> 
            <td class="style58"><div align="center">B.1</div></td>
            <td class="style58">N&ordm; de Consultorios de Primer Nivel </td>
            <td><span class="style49">
              
                    <label>
                <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
                <%out.print(nombreC);%>
                    </label>
              </span></td>
            <td class="style58">&nbsp;</td>
            <td class="style58">B.2</td>
            <td class="style58">N&ordm; de Consultorios de Segundo Nivel </td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          
          <tr>
            <td class="style58"><div align="center">B.3</div></td>
            <td class="style58">Consultas Promedio por Consultorio de Primer Nivel</td>
            <td>
              
                <label>
                 <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
                <%out.print(nombreC);%>  
                </label>
                </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">B.4</td>
            <td class="style58">Consultas Promedio por Consultorio de Segundo Nivel </td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          
                <tr>
            <td class="style58"><div align="center">B.5</div></td>
            <td class="style58">N&uacute;mero de M&eacute;dicos</td>
            <td>
                  <label>
                   <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
                  <%out.print(nombreC);%>  
                  </label>
                 
                  </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp; </td>
            <td>&nbsp;</td>
            </tr>
 <tr>
            
                   <td colspan="7" class="style58">
            <div class="panel panel-primary">
                <a name="b" id="b"></a>
            <!-- Default panel contents -->
            <input type="submit" name="envio" value="Guardar datos Secci&oacute;n B" class="btn btn-primary btn-lg btn-block" >        
            </div>
            </td>
           
            </tr>
          </form>
          <tr>
            <td colspan="3" class="style58">
            <div class="panel panel-primary">
                <a name="c" id="c"></a>
            <!-- Default panel contents -->
           
	            <div class="panel-heading">C. URGENCIAS </div>
            </div>
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
          <form action="huge2.jsp" method="post" name="form_c" id="form_c" class="form-horizontal" > 
          <tr>
            <td height="26" class="style47"><div align="center" class="style58">C.1</div></td>
            <td class="style58">&iquest;Existe servicio de Urgencias?</td>
            <td><span class="style58">
              <label>
                <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
               <%out.print(nombreC);%>   
              </label>
              </span></td>
            <td class="style58">&nbsp;</td>
            <td class="style58">C.2</td>
            <td class="style58">�Qu� Insumos M�dicos manejan?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          <tr>
            <td class="style47"><div align="right" class="style77"><a href="consulta_cens.jsp" class="styl e77"></a>
              <div align="center" class="style58">C.3</div>
              </div></td>
              <td class="style58">�C�me se surte de Insumos?</td>
            <td><label>
              <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
               <%out.print(nombreC);%> 
                </label></td>
            <td class="style58">&nbsp;</td>
            <td class="style58">C.4</td>
            <td class="style58">�Qui�n elabora el requerimiento o receta colectiva?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          <tr>
            <td class="style47"><div align="center" class="style58">C.5</div></td>
            <td class="style58">El resurtido es por dosis o por presentaci�n completa</td>
            <td>
                  <label>
                    <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
                   <%out.print(nombreC);%>  
                  </label>
                  </td>
           <td class="style58">&nbsp;</td>
            <td class="style58">C.6</td>
            <td class="style58">�Cuenta con carro rojo?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          <tr>
            <td class="style47"><div align="center" class="style58">C.7</div></td>
            <td class="style58">�C�mo se surte ese carro rojo?</td>
            <td class="style58"><label>
              <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
               <%out.print(nombreC);%> 
                </label></td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
             <tr>

                  <td colspan="7" class="style58">
                      <div class="panel panel-primary">
                          <a name="b" id="b"></a>
                          <!-- Default panel contents -->
                          <input type="submit" name="envio" value="Guardar datos Secci&oacute;n C" class="btn btn-primary btn-lg btn-block" >        
                      </div>
                  </td>

              </tr>   
          </form>
                
          <tr>
            <td colspan="3" class="style58">
            <div class="panel panel-primary">
                <a name="d" id="d"></a>
            <!-- Default panel contents -->
            <div class="panel-heading">D. QUIR&Oacute;FANO</div>
            </div>
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
                <form action="huge2.jsp" method="post" name="form_d" id="form_d" class="form-horizontal"> 
                        <td class="style58">D.1</td>
                        <td class="style58">&iquest;Existe servicio de Quir&oacute;fano?</td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%> 
            </td>
           <td class="style58">&nbsp;</td>
            <td class="style58">D.2</td>
            <td class="style58">�Qu� Insumos M�dicos manejan?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">D.3</div></td>
            <td width="189" class="style58">�C�mo se surten los Kits quir�rgicos?</td>
            <td width="290" class="style58"><strong>
              <label>
              <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
               <%out.print(nombreC);%> 
              </label>
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
               </form>
                <tr>
            <td colspan="3" class="style58">
            <div class="panel panel-primary">
            <a name="e" id="e"></a>
            <!-- Default panel contents -->
            <div class="panel-heading">E. FARMACIA (36)</div>
            </div>
            </td>
           <td class="style58">&nbsp;</td>
            <td class="style58">F.30</td>
            <td class="style58">N�mero de Equipos de C�mputo en Almac�n</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
          <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.1</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Existe servicio de Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.31</td>
            <td class="style58">�Qui�n es el propietario de los Equipos de C�mputo?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.2.3</div>
              </div></td>
                    <td bgcolor="#FFFFFF" class="style58">Horario de Atenci&oacute;n</td>
            <td class="style58"><span class="style47">De:
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            A:
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.32</td>
            <td class="style58">�Cuentan con alg�n Sistema Inform�tico en el Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
         <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.4</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Cuanto personal atiende la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.33</td>
            <td class="style58">�Cu�les son las funciones del Sistema Inform�tico en el Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.5</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Cu�ntos turnos existen en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.34</td>
            <td class="style58">�Cu�l es el destino final de las recetas individuales y colectivas?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.6</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Cuentan con un Responsable en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
           <td class="style58">&nbsp;</td>
            <td class="style58">F.35</td>
            <td class="style58">�Cuentan con tel�fono en el Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.7</div>
              </div></td>
                    <td bgcolor="#FFFFFF" class="style58">�Cuentan con un Qu&iacute;mico responsable de la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.36</td>
            <td class="style58">�Cu�l es el n�mero de tel�fono en el Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.8</div>
              </div></td>
                    <td bgcolor="#FFFFFF" class="style58">�El Responsable de la Farmacia es el Qu&iacute;mico?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.37</td>
            <td class="style58">�Qu� tan frecuentemente falla el suministro de energ�a el�ctrica en el Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.9</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�El personal de la Farmacia est� capacitado y actualizado en el manejo y dispensaci�n de medicamento?
           </td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.38</td>
            <td class="style58">�Cuentan con servicio de Internet en el Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.10</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�El personal de la Farmacia cuenta con el certificado de la COFEPRIS para el manejo y dispensaci�n de medicamento?
</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.39</td>
            <td class="style58">�Cu�l es el proveedor de Internet en el Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.11</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Qu� Insumos M�dicos manejan en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.40</td>
            <td class="style58">�Qu� tan r�pido es el servicio de Internet en el Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.12</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Cu�ntos Insumos M�dicos diferentes manejan en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.41</td>
            <td class="style58">�Almacenan Insumo en otro lugar aparte del Almac�n y la Farmacia?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.13</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Cuentan con Licencia Sanitaria en la Farmacia para el manejo de medicamento controlado?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.42</td>
            <td class="style58">�En qu� otro lugar aparte del Almac�n y la Farmacia almacenan insumos?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.14</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">Indicar el n�mero de la Licencia Sanitaria en la Farmacia para el manejo de medicamento controlado</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
           <td class="style58">&nbsp;</td>
            <td class="style58">F.43</td>
            <td class="style58">�Cuentan con sub almacenes en los pisos?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.15</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�C�mo surten los Insumos M�dicos en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.44</td>
            <td class="style58">�Qui�n abastece al Almac�n de Insumos M�dicos?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.16</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Qui�n es el propietario del Insumo en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.45</td>
            <td class="style58">�Cada cuanto abastecen al Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.17</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Llevan alg�n control de semaforizaci�n de caducidades en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.46</td>
            <td class="style58">�Qu� se hace en caso de que no se tenga alg�n insumo solicitado en el Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.18</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Tienen insumo caducado en Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.47</td>
            <td class="style58">�Se lleva un registro de Insumos Solicitados contra Surtidos en el Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.19</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Tienen insumo pr�ximo a caducar en Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.48</td>
            <td class="style58">�Se lleva un registro de Piezas Solicitadas contra Surtidas en el Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.20</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">Espacio aproximado de Farmacia m�</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.49</td>
            <td class="style58">�C�al es el Porcentaje de Abasto actual en el Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.21</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">N�mero de Anaqueles en Farmacia</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.50</td>
            <td class="style58">�Cu�ntos Insumos se solicitan en promedio por receta o requerimiento en el Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.22</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Qui�n es el propietario de los Anaqueles en Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
           <td class="style58">&nbsp;</td>
            <td class="style58">F.51</td>
            <td class="style58">�El Inventario en el Almac�n se encuentra actualizado?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.23</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Cuentan con Refrigerador en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
           <td class="style58">&nbsp;</td>
            <td class="style58">F.52</td>
            <td class="style58">N�mero de Recetas y/o Requerimientos Surtidos por D�a en Almac�n</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.24</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Qui�n es el propietario del Refrigerador en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.53</td>
            <td class="style58">�Capturan recetas y/o requerimientos en el Almac�n?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.25</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Cuentan con Equipo de C�mputo en Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">F.54</td>
            <td class="style58">�La captura de recetas y/o requerimientos en el Almac�n va al d�a?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.26</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">N�mero de Equipos de C�mputo en Farmacia</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td colspan="4" class="style58">&nbsp;
                
            </td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.27</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Qui�n es el propietario de los Equipos de C�mputo en Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58" >&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td><textarea style="visibility:hidden;" name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);"  ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.28</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Cuentan con alg�n Sistema Inform�tico en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
           <td class="style58">&nbsp;</td>
           <td class="style58">&nbsp;</td>
           <td class="style58">&nbsp;</td>
            <td><textarea style="visibility:hidden;" name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.29</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Cu�les son las funciones del Sistema Inform�tico en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td><textarea style="visibility:hidden;" name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.30</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Existe alg�n tipo de validaci�n de acuerdo al origen del paciente?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td><textarea style="visibility:hidden;" name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.31</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�C�mo validan el origen del paciente en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td><textarea style="visibility:hidden;" name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.32</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Cu�l es el destino final de las recetas individuales y colectivas?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td><textarea style="visibility:hidden;" name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.33</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Cuentan con tel�fono en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td><textarea style="visibility:hidden;" name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.34</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Cu�l es el n�mero de tel�fono en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td><textarea style="visibility:hidden;" name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.35</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Qu� tan frecuentemente falla el suministro de energ�a el�ctrica en la Farmacia?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td><textarea style="visibility:hidden;" name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>
                <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">E.36</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">�Cuentan con planta de energ�a el�ctrica para emergencias?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea></span>
            <%out.print(nombreC);%> 
            </td>
           <td class="style58">&nbsp;</td>
           <td class="style58">&nbsp;</td>
           <td class="style58">&nbsp;</td>
            <td><textarea style="visibility:hidden;" name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
             <%out.print(nombreC);%>    
              </label>
              </p></td>
            </tr>


          
  <!-- Preguntas Censos Plus Ver-->
  <%int nume=0;
  int contCam_3=43;
  %>
     <tr>
            <td colspan="7" class="style58">
            <div class="panel panel-primary">
                <a name="h" id="h"></a>
            <!-- Default panel contents -->
            <div class="panel-heading">G. OBSERVACIONES GENERALES</div>
            </div>
            </td>
            
      </tr>
         
            
            
            
             
          <tr>
            <td colspan="7" class="style58"><table width="637" border="0" align="center" cellpadding="2">
              <tr>
                <td width="192"><strong class="style58"></strong></td>
                <td width="431"><div align="center"></div></td>
                </tr>
              <tr>
                
                <td colspan="7"><div align="center" class="style58"><strong>
             
                            <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="140" rows="10" class="form-control style58" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" ></textarea>
                <%out.print(nombreC);%> 
              </strong></div></td>
                </tr>
              
              </table></td>
            </tr>
          <tr>
            <td colspan="7" class="style47"><div align="center"><strong><span class="style41"><strong><strong>
              <input type="hidden" name="altaok2" value="1"/>
              </strong></strong></span></strong></div></td>
            </tr>
              <tr>
                  <td colspan="7" class="style58">
            <div class="panel panel-primary">
                <a name="h" id="h"></a>
               
            <!-- Default panel contents -->
            <div class="panel-heading">PICTOGR&Aacute;FICO</div>
            </div>
            </td>            </tr>
               <tr>
                  <td colspan="7">
                        <div class="container">
    
   <div id="contenedor">
    <div id="myCarousel" class="carousel slide" >
     <div class="container well" align="justify">
      <ol class="carousel-indicators">
      
       <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
        <li data-target="#myCarousel" data-slide-to="6"></li>
  </ol>
 <!-- Carousel items -->
 
     <%
               // int ima=Integer.parseInt(request.getParameter("ima"));
               // String ima=%><%
                //out.print(""+ima);
     //<script>json["json_9"]</script>request.getParameter("ima");
     %>
      <div class="carousel-inner" align="center" >
          <div class="item active"><img src="imagenes/inicio2.png" width="500" id="imagen" /></div>
        
        <div class="item"><img src="imagenes/inicio2.png" width="500" id="imagen2" /></div>
        <div class="item"><img src="imagenes/inicio2.png" width="500" id="imagen3" /></div>
        <div class="item"><img src="imagenes/inicio2.png" width="500" id="imagen4" /></div>
        <div class="item"><img src="imagenes/inicio2.png" width="500" id="imagen5" /></div>
        <div class="item"><img src="imagenes/inicio2.png" width="500" id="imagen6" /></div>
        <div class="item"><img src="imagenes/inicio2.png" width="500" id="imagen7" /></div>
        
      </div>

      <!-- Carousel nav -->
  <!-- Wrapper for slides -->
      <a class="carousel-control left btn-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
      <a class="carousel-control right btn-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div>
</div>
</div>
                <a name="abajo" id="abajo"></a>       
                            <div align="rigth"><a href="#top">Ir hacia Arriba</a></div>   </td>
                    
            </tr>
          <tr>
            <td colspan="7" class="style47"><strong class="neg">DERECHOS RESERVADOS GNKL/DESARROLLOS WEB &reg; 2009 - 2013</strong></td>
            </tr>
          </table>
        </td>
        </tr>
      <form action="huge.jsp" method="post">
      <input type="submit" name="envio" class="btn btn-primary btn-lg btn-block" > 
      </form>
    </table>
    
   
     
  
                                              <!-- 
                                              Mensaje de Acerca de...
                                              -->
                                              <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                  <div class="modal-dialog">
                                                      <div class="modal-content">
                                                          <div class="modal-header">
                                                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                              <h4 class="modal-title">INSTRUCCIONES DE LLENADO</h4>
                                                          </div>
                                                          <div class="modal-body">
                                                              <img src="imagenes/GNKL_Small.JPG">Previamente debes de checar que haya conexi&oacute;n a Internet<br>
                                                                      <ul>
                                                                              <li>Ingresa la respuesta del Encuestado en cada uno de sus campos</li>
                                                                              <li>TODOS los campos deben de ser llenados con su respuesta correspondiente</li>
                                                                              <li>No se permiten campos vac&iacute;os, en caso de que no haya respuesta v&aacute;lida, poner NA</li>
                                                                              <li>Por cada Secci&oacute;n de la Encuesta se debe de ir Guardando dando clic en el Bot&oacute;n de GUARDAR</li>
                                                                      </ul>
                                                                        
                                                         </div>
                                                                          <div class="modal-footer">
                                                                              <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                                              <!--button type="button" class="btn btn-primary">Guardar Info</button-->
                                                                          </div>
                                                                          </div><!-- /.modal-content -->
                                                                          </div><!-- /.modal-dialog -->
                                                                          </div><!-- /.modal -->


                                                                          <!-- 
                                                                           fin Mensaje de Acerca de...
                                                                          -->                            
 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Ingresa tus Datos</h4>
        </div>
        <div class="modal-body">
         <form name="form_com" method="post" id="form_com">
         Nombre: <input type="text" class="form-control" autofocus placeholder="Ingrese su Nombre" name="txtf_nom" id="txtf_nom">
         Cuenta de Correo: <input type="text" class="form-control"  placeholder="Ingrese su Cuenta de Correo" name="txtf_cor" id="txtf_cor" onblur="validarEmail(this.form.txtf_cor.value);" >
         Deje su Comentario: <textarea name="txta_com" cols="10" rows="5" class="form-control" id="txta_com"></textarea>
         <div class="modal-footer">
          
          <input type="submit" class="btn btn-primary" value="Guardar" id="btn_com" onClick="return verificaCom(document.forms.form_com);">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
         
         </form>
        </div>
        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  
   <a href="#" class="scrollup">Scroll</a>
                  
<script type="text/javascript">
    $(document).ready(function() {
	$('#form').submit(function () {
		        
				//alert("Ingres�");
				return false;
			});
        $('#btn_mos').click(function() {
            var id= $('#slct_censo').val();
			//alert("id: "+id);
			var dir = 'consultaCensos.jsp?id='+id;
			$.ajax({
					url: dir,
					type: 'json', 
					success: function(data) {
                                           // alert("success");
					json = JSON.parse(data);
                                        var nomCon="textarea#campo_";
                                        var nombreControl="",nombreJson="";
                                        var contNom=1;
                                        var nomJson="json_";
                                        
                                         while(contNom<196){
                                             nombreControl=nomCon+contNom;
                                             nombreJson=nomJson+contNom;
                                          // alert(nombreControl=nomCon+contNom);
                                          // alert(nombreJson=nomJson+contNom);
                                             $(nombreControl).val(json[nombreJson]);
                                             contNom++;
                                          }	
                                         //$("input#txtf_aa").val(json["json_1"]); 
                                         //$("input#txtf_elab").val(json["json_75"]);
                                         //$("input#ima").val(json["json_9"]);
                                         
                                                                                                              
                                         var image = $('#imagen');
                                         var image2 = $('#imagen2');
                                         var image3 = $('#imagen3');
                                         var image4 = $('#imagen4');
                                         var image5 = $('#imagen5');
                                         var image6 = $('#imagen6');
                                         var image7 = $('#imagen7');
                                        
                                         var ruta="imagenes/"+json["json_9"]+"/"+json["json_9"]+"_1.JPG";
                                         var ruta2="imagenes/"+json["json_9"]+"/"+json["json_9"]+"_2.JPG";
                                         var ruta3="imagenes/"+json["json_9"]+"/"+json["json_9"]+"_3.JPG";
                                         var ruta4="imagenes/"+json["json_9"]+"/"+json["json_9"]+"_4.JPG";
                                         var ruta5="imagenes/"+json["json_9"]+"/"+json["json_9"]+"_5.JPG";
                                         var ruta6="imagenes/"+json["json_9"]+"/"+json["json_9"]+"_6.JPG";
                                         var ruta7="imagenes/"+json["json_9"]+"/"+json["json_9"]+"_7.JPG";
                                         
                                         //$(".carousel-inner .item img").attr("src", "imagenes/" + id); 
                                         //alert(ruta);
                                         image.attr ("src",  ruta);
                                         image2.attr("src", ruta2);
                                         image3.attr("src", ruta3);
                                         image4.attr("src", ruta4);
                                         image5.attr("src", ruta5);
                                         image6.attr("src", ruta6);
                                         image7.attr("src", ruta7);
                                     
					}, 
				});
			});
                        
                        $('#form_com').submit(function () {
				//alert("huges");
				return false;
			});   
    $("#btn_com").click(function() {
				
				var nom= $('#txtf_nom').val();
				var cor= $('#txtf_cor').val();
				var com= $('#txta_com').val();
				//alert(id+" "+id);
				if(nom=='' || cor=='' || com==''){
					return false;
				}
				else{
					var dataString = $('#form_com').serialize();
				   	//alert('Datos serializados: '+dataString);
					var dir = '/CensosVer/servletCorreo';
				
				$.ajax({
					url:  dir,
					type: "POST", 
					data: dataString, 
					success: function(data) {
						alert("Sus datos han sido Enviados");
                                                location.reload(); 
						//$("#form_com").fadeOut("slow");
						/*$('#txtf_nom').value='huge';
				        $('#txtf_cor').value='';
				        $('#txta_com').value='';*/
                                        },
				});
			  }
			});

});
</script>
  <script>
   $(document).ready(function(){
       $('.carousel').carousel({
           interval: 3000
       });
   });
</script>
   <script type="text/javascript">
    $(document).ready(function(){
  
        $(window).scroll(function(){
            if ($(this).scrollTop() > 100) {
                $('.scrollup').fadeIn();
            } else {
                $('.scrollup').fadeOut();
            }
        });
  
        $('.scrollup').click(function(){
            $("html, body").animate({ scrollTop: 0 }, 600);
            return false;
        });
  
    });
</script>
   <script type="text/javascript">
        $(function () {
            $(".popover-examples a").popover({
                title : 'Default title value'
            });
        });
   </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap-modal.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
     
</body>
</html>
