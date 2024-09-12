<%-- 
    Document   : alterarDepto
    Created on : 11 de set. de 2024, 08:30:01
    Author     : nicolas_lange
--%>

<%@page import="ControleFuncionario.Departamento"%>

//FUNÇÃO PARA ALTERAR DEPARTAMENTO
<%
    int vIdDepto = Integer.parseInt(request.getParameter("idDepto"));
    String vDescDepto = request.getParameter("descDepto");

    Departamento dep = new Departamento();
    dep.setDescDepto(vDescDepto);
    dep.setIdDepto(vIdDepto);

    boolean alterou = dep.alterarDepartamento(); 
    
    //VERIFICA SE DEU CERTO EM ALTERAR FUNCIONÁRIO
    if (alterou) {   
        response.sendRedirect("Departamento.jsp"); 
    } else {
        response.sendRedirect("Departamento.jsp");
    }
%>
