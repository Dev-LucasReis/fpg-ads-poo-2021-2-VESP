<%-- 
    Document   : Calendario
    Created on : 5 de set. de 2021, 16:14:32
    Author     : Lucas dos Santos Reis
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.Scanner"%>
<%@page import="jdk.internal.util.xml.impl.Input"%>
<%@page import="javax.swing.JTextField"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormatSymbols"%>
<%@page import="java.util.Locale"%>
<%@page import="javax.swing.SwingConstants"%>
<%@page import="javax.swing.table.DefaultTableCellRenderer"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
   String errorMessage = null;
   int n1 = 0 ,n2 = 0;
   
    try{n1 = Integer.parseInt(request.getParameter("n1"));
  }catch (Exception e){errorMessage = "Erro ao ler parâmetro n1";
   }

   try{n2 = Integer.parseInt(request.getParameter("n2"));
 }catch (Exception e){errorMessage = "Erro ao ler parâmetro n2";
   }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JavaEE - JSP</title>
    </head>
    <body>
        <h1>Calendario</h1>
        <h2>Java Server Pages</h2>
        <%
        
        %>
        
        
        <form method="post" action="Calendario.jsp">
            <h4>Digite o MES que desejar:</h4>
            <input type="number" name="mes" value="1"/> 
            <h4>Digite o ANO que desejar:</h4>
            <input type="number" name="ano" value="1"/> 
            <input type="submit" value="Gerar"/>
        </form>
        <h3><a href="index.html"><< Back</a><h3/>
    </body>
</html>
