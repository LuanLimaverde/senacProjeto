<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <link rel="stylesheet" href="<c:url value='/assets/css/style.css' />">    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="<c:url value='/assets/img/sun.png' />">
        <link href="<c:url value="/assets/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
        <script src="<c:url value="/assets/js/jquery-1.11.3.min.js" />"></script>
        <script src="<c:url value="/assets/js/bootstrap.js" />" type="text/javascript"></script>

        <title>SunsetFilmes</title>
    </head>
    <body style="background-image: url(<c:url value='/assets/img/civilwar_1.jpg'/>); background-attachment:fixed;background-size:cover; background-repeat:no-repeat">

        <c:if test="${not empty login}">
            <center><div class="alert alert-danger alert-dismissible" role="alert">

                    <strong>Acesso Negado!</strong> Email e senha n�o correspondentes.

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
    <div style="height:560px; ">

    </div>
    <div>
        <div class="row">
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#01">
                    <center> <h4>#01 C.Am�rica: O Primeiro Vingador </h4> </center>
                    <img src="<c:url value="/assets/img/capitao.jpg"/>" alt="Os Vingadores">
                </a>
            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#02">
                    <center> <h4>#02 O Homem de Ferro </h4> </center>
                    <img src="<c:url value="/assets/img/homemferro.jpg"/>" alt="...">
                </a>
            </div>    
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#03">
                    <center> <h4>#03 O Incrivel Hulk </h4> </center>
                    <img src="<c:url value="/assets/img/incrivel.jpg"/>" alt="...">
                </a>
            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#04">
                    <center> <h4>#04 O Homem de Ferro 2 </h4> </center>
                    <img src="<c:url value="/assets/img/homemferro2.jpg"/>" alt="...">
                </a>
            </div>
        </div>
    </div>
    <div>
        <div class="row">
            <div class="col-xs-6 col-md-3">                
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#05">
                    <center> <h4>#05 Thor </h4> </center>
                    <img src="<c:url value="/assets/img/thor.jpg"/>" alt="Os Vingadores">
                </a>

            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#06">
                    <center> <h4>#06 Os Vingadores </h4> </center>
                    <img src="<c:url value="/assets/img/vingadores.jpg"/>" alt="...">
                </a>
            </div>    
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#07">
                    <center> <h4>#07 O Homem de Ferro 3 </h4> </center>
                    <img src="<c:url value="/assets/img/homemferro3.jpg"/>" alt="...">
                </a>
            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#08">
                    <center> <h4>#08 Thor : O Mundo Sombrio </h4> </center>
                    <img src="<c:url value="/assets/img/thor2.jpg"/>" alt="...">
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6 col-md-3">                
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#09">
                    <center> <h4>#09 C.Am�rica: Soldado Invernal </h4> </center>
                    <img src="<c:url value="/assets/img/capitao1.jpg"/>" alt="Os Vingadores">
                </a>

            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#10">
                    <center> <h4>#10 Os Guardi�es da Gal�xia </h4> </center>
                    <img src="<c:url value="/assets/img/gdg.jpg"/>" alt="...">
                </a>
            </div>    
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#11">
                    <center> <h4>#11 Os Vingadores: Era de Ultron </h4> </center>
                    <img src="<c:url value="/assets/img/vingadores2.jpg"/>" alt="...">
                </a>
            </div>
            <div class="col-xs-6 col-md-3">
                <a class="thumbnail" data-toggle="modal" data-target="#12">
                    <center> <h4>#12 O Homem Formiga </h4> </center>
                    <img src="<c:url value="/assets/img/formiga.jpg"/>" alt="...">
                </a>
            </div>
        </div>        
    </div>


    <div name="modais">
        <div id="01" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #01 C.Am�rica: O Primeiro Vingador </h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/capitaoamerica1.jpg"/>" alt="...">	</p>
                        <p> Lan�amento:	29 de julho de 2011 (2h3min) </p>
                            <p>Dirigido por:	Joe Johnston</p>
                            <p>Com	Chris Evans, Hayley Atwell, Sebastian Stan </p>
                            <p>G�nero:	A��o , Aventura , Fic��o cient�fica</p>
                            <p> Nacionalidade:	EUA </p>
                            <p> Classe: Bronze </p> 
                            <p><b>Sinopse:</b></p>
                            <p>2� Guerra Mundial. Steve Rogers (Chris Evans) � um jovem que aceitou ser volunt�rio em uma s�rie de experi�ncias que visam criar o supersoldado americano. Os militares conseguem transform�-lo em uma arma humana, mas logo percebem que o supersoldado � valioso demais para p�r em risco na luta contra os nazistas. Desta forma, Rogers � usado como uma celebridade do ex�rcito, marcando presen�a em paradas realizadas pela Europa no intuito de levantar a estima dos combatentes. Para tanto passa a usar uma vestimenta com as cores da bandeira dos Estados Unidos, azul, branca e vermelha. S� que um plano nazista faz com que Rogers entre em a��o e assuma a alcunha de Capit�o Am�rica, usando seus dons para combat�-los em plenas trincheiras da guerra.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <div id="02" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #02 Homem de Ferro </h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/homemferro1.jpg"/>" alt="...">	</p>
                        <p> Lan�amento:30 de abril de 2008 (2h5min)  </p>
                            <p>Dirigido por:	Jon Favreau</p>
                            <p>Com	Robert Downey Jr., Terrence Howard, Gwyneth Paltrow </p>
                            <p>G�nero:	A��o , Fic��o cient�fica</p>
                            <p> Nacionalidade:	EUA </p>
                            <p> Classe: Bronze </p> 
                            <p><b>Sinopse:</b></p>
                            <p>Tony Stark (Robert Downey Jr.) � um industrial bilion�rio, que tamb�m � um brilhante inventor. Ao ser sequestrado ele � obrigado por terroristas a construir uma arma devastadora mas, ao inv�s disto, constr�i uma armadura de alta tecnologia que permite que fuja de seu cativeiro. A partir de ent�o ele passa a us�-la para combater o crime, sob o alter-ego do Homem de Ferro.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <div id="03" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center"> #03 O Incrivel Hulk</h4>
                    </div>
                    <div class="modal-body" align="center">
                        <p><img src="<c:url value="/assets/img/capas/incrivel.jpg"/>" alt="...">	</p>
                        <p> Lan�amento:13 de junho de 2008 (1h52min)  </p>
                            <p>Dirigido por:	Louis Leterrier</p>
                            <p>Com	Edward Norton, Liv Tyler, Tim Roth</p>
                            <p>G�nero:	A��o , Fantasia</p>
                            <p> Nacionalidade:	EUA </p>
                            <p> Classe: Bronze </p> 
                            <p><b>Sinopse:</b></p>
                            <p>Vivendo escondido e longe de Betty Ross (Liv Tyler), a mulher que ama, o cientista Bruce Banner (Edward Norton) busca um meio de retirar a radia��o gama que est� em seu sangue. Ao mesmo tempo ele precisa fugir da persegui��o do general Ross (William Hurt), seu grande inimigo, e da m�quina militar que tenta captur�-lo, na inten��o de explorar o poder que faz com que Banner se transforme no Hulk.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>                
                        
                        
    </div>                  

</body>
</html>