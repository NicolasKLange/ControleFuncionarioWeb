<%-- 
    Document   : consultaFunc
    Created on : 11 de set. de 2024, 09:17:11
    Author     : nicolas_lange
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ControleFuncionario.Funcionario"%>

            <!--  Consultar Funcion�rio -->
                    <div class="table-container">
                        <h4 class="text-center">Funcion�rios Cadastrados</h4>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>IdDep</th>
                                    <th>Descri��o</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    Funcionario fun = new Funcionario();
                                    List<Funcionario> lista = fun.listarFunc();

                                    for (Funcionario d : lista) {
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
