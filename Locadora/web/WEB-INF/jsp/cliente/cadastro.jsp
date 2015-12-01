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
        <title>Cadastro de Clientes</title>
    </head>
    <body>
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

    </body>
</html>
