<%-- 
    Document   : cadastro
    Created on : 04/12/2015, 17:59:01
    Author     : Luuher
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:url value='/assets/estilo/style.css' />">
         <link rel="shortcut icon" href="<c:url value='/assets/img/icon.png' />">
        <link href="<c:url value="/assets/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
        <script src="<c:url value="/assets/js/bootstrap.js" />" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/jquery-1.11.3.min.js" />"></script>
        <title>Gerenciador de Usuarios</title>
        <script>
            function deletar(id) {
                var confirmacao = confirm("Deseja excluir o Usuário?");
                if (confirmacao) {
                    location.href = "<c:url value='/filme/deletar' />/" + id;
                }
            }
        </script>
    </head>
    <body >
    
 <nav class="navbar navbar-default" >
            <div class="container-fluid">
                <div class="navbar-header">  
                    <a class="navbar-brand" href="#" style="margin-right: 250px;">Sunset Filmes</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="<c:url value="/usuario/cadastro"/>">Gerenciar Usuários</a></li>
                        <li><a href="<c:url value="/filme/cadastro"/>">Gerenciar Filmes</a></li>
                        <li><a href="<c:url value="/cliente/cadastro"/>">Gerenciar Clientes</a></li>
                        <li><a href="<c:url value="/locacao/gerenciamentoLocacao"/>" style="margin-right:250px; ">Locartória</a></li>
                        <li><a href="<c:url value="/"/>">Retornar</a></li>

                </div>
            </div>                    
        </nav>
    
        <div id="lista" class="panel-default panel panel-primary">

            <div class="panel-heading"><center><h1>Lista de Usuários</h1></center></div>   

            <table class="table-striped table table-hover" border='0px' width='100%' style="" text-align='center'>
                <tr>
                    <td><b>Codigo</b></td>
                    <td><b>Nome</b></td>
                    <td><b>EDITAR</b></td>
                    <td><b>EXCLUIR</b></td>

                </tr>

                <c:forEach var="usuarios" items="${usuarios}">

                    <tr>
                        <td>${usuarios.idLogin}</td>
                        <td>${usuarios.nome}</td>
                        <td><a href="<c:url value="/usuario/editar" />/${usuarios.idLogin}"><img src="<c:url value="/assets/img/edit.png"/>"></a></td>
                        <td><a href="javascript:func()" onclick="deletar(${usuarios.idLogin})"> <img src="<c:url value='/assets/img/delete.png'/>"</a></td>    

                    </tr>
                </c:forEach>
            </table>    

        </div>  
        <div id="cad" align="center" class="panel panel-primary panel-default "> 
            <div class="panel-heading"><center><h1>Cadastrar</h1></center></div>  
            <form name="usuCad" action="<c:url value='/usuario/salvar' />"  method="POST">

                <table border="0" style="margin-top: 80px;">
                    <thead>

                    </thead>
                    <tbody>
                        <tr>
                        <td>Codigo:</td>
                        <td><input type="text" name="usu.idLogin" value="<c:if test="${not empty usuario.idLogin}">${usuario.idLogin}</c:if>" /></td>
                        </tr>
                        <tr>
                        <td>Nome:</td>
                        <td><input type="text" name="usu.nome" value="<c:if test="${not empty usuario.nome}">${usuario.nome}</c:if>"/></td>
                        </tr>
                    <tr>
                        <td>Senha:</td>
                        <td><input type="text" name="usu.senha" value="<c:if test="${not empty usuario.senha}">${usuario.senha}</c:if>"/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align='center'><input type="submit" value="SALVAR" /></td>

                    </tr>
                    </tbody>
                </table>

            </form>  
        </div> 
                  
    </body>
</html>
