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
        <title>LucasReis</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <h1>PERFIL</h1>
        <hr/>
        <%if(authUserName == null){%>
        <p style="color: red">Você não tem permissao para ver este conteudo!</p>
        <%}else{%>
        <h2>RA: 1290482012021</h2>
        <h2>Nome:Lucas dos Santos Reis</h2>
        <h2>Semestre em que ingressou na Fatec: 1° Semestre de 2020</h2>
        <a href="https://github.com/Dev-LucasReis">LINK DO GITHUB</a>
        <hr/>
        
        <table border="1">
            <tr>
                <th><p>Disciplinas:</p></th>
            </tr>
            <tr><td>Banco de Dados</td></tr>
            <tr><td>Estrutura de Dados</td></tr>
            <tr><td>Engenharia de Software 3</td></tr>
            <tr><td>Interação Humano Computador</td></tr>
            <tr><td>Programação Orientada a Objetos</td></tr>
            <tr><td>Inglês 4</td></tr>
            <tr><td>Estatistica Aplicada</td></tr>
            <tr><td>Metodologia de Pesquisa Cientifico Tecnologia</td></tr>
        </table>
        <%}%>
    </body>
</html>
