<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <link rel="stylesheet" href="<c:url value='/assets/css/style.css' />">    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="<c:url value='/assets/img/icon.png' />">
        <link href="<c:url value="/assets/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
        <script src="<c:url value="/assets/js/jquery-1.11.3.min.js" />"></script>
        <script src="<c:url value="/assets/js/bootstrap.js" />" type="text/javascript"></script>
        <title>SunsetFilmes</title>
    </head>
    <body>
        <c:if test="${not empty login}">
            <center><div class="alert alert-danger alert-dismissible" role="alert">

                    <strong>Acesso Negado!</strong> Email e senha não correspondentes.

                </div></center>

        </c:if>  

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">  
                <a class="navbar-brand" href="#">Sunset Filmes</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Inicial</a></li>
                    <li><a href="<c:url value="/home/destaque"/>">Destaque</a></li>
                    <li><a href="" data-toggle="modal" data-target="#c" style="margin-right:450px;">Contato</a></li>
                    <ul class="nav navbar-nav navbar-right" width="100%" style="float: right;">

                        <ul style="margin-top:7px;">
                            <form class="form-inline" action="<c:url value="/home/logar"/>" method="POST">
                                <div class="form-group">
                                    <label class="sr-only" for="exampleInputEmail3">Código de Acesso</label>
                                    <input type="text" class="form-control" name="login.idLogin"  placeholder="Código">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="exampleInputPassword3">Password</label>
                                    <input type="password" class="form-control" name="login.senha"  placeholder="Senha">
                                </div>
                                <button type="submit" class="btn btn-default">Acessar</button>
                            </form> 
                        </ul>
                        </li>
                    </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>   
        <div id="c" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> CONTATOS </h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/logo.png"/>" alt="...">	</p>
                        <table>
                            <tr>
                                <td><img style="margin-right: 60px;" class="img-thumbnail" src="<c:url value="/assets/img/carlos.bmp"/>" alt="..."></td>

                                <td><img class="img-thumbnail" src="<c:url value="/assets/img/luan.bmp"/>" alt="..."></td>
                            </tr>
                            <tr>
                                <td><p style="margin-right: 60px;">Nome: Carlos Magno</p></td>
                                <td><p>Nome: Luan Limaverde</p></td>
                            </tr>
                            <tr>
                                <td><p style="margin-right: 60px;">Função: Gerente de Projeto</p></td>
                                <td><p>Função: Desenvolvedor</p></td>
                            </tr>
                            <tr>
                                <td><p style="margin-right: 60px;">Formação: Tecnólogo em A.D.S</p></td>
                                <td><p>Formação: Tecnólogo em A.D.S</p></td>
                            </tr>
                            <tr>
                                <td><p style="margin-right: 60px;">Email: cmagno@gmail.com</p></td>
                                <td><p>Email: Luan.limaverde.a@gmail.com</p></td>
                            </tr>
                        </table>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
</body>
</html>