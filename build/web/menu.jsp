<!DOCTYPE html>
<html lang="en" >
    <head>
        <!--TITULO DA PÁGINA-->
        <meta charset="UTF-8">
        <title>Controle de Funcionário</title>
        <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'>
        <link rel="stylesheet" href="style/style.css">
    </head>
    <body>
        <header>
            <!--VERIFICA SE USUÁRIO ESTÁ LOGADO-->
            <%
                String email = (String) session.getAttribute("usuario");
                if (email == null) {
                    response.sendRedirect("usuarioNaoLogado.html");
                }
            %>
            <!--MENU ESTILIZADO PARA CONTROLE DE FUNCIONÁRIOS-->
            <nav class="navbar navbar-expand navbar-dark bg-primary">
                <div class="container-fluid">
                    <a href="#menu-toggle" id="menu-toggle" class="navbar-brand"><span class="navbar-toggler-icon"></span></a>   
                    <div class="sidebar-brand"> <a href="menu.jsp"> Controle de Funcionário </a> </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarsExample02">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active"> <a class="nav-link" href="menu.jsp">Home <span class="sr-only">(current)</span></a> </li>
                        </ul>
                        <form class="form-inline my-2 my-md-0"> </form>
                    </div>
                </div>
            </nav>
        </header>
        <!--MENU LATERAL PARA NAVEGAR ENTRE AS PRINCIPAIS FUNCIONALIDADES-->
        <div id="wrapper" class="toggled">
            <div id="sidebar-wrapper">
                <ul class="sidebar-nav">
                    <li> <a href="Departamento.jsp">Departamento</a> </li>
                    <li> <a href="Funcionario.jsp">Funcionario</a> </li>
                    <li> <a href="folhaPagto.jsp">Folha Pagamento</a> </li>            
                </ul>
            </div>
            <!--TEXTO EXPLICATIVO BÁSICO DO SISTEMA-->
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <h1>Controle de Funcionário</h1>
                    <p>Sistema de Controle de Funcionário para poder inserir,  alterar, visualizar e excluir funcionários com seu <br> devido departamento e sua folha de pagamento. </p>            
                </div>
            </div> 
        </div> 
        <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <script src='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js'></script>
        <script  src="scripts/script.js"></script>
    </body>
</html>
