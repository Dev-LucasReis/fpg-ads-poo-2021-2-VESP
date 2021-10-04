<%-- 
    Document   : index
    Created on : 3 de out. de 2021, 21:55:58
    Author     : Lucas dos Santos Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lucas-Reis-P1</title>      
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %> 
        <h2>P1-POO</h2>
        <hr/>
        <p>Conteudo Publico...</p>
   <%int cont = 0;%>
   
   <%if(authUserName != null){%>
   A quantidade total de usuários identificados (logados) no site:
   <%cont = cont +1;%>
   <%out.print(cont);%>
   <hr/>
   
   <table border ="1 " >
       <tr>
            <th><p>nomes das sessões identificadas no momento</p></th>
       <tr/>
       <tr><td><%= authUserName%></td></tr>
   </table>
   <%}else{cont = cont -1;}%>
  </body>
</html>
