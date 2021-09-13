<%-- 
    Document   : index
    Created on : 13 de set. de 2021, 15:51:47
    Author     : Lucas dos Santos Reis
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diretivas JSP - Índice</title>
        <%@include file="WEB-INF/jspf/bootstrap-head.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Página inicial</h2>
        <hr/>
        <h1>Lucas dos Santos Reis</h1>
        <h3>N° da Matricula: </h3>
        <h4>RA: 1290482012021</h4>
        <hr/>
        <h2>Table Price</h2>
        <hr/>
        <h3>Valor Presente:</h3>
        <form action="tabela-price.jsp">
            <input type="number" name="n1" step="0.01" value="1"/> 
            <hr/>
            <h3>juros (em %):</h3>
            <input type="number" name="n2" step="0.01" value="1"/>
            <hr/>
            <h3>Tempo em Meses:</h3>
            <input type="number" name="n3" value="1"/>
            <hr/>
            <input type="submit" value="Calcular Juros"/>
            <hr/>
        </form>
         <hr/>
        <h3><%= new Date() %></h3>
        <hr/>
        <h3><a href="page1.jsp">Página 1</a></h3>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
