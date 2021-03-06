<%-- 
    Document   : sum
    Created on : 31 de ago. de 2021, 19:39:06
    Author     : Lucas dos Santos Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
   String errorMessage = null;
   int n = 1;
   
    try{n = Integer.parseInt(request.getParameter("n"));
  }catch (Exception e){errorMessage = "Erro ao ler parâmetro n: " + request.getParameter("n")
          + "Não é um numero inteiro válido";
   }
%>
<html>
    <head>
        <title>JavaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>
        <h3>Numeros Aleatorios</h3>
        <%if (errorMessage == null){%>
        <table border = "1">
            <tr>
                <th>Indice</th>
                <th>Numero</th>
            </tr>    
                <% for (int i = 1; i <= n; i ++){ %>
            <tr>
                <td><%= i %></td>
                <td><%= ((int) (100*Math.random())) %></td>
            </tr>  
                   <%}%>  
        </table>
           <%}else{ %>
           <div style="color: red"><%= errorMessage %></div>
          <%}%>
          <hr/>
            <form>
                <input type="number" name="n" value="<%= n %>"/> 
            <input type="submit" value="Gerar"/>
            </form>
        <a href="index.html"><< Back</a>
    </body>
</html>
