<%-- 
    Document   : Lucas-Reis-dica-megasena
    Created on : 3 de out. de 2021, 23:19:31
    Author     : Lucas dos Santos Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lucas-Reis-dica-megasena</title>
    </head>
    <body>
       <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Megasena</h1>
        <hr/>
        <%if(authUserName==null ){%>
            <p style="color: red">Você não tem permissão para ver este conteúdo</p>
        <%}else{%>
   <table border = "1">
            <tr>
                <th>Indice</th>
                <th>Numero</th>
            </tr>    
                <% for (int i = 1; i <= 6; i ++){ %>
            <tr>
            <td><%= i %></td>
            <td><%=  ((int) (60*Math.random())) %></td>
            </tr>  
            <%}%>  
  </table>
        <%}%>
            <hr/>
    </body>
</html>
