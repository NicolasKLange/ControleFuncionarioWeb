<%-- 
    Document   : excluirFunc
    Created on : 11 de set. de 2024, 09:25:51
    Author     : nicolas_lange
--%>

<%@page import="ControleFuncionario.Funcionario"%>
<%
    int vIdFunc = Integer.parseInt(request.getParameter("idFunc"));

    Funcionario fun = new Funcionario();
    fun.setIdFunc(vIdFunc);

    boolean excluiu = fun.excluirFuncionario();
    
    if (excluiu) {
        response.sendRedirect("Funcionario.jsp"); 
    } else {
        response.sendRedirect("Funcionario.jsp");
    }
%>
