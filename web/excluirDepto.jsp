<%-- 
    Document   : excluirDepto
    Created on : 10 de set. de 2024, 09:13:34
    Author     : nicolas_lange
--%>

<%@page import="ControleFuncionario.Departamento"%>
<%
    int vIdDepto = Integer.parseInt(request.getParameter("idDepto"));

    Departamento dep = new Departamento();
    dep.setIdDepto(vIdDepto);

    boolean excluiu = dep.excluirDepartamento();
    if (excluiu) {
        response.sendRedirect("menu.jsp");
    } else {
        response.sendRedirect("UsuarioNaoLogado.html");
    }
%>

