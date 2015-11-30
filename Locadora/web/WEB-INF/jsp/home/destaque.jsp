<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <link rel="stylesheet" href="<c:url value='/assets/css/style.css' />">    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="<c:url value='/assets/img/sun.png' />">
        <link href="<c:url value="/assets/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
        <script src="<c:url value="/assets/js/bootstrap.js" />"" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/jquery-1.11.3.min.js" />"></script>
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
                    <li><a href="<c:url value="/"/>">Inicial</a></li>
                    <li class="active"><a href="#">Destaque</a></li>
                    <li><a href="#">Contato</a></li>
                    <li><a href="#" style="margin-right:350px;">Capas</a></li>
                    
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div>
        <div class="row">
            <div class="col-xs-6 col-md-3">
                <center> <h5> Os Vingadores </h5> </center>
                <a href="#" class="thumbnail">
                    <img src="<c:url value="/assets/img/vingadores.jpg"/>" alt="Os Vingadores">
                </a>
                
            </div>
            <div class="col-xs-6 col-md-3">
                <center> <h5> Os Vingadores </h5> </center>
                <a href="#" class="thumbnail">
                    <img src="<c:url value="/assets/img/vingadores.jpg"/>" alt="...">
                </a>
            </div>    
            <div class="col-xs-6 col-md-3">
                <center> <h5> Os Vingadores </h5> </center>
                <a href="#" class="thumbnail">
                    <img src="<c:url value="/assets/img/vingadores.jpg"/>" alt="...">
                </a>
            </div>
            <div class="col-xs-6 col-md-3">
                <center> <h5> Os Vingadores </h5> </center>
                <a href="#" class="thumbnail">
                    <img src="<c:url value="/assets/img/vingadores.jpg"/>" alt="...">
                </a>
            </div>
        </div>
    </div>
    <div>
        <div class="row">
            <div class="col-xs-6 col-md-3">
                <center> <h5> Os Vingadores </h5> </center>
                <a href="#" class="thumbnail">
                    <img src="<c:url value="/assets/img/vingadores.jpg"/>" alt="Os Vingadores">
                </a>
                
            </div>
            <div class="col-xs-6 col-md-3">
                <center> <h5> Os Vingadores </h5> </center>
                <a href="#" class="thumbnail">
                    <img src="<c:url value="/assets/img/vingadores.jpg"/>" alt="...">
                </a>
            </div>    
            <div class="col-xs-6 col-md-3">
                <center> <h5> Os Vingadores </h5> </center>
                <a href="#" class="thumbnail">
                    <img src="<c:url value="/assets/img/vingadores.jpg"/>" alt="...">
                </a>
            </div>
            <div class="col-xs-6 col-md-3">
                <center> <h5> Os Vingadores </h5> </center>
                <a href="#" class="thumbnail">
                    <img src="<c:url value="/assets/img/vingadores.jpg"/>" alt="...">
                </a>
            </div>
        </div>
    </div>
</body>
</html>