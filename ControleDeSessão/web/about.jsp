<%-- 
    Document   : about
    Created on : 26 de set. de 2021, 00:11:08
    Author     : Lucas dos Santos Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LucasReisApp</title>
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <h2>Perfil</h2>
        <%if(authUserName==null ){%>
            <p style="color: red">Você não tem permissão para ver este conteúdo</p>
        <%}else{%>
            <p>Conteúdo da página...</p>
            <h1>Lucas dos Santos Reis</h1>
            <h4>RA: 1290482012021</h4>
            <a href="https://github.com/Dev-LucasReis">Link do Perfil do GITHUB</a>
        <hr/><!-- Pular Linha -->
        <%}%>
        <hr/>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
