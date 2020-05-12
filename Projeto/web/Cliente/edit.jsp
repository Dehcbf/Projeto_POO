<%-- 
    Document   : edit
    Created on : 11/05/2020, 21:15:30
    Author     : Daniel
--%>

<%@page import="fatec.oo.DB"%>
<%@page import="fatec.oo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String aviso = null;
    int i = Integer.parseInt(request.getParameter("i"));
    Cliente cliente = null;
    
    cliente = DB.getClientes().get(i);
    
    if(request.getParameter("edit") != null){
        if (!request.getParameter("nome").toString().isEmpty() && !request.getParameter("cpf").toString().isEmpty()
                    && !request.getParameter("rg").toString().isEmpty() && !request.getParameter("email").toString().isEmpty()
                    && !request.getParameter("tel").toString().isEmpty() && !request.getParameter("end").toString().isEmpty()) {


                cliente.setNome(request.getParameter("nome").toString());
                cliente.setCpf(request.getParameter("cpf").toString());
                cliente.setRg(request.getParameter("rg").toString());
                cliente.setEmail(request.getParameter("email").toString());
                cliente.setTelefone(request.getParameter("tel").toString());
                cliente.setLogradouro(request.getParameter("end").toString());
                
                DB.getClientes().set(i, cliente);
                response.sendRedirect("list.jsp");
                       
            }
        else{
            aviso = "Dados incompletos!";
        }
    }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente - Editar</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <h1>Editar cliente</h1>
        <form method="post">
            <label for="nome">Nome do cliente:</label>
            <input type="text" name="nome" value="<%=cliente.getNome()%>"><br><br>
            <label for="nome">CPF do cliente:</label>
            <input type="text" name="cpf" value="<%=cliente.getCpf()%>"><br><br>
            <label for="nome">RG do cliente:</label>
            <input type="text" name="rg" value="<%=cliente.getRg()%>"><br><br>
            <label for="nome">Email do cliente:</label>
            <input type="text" name="email" value="<%=cliente.getEmail()%>"><br><br>
            <label for="nome">Telefone do cliente:</label>
            <input type="text" name="tel" value="<%=cliente.getTelefone()%>"><br><br>
            <label for="nome">Endereço do cliente:</label>
            <input type="text" name="end" value="<%=cliente.getLogradouro()%>"><br><br>
            <input type="submit" name="edit" value="Editar cliente"><br>
        </form>
        
    </body>
</html>
