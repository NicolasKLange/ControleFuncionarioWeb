<%-- 
    Document   : inserirFunc
    Created on : 11 de set. de 2024, 09:20:31
    Author     : nicolas_lange
--%>

<%@page import="ControleFuncionario.Funcionario"%>

<!--FUNÇÃO PARA INCLUIR FUNCIONARIO-->
<%
    String vNomeFunc = request.getParameter("nomeFunc");
    int vIdDepto = Integer.parseInt(request.getParameter("idDepto"));
    double vSalHora = Double.parseDouble(request.getParameter("salHora"));

    Funcionario fun = new Funcionario();

    fun.setNomeFunc(vNomeFunc);
    fun.setIdDepto(vIdDepto);
    fun.setSalHora(vSalHora);

    boolean inseriu = fun.incluirFunc();

    //VERIFICA SE DEU CERTO EM INCLUIR FUNCIONÁRIO
    if (inseriu) {
        response.sendRedirect("Funcionario.jsp");
    } else {
        response.sendRedirect("Funcionario.jsp");
    }
%>
