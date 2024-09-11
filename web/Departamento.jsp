<%-- 
    Document   : Departamento
    Created on : 10 de set. de 2024, 08:38:51
    Author     : nicolas_lange
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ControleFuncionario.Departamento"%>

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
                    <h2 class="card-title text-center">Departamento</h2>

                    <!-- Inserir departamento -->
                    <form action="inserirDepto.jsp">
                        <div class="form-group">
                            <label for="descDepto">Inserir Departamento</label>
                            <input type="text" id="descDepto" name="descDepto" class="form-control" placeholder="Digite o nome do departamento">
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Inserir</button>
                        <button type="reset" class="btn btn-secondary btn-block">Cancelar</button>
                    </form>

                    <!--  Excluir departamento -->
                    <form action="excluirDepto.jsp" method="get">
                        <div class="form-group">
                            <label for="idDepto">Excluir Departamento</label>
                            <input type="text" id="idDepto" name="idDepto" class="form-control" placeholder="Digite o ID do departamento" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Excluir</button>
                        <button type="reset" class="btn btn-secondary btn-block">Cancelar</button>
                    </form>

                    <!--  Alterar departamento -->
                    <form action="alterarDepto.jsp" method="get">
                        <div class="form-group">
                            <label for="idDepto">Alterar Departamento</label>
                            <input type="text" id="idDepto" name="idDepto" class="form-control" placeholder="Digite o ID do departamento" required>
                            <input type="text" id="descDepto" name="descDepto" class="form-control" placeholder="Digite o nome do departamento" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Alterar</button>
                        <button type="reset" class="btn btn-secondary btn-block">Cancelar</button>
                    </form>
                    
                    <!--  Consultar departamentos -->
                    <div class="table-container">
                        <h4 class="text-center">Departamentos Cadastrados</h4>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>IdDep</th>
                                    <th>Descrição</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    Departamento dep = new Departamento();
                                    List<Departamento> lista = dep.listarDeptos();

                                    for (Departamento d : lista) {
                                %>
                                <tr>
                                    <td><%= d.getIdDepto()%></td>
                                    <td><%= d.getDescDepto()%></td>
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
    </body>
</html>


