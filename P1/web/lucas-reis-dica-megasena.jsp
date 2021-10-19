<%-- 
    Document   : lucas-reis-dica-megasena
    Created on : 4 de out. de 2021, 01:43:44
    Author     : Lucas dos Santos Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Integer> numbers = (ArrayList)session.getAttribute("auth-numbers");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>lucas-reis-dica-megasena</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>MEGASENA:</h1>
        <hr/><!-- comment -->
        <%if(session.getAttribute("auth-username")==null){%>
            <div>Você não tem permissão para ver essa página</div>
        <%}else if(numbers == null){%>
            <div>Não foram gerados números para você. :(</div>
        <%}else{%>
            <table border="1">
                <tr>
                    <th>Número</th>
                </tr>
                <%for(int n: numbers){%>
                <tr>
                    <td><%= n %></td>
                </tr>
                <%}%>
            </table>
        <%}%>
    </body>
</html>
