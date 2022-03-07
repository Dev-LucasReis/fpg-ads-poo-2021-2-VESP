/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
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

/**
 *
 * @author Valdereis
 */
@WebServlet(name = "MathServlet", urlPatterns = {"/Math.html"})
public class MathServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String error = null;
            double n1=1, n2=1;
            try{
                String p1 = request.getParameter("n1");
                String p2 = request.getParameter("n2");
               
                n1 = Double.parseDouble(p1);
                n2 = Double.parseDouble(p2);
                
            }catch(Exception e){
                error = e.getMessage();
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Operação Aritmética</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h3>Soma</h3>");
            out.println("<form>");
            out.println("<input name=\"n1\" type=\"number\" value=\"1\"/> +");
            out.println("<input name=\"n2\" type=\"number\" value=\"1\"/>");
            out.println("<input name=\"sum\" type=\"submit\" value=\"=\"/>");
            
            out.println("<select name=\"calculadora\">");
            out.println("<option value=\"soma\">somar</option>");
            out.println("<option value=\"sub\">subtrair</option>");
            out.println("<option value=\"mult\">multiplicar</option>");
            out.println("<option value=\"div\">dividir</option>");
            out.println("</select>");
            out.println("</form>");
            
            
            out.println("<br/>");
             if(error != null){
                out.println("<span style='color:red'>Erro ao tentar ler parâmetros</span>");
            }else{
                out.println("<div>");
                out.println(n1+" + "+n2+" = "+(n1+n2));
                out.println("</div>");
            }
            out.println("<br/>"); 
            out.println("<a href=\"index.html\">Voltar</a></h3>");
          //out.println("<h1>Servlet MathServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
