<%-- 
    Document   : lucas-reis-dica-megasena
    Created on : 4 de out. de 2021, 01:43:44
    Author     : Lucas dos Santos Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>lucas-reis-dica-megasena</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>MEGASENA:</h1>
        <hr/><!-- comment -->
        <%if(authUserName == null){%>
        <p style="color: red">Você não tem permissao para ver este conteudo!</p>
        <%}else{%>
        <table border="2">
            <tr>
                <th>INDICE:</th>
                <th>NUMEROS:</th>
            </tr>
            <% for (int i = 0; i <= 6; i ++){%>
            <tr>
                <td><%= i %></td>
                <td><%= ((int) (60*Math.random())) %></td>
            </tr>
            <%}%>
        </table>
        <%}%>
    </body>
</html>
