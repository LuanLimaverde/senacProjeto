<%-- 
    Document   : gerenciamentoLocacao
    Created on : 08/12/2015, 08:43:38
    Author     : Luuher
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="<c:url value='/assets/css/style.css' />">    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="<c:url value='/assets/img/icon.png' />">
        <link href="<c:url value="/assets/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
        <script src="<c:url value="/assets/js/jquery-1.11.3.min.js" />"></script>
        <script src="<c:url value="/assets/js/bootstrap.js" />" type="text/javascript"></script>
        <title>Gerenciador de Usuarios</title>


    </head>
    <body >

        <nav class="navbar navbar-default" >
            <div class="container-fluid">
                <div class="navbar-header">  
                    <a class="navbar-brand" href="#" style="margin-right: 250px;">Sunset Filmes</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li ><a href="<c:url value="/usuario/cadastro"/>">Gerenciar Usuários</a></li>
                        <li><a href="<c:url value="/filme/cadastro"/>">Gerenciar Filmes</a></li>
                        <li><a href="<c:url value="/cliente/cadastro"/>">Gerenciar Clientes</a></li>
                        <li class="active"><a href="#" style="margin-right:250px; ">Locartória</a></li>
                        <li><a href="<c:url value="/"/>">Retornar</a></li>

                </div>
            </div>                    
        </nav>
        <table align="center" style="margin-top: 250px">
            <tr>

                <td style=""><a class="btn btn-primary" href="#" data-toggle="modal" data-target="#alugar">
                        <center> <h4>Alugar </h4> </center>
                    </a></td>
                <td width="80px"></td>
                <td><a class="btn btn-primary" href="#" data-toggle="modal" data-target="#01">
                        <center> <h4>Devolver </h4> </center>
                    </a></td>    
            </tr>
        </table>       
        <div id="alugar" class="modal  fade" role="dialog" tabindex="-1">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" align="center"> Locação </h4>
                    </div>
                    <div class="modal-body" align="center">
                        <form action="<c:url value='/locacao/salvar' />"  method="POST">
                            <table>
                                <tr>
                                    <td> Data de Locação: </td><td width="20px;"></td> <td> ${data} </td>
                                <input type="hidden" name="locar.date" value=${data} />
                                </tr>
                                <tr>
                                    <td>Cliente: </td>
                                    <td>
                                        <select name="locar.idCLiente">
                                            <option >Selecionar</option>
                                            <c:forEach var="clientes" items="${clientes}">
                                                <option value="${clientes.idCliente}"> ${clientes.nomeCliente} </option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                </tr>
                                <tr >
                                    <td>Filme: </td>
                                    <td>
                                        <select name="locar.idFilme">
                                            <option >Selecionar</option>
                                            <c:forEach var="filme" items="${filmes}">
                                                <option value=${filme.idFilme}> ${filme.nomeFilme} </option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Devolução:</td><td><input type="text" name="locar.devolucao"  placeholder="dd/mm/aaaa" /></td>
                                </tr>
                                <input type="hidden" name="locar.devolvido" value=false/>
                                <tr>
                                    <td width="200px"></td>
                                    <td><button type="button" class="btn btn-default" data-dismiss="modal">Close</button></td>
                                    <td><input class="btn btn-primary" type="submit" value="Salvar" /></td>
                                
                                </tr>
                            </table>
                        </form>


                    </div>

                </div>
            </div>


    </body>
</html>
