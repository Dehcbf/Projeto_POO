<%-- 
    Document   : list.jsp
    Created on : 11/05/2020, 14:57:53
    Author     : Daniel
--%>

<%@page import="fatec.oo.Cliente"%>
<%@page import="fatec.oo.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente - Lista</title>
    </head>
    <body>
        <h1>Lista de clientes</h1>
        <%if(DB.getClientes()!= null){%>
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
                <%for(Cliente cliente: DB.getClientes()){%>
                <tr>
                    <td><%=cliente.getNome()%></td>
                    <td><%=cliente.getCpf()%></td>
                    <td><%=cliente.getRg()%></td>
                    <td><%=cliente.getEmail()%></td>
                    <td><%=cliente.getTelefone()%></td>
                    <td><%=cliente.getLogradouro()%></td>
                    <%int i = DB.getClientes().indexOf(cliente); %>
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

