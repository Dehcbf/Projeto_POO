<%-- 
    Document   : add_Fornecedor
    Created on : 12/05/2020, 20:00:34
    Author     : Fernanda
--%>

<%@page import="fatec.oo.DB"%>
<%@page import="fatec.oo.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        String aviso = null;
        if (request.getParameter("add") != null) {

            if (!request.getParameter("nome").toString().isEmpty() && !request.getParameter("razao_social").toString().isEmpty()
                    && !request.getParameter("cnpj").toString().isEmpty() && !request.getParameter("email").toString().isEmpty()
                    && !request.getParameter("tel").toString().isEmpty() && !request.getParameter("end").toString().isEmpty()) {

                Fornecedor fornecedor = new Fornecedor();

                fornecedor.setNome(request.getParameter("nome").toString());
                fornecedor.setRazao_social(request.getParameter("razao_social").toString());
                fornecedor.setCnpj(request.getParameter("cnpj").toString());
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
                <h1>Adicionar fornecedor</h1>
                <%if(aviso != null){%>
                <h3 style="color: red"><%=aviso%></h3>
                <%}%>
                <form method="post">
                    <label for="nome">Nome:</label>
                    <input type="text" name="nome"><br><br>
                    <label for="nome">Razão Social:</label>
                    <input type="text" name="razao_social"><br><br>
                    <label for="nome">CNPJ:</label>
                    <input type="text" name="cnpj"><br><br>
                    <label for="nome">Email:</label>
                    <input type="text" name="email"><br><br>
                    <label for="nome">Telefone:</label>
                    <input type="text" name="tel"><br><br>
                    <label for="nome">Endereço:</label>
                    <input type="text" name="end"><br><br>
                    <input type="submit" name="add" value="Adicionar fornecedor"><br>
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