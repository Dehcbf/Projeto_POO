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
        <title>Clientes - Lista</title>
        
        <style>
            *{
                font-family: arial;
                margin: 0px;
            }
            
            body{
                background-color: wheat;
            }
            
            header{
                margin-bottom: 20px;
                padding-bottom: 20px; 
            }
            
            foorter{
                clear: both;
                padding: 10px;
            }
            
            .container{ /* Altera o estilo da classe */
                width: 960px;
                margin: 10px; 
                overflow: auto;
                text-align: left;
            }
            
            .conteudo{
                background-size: 100%;
                min-height: 435px;
                clear: both;
                text-align: left;
            }
            
            .borda{
                border-collapse: collapse;
            }
            
            .borda{
                margin-top: 20px;
            }
            
            .borda td{
                width: auto;
                padding: 5px;
            }
            
            .borda th{
                text-align: center;
            }
            
            .borda td, th{
                border: 1px;
                border-color: #4F4F4F;
                border-style: solid;
            }
            
            .conteudo a{
                font-weight: bold;
                color: black;
                text-decoration: none;
            }
            
            .conteudo a:hover{
                color: darkkhaki;
            }
            
            #bottom{
                text-align: center;
            }
        </style>
        
    </head>
    <body>
        <header>
            <div class="top">
                <%@include file="../WEB-INF/jspf/menu.jspf"%>
            </div>
        </header>
        
        <div class="container">
            <div class="conteudo">
                <h1>Lista de clientes</h1>
                <%if(DB.getClientes()!= null){%>
            <table class="borda">
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
            </div>
        </div>
        
        <footer>
            <div id="bottom">
               <%@include file="../WEB-INF/jspf/footer.jspf" %>
            </div>
        </footer>
    </body>
</html>

