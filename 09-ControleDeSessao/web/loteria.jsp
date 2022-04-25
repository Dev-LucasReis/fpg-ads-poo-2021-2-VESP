<%-- 
    Document   : loteria
    Created on : 25 de abr. de 2022, 05:52:28
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
        <title>dicas para loteria</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>dicas para loteria</h1>
        <hr/>
         <%if(session.getAttribute("auth-username")==null){%>
            <p style="color: red">Você não tem permissão para ver essa página
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
