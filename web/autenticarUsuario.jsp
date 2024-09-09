<%-- 
    Document   : autenticarUsuario
    Created on : 9 de set. de 2024, 08:32:37
    Author     : nicolas_lange
--%>

<%@page import="ControleFuncionario.Usuario"%>
<%
    
    String vEmail = request.getParameter("email");
    String vSenha = request.getParameter("senha");

    Usuario usu = new Usuario();
    
    usu.setEmail(vEmail);
    usu.setSenha(vSenha);
    
    usu = usu.autenticarUsuario();
    if(usu != null) {
        response.sendRedirect("menu.html");
    } else {
        response.sendRedirect("usuarioNaoCadastrado.html");
    }
    
%>
