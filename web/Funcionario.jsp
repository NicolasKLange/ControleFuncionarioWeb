<%-- 
    Document   : Departamento
    Created on : 11 de set. de 2024, 08:38:51
    Author     : nicolas_lange
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ControleFuncionario.Funcionario"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Controle de Funcionário</title>
        <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'>
        <link rel="stylesheet" href="style/style.css">

        <style>
           
            .table-container {
                border: 1px solid #ddd;
                
                margin-top: 20px;
                border-radius: 10px;
                background-color: #f9f9f9;
            }
            .table {
                margin-bottom: 0;
            }
        </style>
    </head>
    <body>
        <header>
            <%
                String email = (String) session.getAttribute("usuario");
                if (email == null) {
                    response.sendRedirect("usuarioNaoLogado.html");
                }
            %>
            <nav class="navbar navbar-expand navbar-dark bg-primary">
                <div class="container-fluid">
                    <a href="menu.jsp" id="menu-toggle" class="navbar-brand"><span class="navbar-toggler-icon"></span></a>
                    <div class="sidebar-brand">
                        <a href="menu.jsp">Controle de Funcionário</a>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarsExample02">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="menu.jsp">Home <span class="sr-only">(current)</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <div id="wrapper" class="toggled">
            <div id="sidebar-wrapper">
                <ul class="sidebar-nav">
                    <li><a href="Departamento.jsp">Departamento</a></li>
                    <li><a href="Funcionario.jsp">Funcionario</a></li>
                    <li><a href="folhaPagto.jsp">Folha Pagamento</a></li>
                </ul>
            </div>
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <h2 class="card-title text-center">Funcionário</h2>

                    <!-- Inserir Funcionário -->
                    <form action="inserirFunc.jsp">
                        <div class="form-group">
                            <label for="descDepto">Inserir Funcionário</label>
                            <input type="text" id="nomeFunc" name="nomeFunc" class="form-control" placeholder="Digite o nome do Funcionário">
                            <input type="text" id="idDepto" name="idDepto" class="form-control" placeholder="Digite o id departamento do Funcionário">
                            <input type="text" id="salHora" name="salHora" class="form-control" placeholder="Digite o salário por hora do Funcionário">
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Inserir</button>
                        <button type="reset" class="btn btn-secondary btn-block">Cancelar</button>
                    </form>

                    <!--  Excluir Funcionário -->
                    <form action="excluirFunc.jsp" method="get">
                        <div class="form-group">
                            <label for="idFunc">Excluir Funcionário</label>
                            <input type="text" id="idFunc" name="idFunc" class="form-control" placeholder="Digite o ID do Funcionário" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Excluir</button>
                        <button type="reset" class="btn btn-secondary btn-block">Cancelar</button>
                    </form>

                    <!--  Alterar Funcionário -->
                    <form action="alterarFunc.jsp" method="get">
                        <div class="form-group">
                            <label for="idFunc">Alterar Funcionário</label>
                            <input type="text" id="idFunc" name="idFunc" class="form-control" placeholder="Digite o ID do Funcionário">
                            <input type="text" id="nomeFunc" name="nomeFunc" class="form-control" placeholder="Digite o nome do Funcionário">
                            <input type="text" id="idDepto" name="idDepto" class="form-control" placeholder="Digite o id departamento do Funcionário">
                            <input type="text" id="salHora" name="salHora" class="form-control" placeholder="Digite o salário por hora do Funcionário">
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Alterar</button>
                        <button type="reset" class="btn btn-secondary btn-block">Cancelar</button>
                    </form>
                    
                </div>
            </div>
        </div>
    </body>
</html>


