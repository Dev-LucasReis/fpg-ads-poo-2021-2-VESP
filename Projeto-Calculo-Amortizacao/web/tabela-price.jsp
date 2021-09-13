<%-- 
    Document   : tabela-price
    Created on : 13 de set. de 2021, 16:10:58
    Author     : Lucas dos Santos Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
    </head>
    <body>
        <% double n1 , n2,aux,aux2,aux3,  resultado = 0;
            int    n3 = 0;
            try{n1 = Double.parseDouble(request.getParameter("n1"));
                n2 = Double.parseDouble(request.getParameter("n2"));
                n2 = n2/100;
                n3 = Integer.parseInt(request.getParameter("n3"));
                
                
               aux  = Math.pow(1+n2,n3)-1;
               aux2 = Math.pow(1+n2, n3)*n2;
               aux3 = aux/aux2;
               
               resultado = n1/aux3;
   
            out.println("<h4> Valor Presente: " + n1 + "<hr/>"+  "Taxa de Juros: " +n2+ "<hr/>"+"Meses: " + n3+  "<hr/>"+ "Parcelas Fixas de :" + " = " +resultado+"</h4>");
   }catch(Exception ex){
            out.println("<p style='color: red'>Error ao ler parâmetro: "+ex.getMessage()+"</p>");
            }
            %>
            
            <h4><a href='index.jsp'>Pagina Inicial</a></h4>
    </body>
</html>
