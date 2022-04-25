<%-- 
    Document   : lucas-reis
    Created on : 4 de out. de 2021, 01:42:09
    Author     : Lucas dos Santos Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>09 - Controle de sessão</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <h1>Perfil</h1>
        <hr/>
        <%if(session.getAttribute("auth-username") == null){%>
        <p style="color: red">Você não tem permissao para ver este conteudo!
        <%}else{%>
        <h2>RA: 1290482012021</h2>
        <h2>Nome:Lucas dos Santos Reis</h2>
        <a href="https://github.com/Dev-LucasReis">LINK DO GITHUB</a>
        <hr/>
        <%}%>
    </body>
</html>