<%-- 
    Document   : index
    Created on : 31 de out. de 2021, 16:05:41
    Author     : Lucas dos Santos Reis
--%>

<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Data padrao = new Data();
    
   Data hoje = new Data();
   hoje.setDia(31);
   hoje.setMes(10);
   hoje.setAno(2021);
   
   Data LucasNiver = new Data(19,12,1997);
   

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %> 
        <h2>CLASSE DATA</h2>
        <h3>Data Padrao da Classe:</h3>
        <div><%= padrao.getDia() %>/<%= padrao.getMes() %>/<%= padrao.getAno() %></div>
        <h3>Data de hoje:</h3>
        <div><%= hoje.getData() %></div>
        <h3>Meu Aniversario</h3>
        <div><%= LucasNiver.getData() %></div>
    </body>
</html>
