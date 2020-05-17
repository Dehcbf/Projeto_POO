<%-- 
    Document   : list
    Created on : 17/05/2020, 11:43:47
    Author     : DÉBORACRISTINABRANDÃ
--%>

<%@page import="fatec.oo.Fornecedor"%>
<%@page import="fatec.oo.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente - Lista</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf"%>
        <h1>Lista de fornecedores</h1>
        <%if(DB.getFornecedores()!= null){%>
        <table border="1">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>RG</th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>Endereço</th>
                    <th>Opção</th>
                </tr>
            </thead>
            <tbody>
                <%for(Fornecedor fornecedor: DB.getFornecedores()){%>
                <tr>
                    <td><%=fornecedor.getNome()%></td>
                    <td><%=fornecedor.getCnpj()%></td>
                    <td><%=fornecedor.getRazao_social()%></td>
                    <td><%=fornecedor.getEmail()%></td>
                    <td><%=fornecedor.getTelefone()%></td>
                    <td><%=fornecedor.getLogradouro()%></td>
                    <%int i = DB.getClientes().indexOf(fornecedor); %>
                    <td><a href="edit.jsp?i=<%=i%>">Editar</a>
                        <a href="delete.jsp?i=<%=i%>">Deletar</a>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>
        <%} else{%>
            <h3>Lista vazia</h3> 
        <%}%>
    </body>
</html>

