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
                        <td><input type="text" name="filme.nomeFilme"  /></td>
                    </tr>
                    <tr>
                        <td>Genero:</td>
                        <td><select name="filme.idGenero">
                                <option>Selecione</option>
                                <c:forEach var="genero" items="${genero}">
                                    <option value=${genero.idGenero} > ${genero.nomeGenero} </option>
                                </c:forEach>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Estoque:</td>
                        <td><input type="text" name="filme.estoque" /></td>
                    </tr>
                    <tr>
                        <td>Classe:</td>
                        <td><select name="filme.idClasse">
                                <option >Selecione</option>
                               <c:forEach var="classe" items="${classe}">
                                    <option value=${classe.idClasse} > ${classe.nomeClasse} </option>
                                </c:forEach>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Descrição:</td>
                        <td><input type="text" name="filme.descricao"/></td>
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
