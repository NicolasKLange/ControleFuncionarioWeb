<%-- 
    Document   : autenticarUsuario
    Created on : 9 de set. de 2024, 08:32:22
    Author     : Professor
--%>

//FUNC�O PARA AUTENTICAR USU�RIO AO SISTEMA 
<%@page import="ControleFuncionario.Usuario"%>
<%
    String vEmail =  request.getParameter("email");
    String vSenha =  request.getParameter("senha");
    
    Usuario usu = new Usuario();
    usu.setEmail(vEmail);
    usu.setSenha(vSenha);
    
    usu = usu.autenticarUsuario();
    
    //VERIFICA SE USU�RIO POSSUI CONTA
    if (usu != null){
        session.setAttribute("usuario", vEmail);
        response.sendRedirect("menu.jsp");
    } else {
        response.sendRedirect("usuarioNaoCadastrado.html");
    }
%>