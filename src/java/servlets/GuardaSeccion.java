/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import conn.*;// package que contiene la Clase ConectionDBS
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author wence
 */
@WebServlet(name = "GuardaSeccion", urlPatterns = {"/GuardaSeccion"})
public class GuardaSeccion extends HttpServlet {

    ConectionDB con = new ConectionDB();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);

        HttpSession sesion = request.getSession(true);
        PrintWriter out = response.getWriter();

        try {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet GuardaSeccion</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<img src='imagenes/loading.gif' width='400' heitgh='400' /");
            con.conectar();
            out.println(request.getParameter("guarda_seccion"));

            if (request.getParameter("guarda_seccion").equals("A")) {

                String qry = "update tb_a set  ";
                for (int i = 1; i < 31; i++) {
                    qry = qry + "campo_" + i + "='" + request.getParameter("campo_" + i).toUpperCase() + "', ";
                }
                qry = qry + " campo_31='" + request.getParameter("campo_31").toUpperCase() + "' where id_uni = '" + sesion.getAttribute("id_uni") + "' ;";
                con.actualizar(qry);
                response.sendRedirect("capturaCensosR.jsp");
            }

            if (request.getParameter("guarda_seccion").equals("B")) {
                String qry = "update tb_b set  ";
                for (int i = 32; i < 45; i++) {
                    qry = qry + "campo_" + i + "='" + request.getParameter("campo_" + i).toUpperCase() + "', ";
                }
                qry = qry + " campo_45='" + request.getParameter("campo_45").toUpperCase() + "' where id_uni = '" + sesion.getAttribute("id_uni") + "' ;";
                con.actualizar(qry);
                out.println(qry);
                response.sendRedirect("capturaCensosR.jsp");

            }

            if (request.getParameter("guarda_seccion").equals("C")) {

                String qry = "update tb_c set  ";
                for (int i = 46; i < 54; i++) {
                    qry = qry + "campo_" + i + "='" + request.getParameter("campo_" + i).toUpperCase() + "', ";
                }
                qry = qry + " campo_54='" + request.getParameter("campo_54").toUpperCase() + "' where id_uni = '" + sesion.getAttribute("id_uni") + "' ;";
                con.actualizar(qry);
                response.sendRedirect("capturaCensosR.jsp");
            }

            if (request.getParameter("guarda_seccion").equals("D")) {

                String qry = "update tb_d set  ";
                for (int i = 55; i < 62; i++) {
                    qry = qry + "campo_" + i + "='" + request.getParameter("campo_" + i).toUpperCase() + "', ";
                }
                qry = qry + " campo_62='" + request.getParameter("campo_62").toUpperCase() + "' where id_uni = '" + sesion.getAttribute("id_uni") + "' ;";
                con.actualizar(qry);
                response.sendRedirect("capturaCensosR.jsp");
            }

            if (request.getParameter("guarda_seccion").equals("E")) {

                String qry = "update tb_e set  ";
                for (int i = 63; i < 70; i++) {
                    qry = qry + "campo_" + i + "='" + request.getParameter("campo_" + i).toUpperCase() + "', ";
                }
                qry = qry + " campo_70='" + request.getParameter("campo_70").toUpperCase() + "' where id_uni = '" + sesion.getAttribute("id_uni") + "' ;";
                con.actualizar(qry);
                response.sendRedirect("capturaCensosR.jsp");
            }

            if (request.getParameter("guarda_seccion").equals("F")) {

                String qry = "update tb_f set  campo_71='" + request.getParameter("campo_71").toUpperCase() + "' where id_uni = '" + sesion.getAttribute("id_uni") + "' ;";
                con.actualizar(qry);
                response.sendRedirect("capturaCensosR.jsp");
            }
            con.cierraConexion();
        } catch (SQLException e) {
            try {
                con.cierraConexion();
                out.println("<script>alert('Existen Campos que no se llenaron correctamente.')</script>");
                out.println("<script>window.location='capturaCensosR.jsp'</script>");
            } catch (SQLException ex) {
                Logger.getLogger(GuardaSeccion.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        out.println("<h1>Servlet GuardaSeccion at " + request.getContextPath() + "</h1>");
        out.println("</body>");
        out.println("</html>");
        //response.sendRedirect("capturaCensosH.jsp");

    }// end of doPost

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
