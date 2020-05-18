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
        <title>Fornecedor - Lista</title>
        
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
            </div>
        </div>
        
        <footer>
            <div id="bottom">
               <%@include file="../WEB-INF/jspf/footer.jspf" %>
            </div>
        </footer>
    </body>
</html>