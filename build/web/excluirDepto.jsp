<%-- 
    Document   : excluirDepto
    Created on : 10 de set. de 2024, 09:13:34
    Author     : nicolas_lange
--%>

<%@page import="ControleFuncionario.Departamento"%>

<!--FUN��O PARA EXCLUIR DEPARTAMENTO-->
<%
    int vIdDepto = Integer.parseInt(request.getParameter("idDepto"));

    Departamento dep = new Departamento();
    dep.setIdDepto(vIdDepto);

    boolean excluiu = dep.excluirDepartamento();

    //VERIFICA SE DEU CERTO EM EXCLUIR FUNCION�RIO
    if (excluiu) {
        response.sendRedirect("Departamento.jsp");
    } else {
        response.sendRedirect("Departamento.jsp");
    }
%>

