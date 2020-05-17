<%-- 
    Document   : add
    Created on : 17/05/2020, 10:42:44
    Author     : DÉBORACRISTINABRANDÃ
--%>
<%@page import="fatec.oo.DB"%>
<%@page import="fatec.oo.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        String aviso = null;
        if (request.getParameter("add") != null) {

            if (!request.getParameter("nome").toString().isEmpty() && !request.getParameter("cnpj").toString().isEmpty()
                    && !request.getParameter("razao_social").toString().isEmpty() && !request.getParameter("email").toString().isEmpty()
                    && !request.getParameter("tel").toString().isEmpty() && !request.getParameter("end").toString().isEmpty()) {

                Fornecedor fornecedor = new Fornecedor();

                fornecedor.setNome(request.getParameter("nome").toString());
                fornecedor.setCnpj(request.getParameter("cnpj").toString());
                fornecedor.setRazao_social(request.getParameter("razão social").toString());
                fornecedor.setEmail(request.getParameter("email").toString());
                fornecedor.setTelefone(request.getParameter("tel").toString());
                fornecedor.setLogradouro(request.getParameter("end").toString());
                
                DB.getFornecedores().add(fornecedor);
                response.sendRedirect("list.jsp");
                       
            }
            
            else{
                 aviso = "Dados incompletos";
        
            }
        }
        
                 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedor - Adicionar</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf"%>
        <h1>Adicionar fornecedor</h1>
        <%if(aviso != null){%>
        <h3 style="color: red"><%=aviso%></h3>
        <%}%>
        <form method="post">
            <label for="nome">Nome do fornecedor:</label>
            <input type="text" name="nome"><br><br>
            <label for="nome">CPF do fornecedor:</label>
            <input type="text" name="cnpj"><br><br>
            <label for="nome">RG do fornecedor:</label>
            <input type="text" name="razão social"><br><br>
            <label for="nome">Email do fornecedor:</label>
            <input type="text" name="email"><br><br>
            <label for="nome">Telefone do fornecedor:</label>
            <input type="text" name="tel"><br><br>
            <label for="nome">Endereço do fornecedor:</label>
            <input type="text" name="end"><br><br>
            <input type="submit" name="add" value="Adicionar fornecedor"><br>
        </form>
    </body>
</html>
