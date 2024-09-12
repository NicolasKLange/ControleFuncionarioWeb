<%-- 
    Document   : Departamento
    Created on : 11 de set. de 2024, 08:38:51
    Author     : nicolas_lange
--%>

<!--IMPORTANDO LIBRARIES PARA LISTAR DEPARTAMENTOS-->
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page import="ControleFuncionario.Funcionario"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!--TITULO DA PÁGINA-->
        <meta charset="UTF-8">
        <title>Controle de Funcionário</title>
        <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'>
        <link rel="stylesheet" href="style/style.css">
    </head>
    <body>
        <header>
            <!--VERIFICA SE USUÁRIO ESTÁ LOGADO-->
            <%
                String email = (String) session.getAttribute("usuario");
                if (email == null) {
                    response.sendRedirect("usuarioNaoLogado.html");
                }
            %>
            <!--MENU ESTILIZADO PARA CONTROLE DE FUNCIONÁRIOS-->
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
        <!--MENU LATERAL PARA NAVEGAR ENTRE AS PRINCIPAIS FUNCIONALIDADES-->
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

                    <!--INSERIR FUNCINARIO-->
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

                    <!--EXCLUIR FUNCIONARIO-->
                    <form action="excluirFunc.jsp" method="get">
                        <div class="form-group">
                            <label for="idFunc">Excluir Funcionário</label>
                            <input type="text" id="idFunc" name="idFunc" class="form-control" placeholder="Digite o ID do Funcionário" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Excluir</button>
                        <button type="reset" class="btn btn-secondary btn-block">Cancelar</button>
                    </form>

                    <!--ALTERAR FUNCIONARIO-->
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

                    <!--CONSULTAR FUNCIONARIOS-->
                    <div class="table-container">
                        <h4 class="text-center">Funcionários Cadastrados</h4>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>IdFunc</th>
                                    <th>Nome</th>
                                    <th>IdDepto</th>
                                    <th>Salário Hora</th>
                                </tr>
                            </thead>
                            <!--LISTA PARA CONSULTAR FUNCIONARIOS-->
                            <tbody>
                                <%
                                    Funcionario fun = new Funcionario();
                                    List<Funcionario> lista = fun.listarFunc();

                                    for (Funcionario d : lista) {
                                %>
                                <tr>
                                    <td><%= d.getIdFunc()%></td>
                                    <td><%= d.getNomeFunc()%></td>
                                    <td><%= d.getIdDepto()%></td>
                                    <td><%= d.getSalHora()%></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!--STYLE PARA EDITAR TABELA DE CONSULTA DOS FUNCIONÁRIOS-->
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
    </body>
</html>


