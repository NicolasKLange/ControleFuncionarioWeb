<%-- 
    Document   : alterarDepto
    Created on : 11 de set. de 2024, 08:30:01
    Author     : nicolas_lange
--%>

<%@page import="ControleFuncionario.Departamento"%>
<%
    int vIdDepto = Integer.parseInt(request.getParameter("idDepto"));
    String vDescDepto = request.getParameter("descDepto");

    Departamento dep = new Departamento();
    dep.setDescDepto(vDescDepto);
    dep.setIdDepto(vIdDepto);

    boolean alterou = dep.alterarDepartamento(); 

    if (alterou) {   
        response.sendRedirect("menu.jsp"); 
    } else {
        response.sendRedirect("Departamento.jsp");
    }
%>
