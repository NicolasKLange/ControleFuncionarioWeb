<%-- 
    Document   : excluirFunc
    Created on : 11 de set. de 2024, 09:25:51
    Author     : nicolas_lange
--%>

<%@page import="ControleFuncionario.Funcionario"%>

//FUNÇÃO PARA EXCLUIR FUNCIONARIO
<%
    int vIdFunc = Integer.parseInt(request.getParameter("idFunc"));

    Funcionario fun = new Funcionario();
    fun.setIdFunc(vIdFunc);

    boolean excluiu = fun.excluirFuncionario();
    
    //VERIFICA SE DEU CERTO EM EXCLUIR FUNCIONÁRIO
    if (excluiu) {
        response.sendRedirect("Funcionario.jsp"); 
    } else {
        response.sendRedirect("Funcionario.jsp");
    }
%>
