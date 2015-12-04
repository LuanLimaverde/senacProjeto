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
        <script src="<c:url value="/assets/js/bootstrap.js" />"" type="text/javascript"></script>
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

        <%-- Listar os Clientes Cadastrasdos --%>

        <div id="lista" >
            <center><h1>Lista de Clientes</h1></center>
            <hr>
            <table border='0px' width='850px' style="margin-left: 20px;" text-align='center'>
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

                <c:forEach var="cliente" items="${cliente}">

                    <tr>
                        <td>${cliente.nomeCliente}</td>
                        <td>${cliente.enderecoCliente}</td>
                        <td>${cliente.cidade}</td>
                        <td>${cliente.cpfCliente}</td>
                        <td>${cliente.telefoneCliente}</td>
                        <td>${cliente.statusCliente}</td>
                        <td><a href="<c:url value="/cliente/editar" />/${cliente.idCliente}"><img src="<c:url value="/assets/img/edit.png"/>"></a></td>
                        <td><a href="javascript:func()" onclick="deletar(${cliente.idCliente})"> <img src="<c:url value='/assets/img/delete.png'/>"</a></td>    

                    </tr>
                </c:forEach>
            </table>    
        </div>    

        <%-- Cadastrar os Clientes --%>

        <div id="cad" align="center">    
            <form name="ClienteCad" action="<c:url value='/cliente/salvar'/>" method="POST">
                <table border="0">
                    <thead>
                        <tr>                        
                            <th>Cadastro de Clientes</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%-- <input type="hidden" name="idCliente" value="<c:if test="${not empty cliente.idCliente}">${cliente.idCliente}</c:if>"/> --%>
                    <input type="hidden" name="cliente.idCliente" value=""/>
                    <tr>
                        <td>Nome</td>
                        <%-- <td><input type="text" name="nomeCliente"  value="<c:if test="${not empty cliente.nomeCliente}">${cliente.nomeCliente}</c:if>"</td> --%>
                        <td><input type="text" name="cliente.nomeCliente"  value=""</td>
                    </tr>
                    <tr>
                        <td>Endereco</td>
                        <%-- <td><input type="text" name="enderecoCliente"  value="<c:if test="${not empty cliente.enderecoCliente}">${cliente.enderecoCliente}</c:if>"</td> --%>
                        <td><input type="text" name="cliente.enderecoCliente"  value=""</td>
                    </tr>
                    <tr>
                        <td>Cidade</td>
                        <%-- <td><input type="text" name="cidade"  value="<c:if test="${not empty cliente.cidade}">${cliente.cidade}</c:if>"</td> --%>
                        <td><input type="text" name="cliente.cidade"  value=""</td>
                    </tr>
                    <tr>
                        <td>CPF</td>
                        <%-- <td><input type="text" name="cpfCliente"  value="<c:if test="${not empty cliente.cpfCliente}">${cliente.cpfCliente}</c:if>"</td> --%>
                        <td><input type="text" name="cliente.cpfCliente"  value=""</td>
                    </tr>
                    <tr>
                        <td>Telefone</td>
                        <%-- <td><input type="text" name="telefoneCliente"  value="<c:if test="${not empty cliente.telefoneCliente}">${cliente.telefoneCliente}</c:if>"</td> --%>
                        <td><input type="text" name="cliente.telefoneCliente"  value=""</td>
                    </tr>
                    <tr>
                        <td>Status do Cliente</td>
                        <%-- <td><input type="text" name="statusCliente"  value="<c:if test="${not empty cliente.statusCliente}">${cliente.statusCliente}</c:if>"</td> --%>
                        <td><input type="text" name="cliente.statusCliente"  value=""</td>
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
