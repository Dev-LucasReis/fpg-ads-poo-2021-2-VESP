<%-- 
    Document   : timestamp
    Created on : 31 de ago. de 2021, 19:28:12
    Author     : Lucas dos Santos Reis
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JavaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>
        <h3><a href="">Data/hora</a></h3>
        <%
             Date now = new Date();
             out.println(now);
        %>
        
        <h3><a href="index.html"><< Back</a><h3/>
    </body>
</html>
