<%-- 
    Document   : cadastro
    Created on : 24/11/2015, 20:58:09
    Author     : Luuher
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <form name="filmeCad" action="<c:url value='/filme/salvar' />"  method="POST">
            <table border="0">
                <thead>
                    <tr>
                <h1> <th colspan="2" align="center"> CADASTRO </th> </h1> 
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nome do Filme:</td>
                        <td><input type="text" name="filme.nomeFilme" value="" /></td>
                    </tr>
                    <tr>
                        <td>Genero:</td>
                        <td><input type="text" name="filme.idGenero" value="" /></td>
                    </tr>
                    <tr>
                        <td>Estoque:</td>
                        <td><input type="text" name="filme.estoque" value="" /></td>
                    </tr>
                    <tr>
                        <td>Classe:</td>
                        <td><input type="text" name="filme.idClasse" value="" /></td>
                    </tr>
                    <tr>
                        <td>Descrição:</td>
                        <td><input type="text" name="filme.descricao" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align='center'><input type="submit" value="SALVAR" /></td>
                        
                    </tr>
                </tbody>
            </table>

        </form>         
    </center>
    </body>
</html>
