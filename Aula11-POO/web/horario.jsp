<%-- 
    Document   : index
    Created on : 31 de out. de 2021, 16:05:41
    Author     : Lucas dos Santos Reis
--%>




<%@page import="model.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Horario padrao = new Horario();
    
   Horario hoje = new Horario();
   hoje.setHoras(19);
   hoje.setMinutos(12);
   hoje.setSegundos(45);

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %> 
        <h2>CLASSE HORARIO</h2>
        <h3>Horario Padrao da Classe:</h3>
        <div><%= padrao.getHoras() %>:<%= padrao.getMinutos()%>:<%= padrao.getSegundos()%></div>
        <h3>Horario de hoje:</h3>
        <div><%= hoje.getHorario()%></div>
    </body>
</html>
