/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package juros;

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
@WebServlet(name = "JurosCompostoServlet", urlPatterns = {"/juros-composto.html"})
public class JurosCompostoServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
          double n1 , n2,aux,aux2,aux3,  resultado = 0;
            int    n3 = 0;
            try{n1 = Double.parseDouble(request.getParameter("n1"));
                n2 = Double.parseDouble(request.getParameter("n2"));
                n2 = n2/100;
                n3 = Integer.parseInt(request.getParameter("n3"));
                
                
               aux  = Math.pow(1+n2,n3)-1;
               aux2 = Math.pow(1+n2, n3)*n2;
               aux3 = aux/aux2;
               
               resultado = n1/aux3;
               
               out.println("<h1>Calculo de Juros Composto</h1>");
               out.println("<hr/>");
                out.println("<h4> Valor Presente: " + n1 + "<hr/>"+  "Taxa de Juros: " +n2+ "<hr/>"+"Meses: " + n3+  "<hr/>"+ "Parcelas Fixas de :" + " = " +resultado+"</h4>");
   }catch(Exception ex){
            out.println("<p style='color: red'>Error ao ler parâmetro: "+ex.getMessage()+"</p>");
            }
          out.println("<hr/>");
          
            out.println("<h3>Valor Presente:</h3>");
            out.println("<form action=\"juros-composto.html\">");
            out.println("<input type=\"number\" name=\"n1\" step=\"0.01\" value=\"1\"/>");
            out.println("<hr/>");
            out.println("<h3>juros (em %):</h3>");
            out.println("<input type=\"number\" name=\"n2\" step=\"0.01\" value=\"1\"/>");
            out.println("<hr/>");
            out.println("<h3>Tempo em Meses:</h3>");
            out.println("<input type=\"number\" name=\"n3\" value=\"1\"/>");
            out.println("<hr/>");
            out.println("<input type=\"submit\" value=\"Calcular Juros\"/>");
            out.println("</form>");
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Juros-Compostos</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<hr/>");
            out.println("<a href=\"index.html\">Pagina Inicial</a></h3>");
            out.println("/");
            out.println("<a href=\"juros-simples.html\">Juros-Simples</a>");
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
