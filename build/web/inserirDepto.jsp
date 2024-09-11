<%-- 
    Document   : inserirDepto
    Created on : 10 de set. de 2024, 08:52:12
    Author     : nicolas_lange
--%>

<%@page import="ControleFuncionario.Departamento"%>
<%
    String vDescDepto = request.getParameter("descDepto");

    Departamento dep = new Departamento();
    dep.setDescDepto(vDescDepto);

    boolean inseriu = dep.incluirDepto(); 

    if (inseriu) {   
        response.sendRedirect("Departamento.jsp"); 
    } else {
        response.sendRedirect("Departamento.jsp");
    }
%>

