<%-- 
    Document   : index
    Created on : 20 de set. de 2021, 17:29:32
    Author     : Lucas dos Santos Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("setName") != null){
        
    
       request.setAttribute("name", request.getParameter("name"));
    }
    
          String requestName = null;  
          String sessionName = null;  
          String applicationName = null;  
          String error = null;
          
          try{
              if(request.getAttribute("name") != null){
                  requestName = (String) request.getAttribute("name");
              }
          }catch(Exception ex){
              error = ex.getMessage();
          }try{
             if(session.getAttribute("name") != null){
             sessionName = (String) request.getAttribute("name");
             }
          }catch(Exception ex) {
              error = ex.getMessage();
          }
          try{
             if(application.getAttribute("name") != null){
             applicationName = (String) request.getAttribute("name");
             }
          }catch(Exception ex) {
              error = ex.getMessage();
          }
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LucasReisApp</title>
    </head>
    <body>
        <h1><a href="index.jsp"> ConextApp</a></h1>
        <%@include file="META-INF/jspf/header.jspf" %> %>
        <h2>Índice</h2>
        <p>Conteúdo público...</p>
        <form>
            Contexto:
            <select>
                <option value="request"> Requisição</option>
                <option value="session"> Sessão</option>
                <option value="application"> Aplicação</option>
            </select>
            Nome:  <input type="text" name="name"/>
            Senha: <input type="password" name="senha"/>
            <input type="submit" name="setName" value="Enviar"/>
        </form>
        <% if (requestName!= null){%>
        <hr/>
        <h3>Atributo de requisição</h3>
        <div><%= requestName %></div>
        <%}%>
        
        <% if(sessionName != null){%>
        <hr/>
        <h3>Atributo de requisição</h3>
        <div><%= sessionName %></div>
        <}%>
        
        <% if (applicationName != null) {%>
        <hr/>
        <h3>Atributo de requisição</h3>
        <div><%= applicationName %></div>
        <%}%>
        
     </body>
</html>
