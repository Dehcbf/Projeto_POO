<%-- 
    Document   : delete
    Created on : 12/05/2020, 21:00:24
    Author     : Fernanda
--%>

<%@page import="fatec.oo.Fornecedor"%>
<%@page import="fatec.oo.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    String error = null;
    Fornecedor fornecedor = null;
    int i = -1;
    if(request.getParameter("i") != null){
        i = Integer.parseInt(request.getParameter("i"));
        fornecedor = DB.getFornecedores().get(i);
        if(fornecedor == null){
            error = "Índice inválido!";
        }else{
            if(request.getParameter("delete")!=null){      
                DB.getFornecedores().remove(i);
                response.sendRedirect("list.jsp");
            }
        }
    }else{
        error = "Índice inválido!";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedor - Deletar</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <h1>Excluir fornecedor</h1>
        <h3>Tem certeza que deseja apagar o fornecedor da lista?</h3>
 <%if(error!=null){%>
        <div style="color:red"><%=error%></div>
        <%}else{%>
        <br/>
        <form method="post">
            <input type="hidden" name="i" value="<%=i%>"/>
           
            Nome do usuário:<br/>
            <b><%=fornecedor.getNome()%></b><br/>
            
            Email: <br/>
            <b><%=fornecedor.getEmail()%>"</b><br/>
            
            Telefone: <br/>
            <b><%=fornecedor.getTelefone()%></b><br/><br/>
            
            <input type="submit" name="delete" value="Excluir"><br/>

        </form>
        <%}%>
    </body>
</html>