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
        <table border = "1" style="color: blue"> 
                <% for (int i = 1; i <= 10; i ++){ %>
            <tr>
                <td><%= n %></td>
                <td>x</td>
                <td><%=  i %></td>
                <td>=</td>
                <td><%= (n * i) %></td>
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
        <h3><a href="index.html"><< Back</a><h3/>
    </body>
</html>
