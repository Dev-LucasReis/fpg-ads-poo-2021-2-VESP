<%-- 
    Document   : index
    Created on : 25 de abr. de 2022, 05:33:03
    Author     : Lucas dos Santos Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int sessions = 0;
    ArrayList<String> sessionList = null;
    if(application.getAttribute("sessionList")!=null){
        sessionList = (ArrayList)application.getAttribute("sessionList");
        sessions = sessionList.size();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atividade-Controle de Sessao</title>
    </head>
    <body>
       <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Atividade de Entrega</h2>
        <hr/>
        <h2>Página inicial</h2>
        <h3>Sessões: <u><%= sessions %></u></h3>
        <%if(session.getAttribute("auth-username")!=null && sessionList!=null){%>
        <ul>
            <%for(String name: sessionList){%>
            <li><%= name %></li>
            <%}%>
        </ul>
        <%}%>
    </body>
</html>
