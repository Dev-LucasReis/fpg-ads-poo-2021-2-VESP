<%-- 
    Document   : index
    Created on : 25 de abr. de 2022, 22:40:54
    Author     : Lucas
--%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="model.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Horario padrao = new Horario();
    
   Horario hoje = new Horario();
   hoje.setHoras(19);
   hoje.setMinutos(12);
   hoje.setSegundos(45);
   
           LocalDateTime agora = LocalDateTime.now(); 
           DateTimeFormatter formatterHora = DateTimeFormatter.ofPattern("HH:mm:ss");
           String horaFormatada = formatterHora.format(agora);

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manipular Horarios</title>
    </head>
    <body>
        <h1>Horario - Java</h1>
        <hr/>
        
        <h3>Horario Padrao da Classe:</h3>
        <div><%= padrao.getHoras() %>:<%= padrao.getMinutos()%>:<%= padrao.getSegundos()%></div>
        <hr/>
        
        <h3>Horario de hoje:</h3>
        <div><%= hoje.getHorario()%></div>
        <hr/>
        
        <h2>Data/Hora Atual:</h2><!-- comment -->  
        <h4>Lucas dos Santos Reis</h4>
        <div> <%= horaFormatada %> </div>
        <hr/>
    </body>
</html>
