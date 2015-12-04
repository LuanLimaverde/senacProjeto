<%-- 
    Document   : indexGerencial
    Created on : 02/12/2015, 11:34:53
    Author     : Luuher
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gerenciador</title>
        <link rel="stylesheet" href="<c:url value='/assets/estilo/style.css' />">
        <link rel="shortcut icon" href="<c:url value='/assets/img/sun.png' />">
        <link href="<c:url value="/assets/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
        <script src="<c:url value="/assets/js/bootstrap.js" />" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/jquery-1.11.3.min.js" />"></script>
    </head>
    <body>
        <nav class="navbar navbar-default" >
            <div class="container-fluid">
                <div class="navbar-header">  
                    <a class="navbar-brand" href="#" style="margin-right: 320px;">Sunset Filmes</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="<c:url value="/filme/cadastro"/>">Gerenciar Filmes</a></li>
                        <li><a href="<c:url value="/cliente/cadastro"/>">Gerenciar Clientes</a></li>
                        <li><a href="#" style="margin-right:380px; ">Locartória</a></li>
                        <li><a href="<c:url value="/"/>">Retornar</a></li>

                </div>
            </div>                    
        </nav>
        
    </body>
</html>
