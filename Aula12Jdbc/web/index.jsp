<%-- 
    Document   : index
    Created on : 22 de nov. de 2021, 15:56:09
    Author     : Lucas dos Santos Reis
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.Tasks"%>
<%@page import="web.DbListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requesException = null;
    ArrayList<String> taskList = new ArrayList<>();
    try{
        if(request.getParameter("add")!= null){
            String taskName = request.getParameter("taskName");
            Tasks.addTaks(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("remove")!= null){
            String taskName = request.getParameter("taskName");
            Tasks.removeTaks(taskName);
            response.sendRedirect(request.getRequestURI());
        }    
        taskList = Tasks.getTasks();
    }catch(Exception ex){
        requesException = ex;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC - To-do list</title>
    </head>
    <body>
        <h1>JDBC - Lucas dos Santos Reis</h1>
        <div><%= new java.util.Date() %></div>
        <h2>To-do list</h2>
        <%if(DbListener.exception!=null){%>
        <div style="color: red">
            Erro na criação do banco de dados:
            <%= DbListener.exception.getMessage()%>
        </div>
        <%}%>
        
        <%if(requesException!=null){%>
        <div style="color: red">
            Erro na leitura ou gravação de tarefa:
            <%= requesException.getMessage()%>
        </div>
        <%}%>
        <h3>Tarefas</h3>
        <form>
            <input type="text" name="taskName"/>
            <input type="submit" name="add" value="Adicionar"/>
        </form>
        
        <table border="1">
            <%for(String taskName: Tasks.getTasks()){%>
            <tr>
                <td><%= taskName %></td>
                <td>
                    <form>
                        <input type="hidden" name="taskName" value="<%= taskName %>"/>
                        <input type="submit" name="remove" value="Remover"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
