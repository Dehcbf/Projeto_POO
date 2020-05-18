<%-- 
    Document   : index
    Created on : 17/05/2020, 17:10:50
    Author     : DÉBORACRISTINABRANDÃ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Projeto 02</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
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
                margin: auto; 
                overflow: auto;
            }
            
            .conteudo{
                text-align: center;
                background-size: 100%;
                min-height: 300px;
                padding: 150px 0 0 0;
                clear: both;
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
                <%@include file="WEB-INF/jspf/header.jspf" %>
            </div>
        </header>
            
        <div class="container">
            <div class="conteudo">
                <a href="Cliente/list.jsp">Cliente</a>
                <a href="Fornecedor/list.jsp">Fornecedor</a>
            </div>
        </div>
            
        <footer>
            <div class="bottom">
                <%@include file="WEB-INF/jspf/footer.jspf" %>
            </div>
        </footer>
        
    </body>
</html>