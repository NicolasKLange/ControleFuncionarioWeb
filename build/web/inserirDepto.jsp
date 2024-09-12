<%-- 
    Document   : inserirDepto
    Created on : 10 de set. de 2024, 08:52:12
    Author     : nicolas_lange
--%>

<%@page import="ControleFuncionario.Departamento"%>

<!--FUNÇÃO PARA INCLUIR DEPARTAMENTO-->
<%
    String vDescDepto = request.getParameter("descDepto");

    Departamento dep = new Departamento();
    dep.setDescDepto(vDescDepto);

    boolean inseriu = dep.incluirDepto();

    //VERIFICA SE DEU CERTO EM INCLUIR DEPARTAMENTO
    if (inseriu) {
        response.sendRedirect("Departamento.jsp");
    } else {
        response.sendRedirect("Departamento.jsp");
    }
%>

