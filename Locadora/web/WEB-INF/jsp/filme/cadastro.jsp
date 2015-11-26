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
        <link rel="stylesheet" href="<c:url value='/assets/estilo/style.css' />">
        <title>JSP Page</title>
        <script>
             function deletar(id){
                 var confirmacao = confirm("Deseja excluir o filme?");
                 if(confirmacao){
                     location.href = "<c:url value='/filme/deletar' />/" + id;
                 }
             }
         </script>
    </head>
    <body>
        <div name="cabeçote" style="width:100%; height: 150px ;border: 1px solid #000;"></div>    
    <div style="width:900px; height: 450px ; margin-top: 30px; float:left;">
        <center><h1>Lista de Filmes</h1></center>
        <hr>
        <table border='0px' width='100%' text-align='center'>
            <tr>
                <td>NOME</td>
                <td>GÊNERO</td>
                <td>ESTOQUE</td>
                <td>CLASSE</td>
                <td>DESCRIÇÃO</td>
                <td>EDITAR</td>
                <td>EXCLUIR</td>
            </tr>
        <c:forEach var="filmes" items="${filmes}">
            <tr>
                <td>${filmes.nomeFilme}</td>
                <td>${filmes.genero}</td>
                <td>${filmes.estoque}</td>
                <td>${filmes.classe}</td>
                <td>${filmes.descricao}</td>
                <td><a href="<c:url value="/filme/editar" />/${filmes.idFilme}"><img src="<c:url value="/assets/img/edit.png"/>"></a></td>
                <td><a href="javascript:func()" onclick="deletar(${filmes.idFilme})"> <img src="<c:url value='/assets/img/delete.png'/>"</a></td>    
                                
            </tr>
        </c:forEach>
         </table>    
    </div>    
        <div align="center" style="width:400px; margin-top: 100px; margin-left: 20px; height: 600px ;float:left; ">    
        <form name="filmeCad" action="<c:url value='/filme/salvar' />"  method="POST">
            
            <table border="0">
                <thead>
                    <tr>
                <h1> <th colspan="2" align="center"> CADASTRAR </th> </h1> 
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <input type="hidden" name="movie.idFilme" value="<c:if test="${not empty filme.idFilme}">${filme.idFilme}</c:if>" />
                        <td>Nome do Filme:</td>
                        <td><input type="text" name="movie.nomeFilme" value="<c:if test="${not empty filme.nomeFilme}">${filme.nomeFilme}</c:if>" /></td>
                    </tr>
                    <tr>
                        <td>Genero:</td>
                        <td><select name="movie.genero">
                                <option>Selecione</option>
                                <c:forEach var="genero" items="${genero}">
                                    <option value=${genero.nomeGenero} > ${genero.nomeGenero} </option>
                                </c:forEach>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Estoque:</td>
                        <td><input type="text" name="movie.estoque" value="<c:if test="${not empty filme.estoque}">${filme.estoque}</c:if>"/></td>
                    </tr>
                    <tr>
                        <td>Classe:</td>
                        <td><select name="movie.classe">
                                <option >Selecione</option>
                               <c:forEach var="classe" items="${classe}">
                                    <option value=${classe.nomeClasse} > ${classe.nomeClasse} </option>
                                </c:forEach>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Descrição:</td>
                        <td><input type="text" name="movie.descricao" value="<c:if test="${not empty filme.descricao}">${filme.descricao}</c:if>"/></td>
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
