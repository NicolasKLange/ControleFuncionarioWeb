<%-- 
    Document   : alterarFunc
    Created on : 11 de set. de 2024, 09:28:49
    Author     : nicolas_lange
--%>

<%@page import="ControleFuncionario.Funcionario"%>

//FUNÇÃO PARA ALTERAR FUNCIONARIO
<%
    int vIdFunc = Integer.parseInt(request.getParameter("idFunc"));
    String vnomeFunc = request.getParameter("nomeFunc");
    int vIdDepto = Integer.parseInt(request.getParameter("idDepto"));
    double vSalHora = Double.parseDouble(request.getParameter("salHora"));
    
    Funcionario fun = new Funcionario();
    
    fun.setIdFunc(vIdFunc);
    fun.setNomeFunc(vnomeFunc);
    fun.setIdDepto(vIdDepto);
    fun.setSalHora(vSalHora);

    boolean alterou = fun.alterarFuncionario(); 
    
    //VERIFICA SE DEU CERTO EM ALTERAR FUNCIONÁRIO
    if (alterou) {   
        response.sendRedirect("Funcionario.jsp"); 
    } else {
        response.sendRedirect("Funcionario.jsp");
    }
%>
