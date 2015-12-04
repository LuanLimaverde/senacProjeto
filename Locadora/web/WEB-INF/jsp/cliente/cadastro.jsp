<%-- 
    Document   : cadastro
    Created on : 25/11/2015, 15:07:10
    Author     : Luuher
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:url value='/assets/estilo/style.css' />">
        <link rel="shortcut icon" href="<c:url value='/assets/img/sun.png' />">
        <link href="<c:url value="/assets/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
        <script src="<c:url value="/assets/js/bootstrap.js" />" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/jquery-1.11.3.min.js" />"></script>
        <title>Cadastro de Clientes</title>
        <script>
            function deletar(id) {
                var confirmacao = confirm("Deseja excluir o cliente?");
                if (confirmacao) {
                    location.href = "<c:url value='/cliente/deletar' />/" + id;
                }
            }
        </script>
    </head>
    <body>
<nav class="navbar navbar-default" >
            <div class="container-fluid">
                <div class="navbar-header">  
                    <a class="navbar-brand" href="#" style="margin-right: 250px;">Sunset Filmes</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="<c:url value="/usuario/cadastro"/>">Gerenciar Usuários</a></li>
                        <li><a href="<c:url value="/filme/cadastro"/>">Gerenciar Filmes</a></li>
                        <li class="active"><a href="<c:url value="/cliente/cadastro"/>">Gerenciar Clientes</a></li>
                        <li><a href="#" style="margin-right:250px; ">Locartória</a></li>
                        <li><a href="<c:url value="/"/>">Retornar</a></li>

                </div>
            </div>                    
        </nav>
        <%-- Listar os Clientes Cadastrasdos --%>

        <div id="lista" class="panel-default panel panel-primary" >
            <div class="panel-heading"><center><h1>Lista de Clientes</h1></center></div>   
            <table class="table-striped table table-hover" border='0px' width='100%' style="" text-align='center'>
                <tr>
                    <td><b>NOME</b></td>
                    <td><b>ENDEREÇO</b></td>
                    <td><b>CIDADE</b></td>
                    <td><b>CPF</b></td>
                    <td><b>TELEFONE</b></td>
                    <td><b>STATUS DO CLIENTE</b></td>
                    <td><b>EDITAR</b></td>
                    <td><b>EXCLUIR</b></td>                  
                </tr>

                <c:forEach var="clientes" items="${clientes}">

                    <tr>
                        <td>${clientes.nomeCliente}</td>
                        <td>${clientes.enderecoCliente}</td>
                        <td>${clientes.cidade}</td>
                        <td>${clientes.cpfCliente}</td>
                        <td>${clientes.telefoneCliente}</td>
                        <td>${clientes.statusCliente}</td>
                        <td><a href="<c:url value="/cliente/editar" />/${clientes.idCliente}"><img src="<c:url value="/assets/img/edit.png"/>"></a></td>
                        <td><a href="javascript:func()" onclick="deletar(${clientes.idCliente})"> <img src="<c:url value='/assets/img/delete.png'/>"</a></td>    

                    </tr>
                </c:forEach>
            </table>    
        </div>    

        <%-- Cadastrar os Clientes --%>

        <div id="cad" align="center" class="panel panel-primary panel-default ">   
             <div class="panel-heading"><center><h1>Cadastrar</h1></center></div> 
            <form name="ClienteCad" action="<c:url value='/cliente/salvar'/>" method="POST">
                <table border="0"  style="margin-top: 50px;">
                    <thead>
                        
                    </thead>
                    <tbody>
                        
                        <input type="hidden" name="cli.idCliente" value="<c:if test="${not empty cliente.idCliente}">${cliente.idCliente}</c:if>"/> 
                    <tr>
                        <td>Nome</td>
                       <td><input type="text" name="cli.nomeCliente"  value="<c:if test="${not empty cliente.nomeCliente}">${cliente.nomeCliente}</c:if>"</td>
                       
                    </tr>
                    <tr>
                        <td>Endereco</td>
                        <td><input type="text" name="cli.enderecoCliente"  value="<c:if test="${not empty cliente.enderecoCliente}">${cliente.enderecoCliente}</c:if>"</td>
                        
                    </tr>
                    <tr>
                        <td>Cidade</td>
                        <td><input type="text" name="cli.cidade"  value="<c:if test="${not empty cliente.cidade}">${cliente.cidade}</c:if>"</td> 
                        
                    </tr>
                    <tr>
                        <td>CPF</td>
                         <td><input type="text" name="cli.cpfCliente"  value="<c:if test="${not empty cliente.cpfCliente}">${cliente.cpfCliente}</c:if>"</td> 
                        
                    </tr>
                    <tr>
                        <td>Telefone</td>
                        <td><input type="text" name="cli.telefoneCliente"  value="<c:if test="${not empty cliente.telefoneCliente}">${cliente.telefoneCliente}</c:if>"</td> 
                        
                    </tr>
                    <tr>
                        <td>Status do Cliente</td>
                        <td><input type="text" name="cli.statusCliente"  value="<c:if test="${not empty cliente.statusCliente}">${cliente.statusCliente}</c:if>"</td> 
                        
                    </tr>
                    <tr>                        
                        <td colspan="2" align='center'><input type="submit" value="Salvar" /></td>
                    </tr>
                    </tbody>
                </table>

            </form>
        </div>
    </body>
</html>
