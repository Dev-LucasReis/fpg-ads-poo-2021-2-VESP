<%-- 
    Document   : Lucas-Reis
    Created on : 3 de out. de 2021, 22:49:50
    Author     : Lucas dos Santos Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lucas-Reis</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Perfil</h1>
        <hr/>
        <%if(authUserName==null ){%>
            <p style="color: red">Você não tem permissão para ver este conteúdo</p>
        <%}else{%>
            <h3>RA: 1290482012021</h3>
            <h3>Lucas dos Santos Reis</h3>
            <h3>Semestre em que ingressou na Fatec: 1° Semestre de 2020!</h3>
           <a href="https://github.com/Dev-LucasReis">Link do Perfil do GITHUB</a>
        <hr/>
        <table border = "2">
            <tr>
                <th><p>Disciplinas:</p></th>
            <tr/>
            <tr><td>Banco de Dados</td></tr>
            <tr><td>Estrutura de Dados</td></tr>
            <tr><td>Engenharia de Software 3</td></tr>
            <tr><td>Interação Humano Computador</td></tr>
            <tr><td>Programação orientada a objetos</td></tr>
            <tr><td>Inglês 4</td></tr>
            <tr><td>Estátistica Aplicada</td></tr>
            <tr><td>Metodologia de Pesquisa Cientifico Tecnologica</td></tr>
       </table>
        <%}%>
        <hr/>
    </body>
</html>
