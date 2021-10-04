<%-- 
    Document   : lucas-reis-dica-megasena
    Created on : 4 de out. de 2021, 09:26:20
    Author     : Lucas dos Santos Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Megasena</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>MEGASENA</h1>
        <hr/><!-- comment -->
        <%if(authUserName == null){%>
        <p style="color: red">Você Não tem acesso a está pagina!!!</p>
        <%}else{%>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Numero</th>
            </tr>
            <% for(int i = 1; i <=6; i ++){%>
            <tr>
                <td><%=i%></td>
                <td><%= ((int)(60*Math.random()))%></td>
            </tr>
            <%}%>
        </table>
        <%}%>
    </body>
</html>
