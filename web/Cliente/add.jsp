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
                margin-top: 15px;
                background-size: 100%;
                min-height: 420px;
                clear: both;
                text-align: left;
            }
            
            .conteudo a{
                color: black;
                text-decoration: none;
                font-size: 40px;
                padding-right: 60px;
            }
            
            .conteudo a:hover{
                color: darkkhaki;
            }
            
            .bottom{
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
                <h1>Adicionar cliente</h1>
                <%if(aviso != null){%>
                <h3 style="color: red"><%=aviso%></h3>
                <%}%>
                <form method="post">
                    <label for="nome">Nome:</label>
                    <input type="text" name="nome"><br><br>
                    <label for="nome">CPF:</label>
                    <input type="text" name="cpf"><br><br>
                    <label for="nome">RG:</label>
                    <input type="text" name="rg"><br><br>
                    <label for="nome">Email:</label>
                    <input type="text" name="email"><br><br>
                    <label for="nome">Telefone:</label>
                    <input type="text" name="tel"><br><br>
                    <label for="nome">Endereço:</label>
                    <input type="text" name="end"><br><br>
                    <input type="submit" name="add" value="Adicionar cliente"><br>
                </form>
            </div>
        </div>
        
        <footer>
            <div id="bottom">
               <%@include file="../WEB-INF/jspf/footer.jspf" %>
            </div>
        </footer>
    </body>
</html>
