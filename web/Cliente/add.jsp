<%-- 
    Document   : add
    Created on : 11/05/2020, 15:32:11
    Author     : Daniel
--%>

<%@page import="fatec.oo.DB"%>
<%@page import="fatec.oo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        String aviso = null;
        if (request.getParameter("add") != null) {

            if (!request.getParameter("nome").toString().isEmpty() && !request.getParameter("cpf").toString().isEmpty()
                    && !request.getParameter("rg").toString().isEmpty() && !request.getParameter("email").toString().isEmpty()
                    && !request.getParameter("tel").toString().isEmpty() && !request.getParameter("end").toString().isEmpty()) {

                Cliente cliente = new Cliente();

                cliente.setNome(request.getParameter("nome").toString());
                cliente.setCpf(request.getParameter("cpf").toString());
                cliente.setRg(request.getParameter("rg").toString());
                cliente.setEmail(request.getParameter("email").toString());
                cliente.setTelefone(request.getParameter("tel").toString());
                cliente.setLogradouro(request.getParameter("end").toString());
                
                DB.getClientes().add(cliente);
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
        <title>Cliente - Adicionar</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf"%>
        <h1>Adicionar cliente</h1>
        <%if(aviso != null){%>
        <h3 style="color: red"><%=aviso%></h3>
        <%}%>
        <form method="post">
            <label for="nome">Nome do cliente:</label>
            <input type="text" name="nome"><br><br>
            <label for="nome">CPF do cliente:</label>
            <input type="text" name="cpf"><br><br>
            <label for="nome">RG do cliente:</label>
            <input type="text" name="rg"><br><br>
            <label for="nome">Email do cliente:</label>
            <input type="text" name="email"><br><br>
            <label for="nome">Telefone do cliente:</label>
            <input type="text" name="tel"><br><br>
            <label for="nome">Endereço do cliente:</label>
            <input type="text" name="end"><br><br>
            <input type="submit" name="add" value="Adicionar cliente"><br>
        </form>
    </body>
</html>
