<%-- 
    Document   : edit
    Created on : 17/05/2020, 11:33:11
    Author     : DÉBORACRISTINABRANDÃ
--%>

<%@page import="fatec.oo.DB"%>
<%@page import="fatec.oo.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String aviso = null;
    int i = Integer.parseInt(request.getParameter("i"));
    Fornecedor fornecedor = null;
    
    fornecedor = DB.getFornecedores().get(i);
    
    if(request.getParameter("edit") != null){
        if (!request.getParameter("nome").toString().isEmpty() && !request.getParameter("cnpj").toString().isEmpty()
                    && !request.getParameter("razao_ocial").toString().isEmpty() && !request.getParameter("email").toString().isEmpty()
                    && !request.getParameter("tel").toString().isEmpty() && !request.getParameter("end").toString().isEmpty()) {


                fornecedor.setNome(request.getParameter("nome").toString());
                fornecedor.setCnpj(request.getParameter("cnpj").toString());
                fornecedor.setRazao_social(request.getParameter("razao_social").toString());
                fornecedor.setEmail(request.getParameter("email").toString());
                fornecedor.setTelefone(request.getParameter("tel").toString());
                fornecedor.setLogradouro(request.getParameter("end").toString());
                
                DB.getFornecedores().set(i, fornecedor);
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
        <title>Fornecedor - Editar</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <h1>Editar fornecedor</h1>
        <form method="post">
            <label for="nome">Nome do fornecedor:</label>
            <input type="text" name="nome" value="<%=fornecedor.getNome()%>"><br><br>
            <label for="nome">CPF do fornecedor:</label>
            <input type="text" name="cpf" value="<%=fornecedor.getCnpj()%>"><br><br>
            <label for="nome">RG do fornecedor:</label>
            <input type="text" name="rg" value="<%=fornecedor.getRazao_social()%>"><br><br>
            <label for="nome">Email do fornecedor:</label>
            <input type="text" name="email" value="<%=fornecedor.getEmail()%>"><br><br>
            <label for="nome">Telefone do fornecedor:</label>
            <input type="text" name="tel" value="<%=fornecedor.getTelefone()%>"><br><br>
            <label for="nome">Endereço do fornecedor:</label>
            <input type="text" name="end" value="<%=fornecedor.getLogradouro()%>"><br><br>
            <input type="submit" name="edit" value="Editar cliente"><br>
        </form>
        
    </body>
</html>