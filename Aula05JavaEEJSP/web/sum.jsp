<%-- 
    Document   : sum
    Created on : 31 de ago. de 2021, 19:39:06
    Author     : Lucas dos Santos Reis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
   String errorMessage = null;
   double n1 = 0 ,n2 = 0,result = 0;
   
    try{n1= Double.parseDouble(request.getParameter("n1"));
  }catch (Exception e){errorMessage = "Erro ao ler parâmetro n1";
   }

   try{n2= Double.parseDouble(request.getParameter("n2"));
 }catch (Exception e){errorMessage = "Erro ao ler parâmetro n2";
   }
   try{ result = n1 + n2;
 }catch (Exception e){errorMessage = "Erro ao calcular soma - " + e.getMessage();
   }
%>
<html>
    <head>
        <title>JavaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>
        <h3>Soma</h3>
        <%if (errorMessage == null){%>
        <h4><%= n1 %> + <%= n2 %> = <%= result %> </h4>
           <%}else{ %>
           <div style="color: red"><%= errorMessage %></div>
          <%}%>
        <form>
            <input type="number" name="n1" value="1"/> + 
            <input type="number" name="n2" value="1"/> 
            <input type="submit" value="="/>
        <h3><a href="index.html"><< Back</a><h3/>
    </body>
</html>
