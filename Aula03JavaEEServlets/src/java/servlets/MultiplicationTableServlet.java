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
 * @author Lucas dos Santos Reis
 */
@WebServlet(name = "MultiplicationTableServlet", urlPatterns = {"/multiplication-table.html"})
public class MultiplicationTableServlet extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>JavaEE Servlets</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>JavaEE</h1>");
            out.println("<h2>Servlets</h2>");
            out.println("Links Rápidos:");
             for(int i = 1; i <= 20; i++){
            out.println("<a href='?n="+i+"'>"+i+"</a> | ");
            }
            out.println("<h3>Tabuada</h3>");
            out.println("<table");
            int n = 2;
            try{
                n = Integer.parseInt(request.getParameter("n"));
            }catch(Exception ex){
            out.println("<p style='color: red'>Error ao ler parâmetro: "+ex.getMessage()+"</p>");
            }
            
            for(int i = 1; i <=10; i ++){
            out.println("<tr>");
            out.println("<th>"+n+"<th>");
            out.println("<th>x<th>");
            out.println("<th>"+i+"<th>");
            out.println("<th>=<th>");
            out.println("<th>"+(n*i)+"<th>");
            out.println("</tr>");
            }
            out.println("</table>");
            out.println("<p>...</p>");
            out.println("<h4><a href='index.html'>Home</a></h4>");
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
