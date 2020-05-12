<%-- 
    Document   : delete
    Created on : 11/05/2020, 15:32:55
    Author     : Daniel
--%>

<%@page import="fatec.oo.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int i = Integer.parseInt(request.getParameter("i"));
    
    if(request.getParameter("delete") != null){
        DB.getClientes().remove(i);
        response.sendRedirect("list.jsp");
    }
    
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente - Deletar</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <h1>Excluir cliente</h1>
        <h3>Tem certeza que deseja apagar o cliente da lista?</h3>
        <form method="post">
            <input type="hidden" name="i" value="<%=i%>">
            <input type="submit" name="delete" value="Deletar">
        </form>
    </body>
</html>
