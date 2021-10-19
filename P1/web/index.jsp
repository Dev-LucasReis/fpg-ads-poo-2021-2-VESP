<%-- 
    Document   : index
    Created on : 4 de out. de 2021, 01:41:35
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
        <title>Lucas-Reis-P1</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>P1 - POO</h2>
        <hr/><!-- Quebra de linha -->
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
